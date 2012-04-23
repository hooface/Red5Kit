//****************************************************************************
// ActionScript Standard Library
// XML Continuous Server Connection
//****************************************************************************

intrinsic class XMLSocket
{
	function XMLSocket();
	
	function close():Boolean;
	function connect(url:String,port:Number):Boolean;
	function send(data:Object):Boolean;
	
	function onClose():Void;
	function onConnect(success:Boolean):Void;
	function onData(src:String):Void;
	function onXML(src:XML):Void;
}


