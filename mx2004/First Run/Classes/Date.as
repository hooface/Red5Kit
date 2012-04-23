//****************************************************************************
// ActionScript Standard Library
// Date object
//****************************************************************************

intrinsic class Date
{
	static function UTC(year:Number,month:Number,date:Number,
                        hour:Number,min:Number,sec:Number,ms:Number):Number;

	function Date(year:Number,month:Number,date:Number,hour:Number,min:Number,sec:Number,ms:Number);

	function getDate():Number;
	function getDay():Number;
	function getFullYear():Number;
	function getHours():Number;
	function getMilliseconds():Number;
	function getMinutes():Number;
	function getMonth():Number;
	function getSeconds():Number;
	function getTime():Number;
	function getTimezoneOffset():Number;
	function getUTCDate():Number;
	function getUTCDay():Number;
	function getUTCFullYear():Number;
	function getUTCHours():Number;
	function getUTCMilliseconds():Number;
	function getUTCMinutes():Number;
	function getUTCMonth():Number;
	function getUTCSeconds():Number;
	function getUTCYear():Number;
	function getYear():Number;

	function setDate(value:Number):Void;
	function setFullYear(value:Number):Void;
	function setHours(value:Number):Void;
	function setMilliseconds(value:Number):Void;
	function setMinutes(value:Number):Void;
	function setMonth(value:Number):Void;
	function setSeconds(value:Number):Void;
	function setTime(value:Number):Void;
	function setUTCDate(value:Number):Void;
	function setUTCFullYear(value:Number):Void;
	function setUTCHours(value:Number):Void;
	function setUTCMilliseconds(value:Number):Void;
	function setUTCMinutes(value:Number):Void;
	function setUTCMonth(value:Number):Void;
	function setUTCSeconds(value:Number):Void;
	function setYear(value:Number):Void;

	function toString():String;
	function valueOf():Number;
}


