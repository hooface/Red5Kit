//****************************************************************************
// ActionScript Standard Library
// TextFormat object
//****************************************************************************

intrinsic class TextFormat
{
	var align:String;
	var blockIndent:Number;
	var bold:Boolean;
	var bullet:Boolean;
	var color:Number;
	var font:String;
	var indent:Number;
	var italic:Boolean;
	var leading:Number;
	var leftMargin:Number;
	var rightMargin:Number;
	var size:Number;
	var tabStops:Array;
	var target:String;
	var underline:Boolean;
	var url:String;

	function TextFormat(font:String,size:Number,textColor:Number,
                    	bold:Boolean,italic:Boolean,underline:Boolean,
                    	url:String,window:String,align:String,
                    	leftMargin:Number,rightMargin:Number,indent:Number,leading:Number);

	function getTextExtent(text:String):Object;
}


