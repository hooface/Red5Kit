//****************************************************************************
// ActionScript Standard Library
// SharedObject object
//****************************************************************************

dynamic intrinsic class SharedObject
{
	var data:Object;

	static function deleteAll(url:String);
	static function getDiskUsage(url:String);
	static function getLocal(name:String,localPath:String):SharedObject;
	static function getRemote(name:String,remotePath:String,persistence:Object):SharedObject;
	
	function close():Void;
	function connect(myConnection:NetConnection):Boolean;
	function flush(minDiskSpace:Number):Object; // minDiskSpace optional
	function getSize():Number;
	function send(handlerName:String):Void;
	function setFps(updatesPerSecond:Number):Boolean;

	function onStatus(infoObject:Object):Void;
	function onSync(objArray:Array):Void;
}


