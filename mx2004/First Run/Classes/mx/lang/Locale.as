//****************************************************************************
//Copyright (C) 2003 Macromedia, Inc. All Rights Reserved.
//The following is Sample Code and is subject to all restrictions on
//such code as contained in the End User License Agreement accompanying
//this product.
//****************************************************************************

class mx.lang.Locale {
	private static var flaName:String;
	private static var defaultLang:String;
	private static var xmlLang:String = System.capabilities.language;
	private static var xmlMap:Object = new Object();
	private static var xmlDoc:XML;
	private static var stringMap:Object = new Object();
	private static var delayedInstanceArray:Array = new Array();
	private static var currentXMLMapIndex:Number = -1;
	private static var callback:Function;

	/******************************************
	 * public methods
	 ******************************************/

	static function setFlaName(name:String):Void {
		flaName = name;
	}

	static function setDefaultLang(langCode:String):Void {
		defaultLang = langCode;
	}
	
	static function addXMLPath(langCode:String, path:String):Void {
		if(xmlMap[langCode] == undefined) {
			xmlMap[langCode] = new Array();
		}
		
		xmlMap[langCode].push(path);
	}

	static function checkXMLStatus():Boolean {
		var stat:Boolean = xmlDoc.loaded && xmlDoc.status == 0;
		return stat;
	}

	static function addDelayedInstance(instance:Object, stringID:String) {
		delayedInstanceArray.push({inst : instance, strID : stringID});
		var len:Number = delayedInstanceArray.length;
	}

	static function checkDelayArray():Boolean {
		for(var i:Number = 0; i < delayedInstanceArray.length; i++) {
			if(delayedInstanceArray[i] == undefined) {
				return false;
			}
		}

		return true;
	}

	static function setLoadCallback(loadCallback:Function) {
		callback = loadCallback;
	}
	
	// return the string value associated with the given id
	static function loadString(id:String):String {
		return stringMap[id];
	}

	// call this after all the xml paths have been added
	static function initialize():Void {
		xmlDoc = new XML();
		xmlDoc.ignoreWhite = true;
		xmlDoc.onLoad = function(success:Boolean) {
			onXMLLoad(success); // parse the XML
			callback.call(null, success);
		}
		
		var langCode:String = xmlLang;
		if(xmlMap[xmlLang] == undefined) {
			langCode = defaultLang;
		}

		currentXMLMapIndex = 0;
		xmlDoc.load(xmlMap[langCode][0]);
	}

	/******************************************
	 * private methods
	 ******************************************/
	
	private static function onXMLLoad(success:Boolean) {
		if(success == true) {
			// reset the string map
			delete stringMap;
			stringMap = new Object();
			
			parseStringsXML(xmlDoc);
			assignDelayedInstances();
		}
		else {
			var langCode:String = xmlLang;
			if(xmlMap[xmlLang] == undefined) {
				langCode = defaultLang;
			}

			currentXMLMapIndex++;
			xmlDoc.load(xmlMap[langCode][currentXMLMapIndex]);
		}
	}

	private static function parseStringsXML(doc:XML):Void {
		if(doc.childNodes.length > 0 && doc.childNodes[0].nodeName == "xliff") {
			parseXLiff(doc.childNodes[0]);
		}
	}

	private static function parseXLiff(node:XMLNode):Void {
		if(node.childNodes.length > 0 && node.childNodes[0].nodeName == "file") {
			parseFile(node.childNodes[0]);
		}
	}

	private static function parseFile(node:XMLNode):Void {
		if(node.childNodes.length > 1 && node.childNodes[1].nodeName == "body") {
			parseBody(node.childNodes[1]);
		}
	}

	private static function parseBody(node:XMLNode):Void {
		for(var i:Number = 0; i < node.childNodes.length; i++) {
			if(node.childNodes[i].nodeName == "trans-unit") {
				parseTransUnit(node.childNodes[i]);
			}
		}
	}

	private static function parseTransUnit(node:XMLNode):Void {
		var id:String = node.attributes.resname;
		if(id.length > 0 && node.childNodes.length > 0 &&
				node.childNodes[0].nodeName == "source") {
			var value:String = parseSource(node.childNodes[0]);
			if(value.length > 0) {
				stringMap[id] = value;
			}
		}
	}

	// return the string value of the source node
	private static function parseSource(node:XMLNode):String {
		if(node.childNodes.length > 0) {
			return node.childNodes[0].nodeValue;
		}

		return "";
	}

	private static function assignDelayedInstances():Void {
		for(var i:Number = 0; i < delayedInstanceArray.length; i++) {
			if(delayedInstanceArray[i] != undefined) {
				var instance:Object = delayedInstanceArray[i].inst;
				var stringID:String = delayedInstanceArray[i].strID;
				instance.text = loadString(stringID);
			}
		}

	}
}
