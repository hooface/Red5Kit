//****************************************************************************
// ActionScript Standard Library
// Array object
//****************************************************************************

intrinsic dynamic class Array
{
	static var CASEINSENSITIVE:Number;
	static var DESCENDING:Number;
	static var NUMERIC:Number;
	static var RETURNINDEXEDARRAY:Number;
	static var UNIQUESORT:Number;

	var length:Number;

	function Array();
	
	function concat(value:Object):Array;
	function join(delimiter:String):String;
	function pop():Object;
	function push(value):Number; // should be value: Object, but is typeless as workaround for bug #68755
	function reverse():Void;
	function shift():Object;
	function slice(startIndex:Number, endIndex:Number):Array;
	function sort(compare:Object, options: Number):Array; // 'compare' might be omitted so untyped. 'options' is optional.
	function sortOn(key:Object, options: Number):Array; // 'key' is a String, or an Array of String. 'options' is optional.
	function splice(startIndex:Number, deleteCount:Number, value:Object):Array;
	function toString():String;
	function unshift(value:Object):Number;
}


