//****************************************************************************
// ActionScript Standard Library
// XML Document Object Model
//****************************************************************************

intrinsic class XML extends XMLNode
{
	var contentType:String;
	var docTypeDecl:String;
	var ignoreWhite:Boolean;
	var loaded:Boolean;
	var status:Number;
	var xmlDecl:String;
	
	function XML(text:String);
	
	function addRequestHeader(header:Object, headerValue:String):Void; // first param could be String or Array
	function createElement(name:String):XMLNode;
	function createTextNode(value:String):XMLNode;
	function getBytesLoaded():Number;
	function getBytesTotal():Number;
	
	// Central APIs
	function getRequestHeaders():Object;
	function getRequestHeader( key:String ):Object;
	function getResponseHeaders():Object;
	function getResponseHeader( key:String ):Object;
	function getResponseBody():Object;
	
	function load(url:String):Boolean;
	function parseXML(value:String):Void;
	function send(url:String,target:String,method:String):Boolean;
	function sendAndLoad(url:String, resultXML):Void;

	function onLoad(success:Boolean):Void;
	function onData(src:String):Void;
}

