//****************************************************************************
// ActionScript Standard Library
// XML Document Object Model
//****************************************************************************

intrinsic class XMLNode
{
	var attributes:Object;
	var childNodes:Array;
	var firstChild:XMLNode;
	var lastChild:XMLNode;
	var nextSibling:XMLNode;
	var nodeName:String;
	var nodeType:Number;
	var nodeValue:String;
	var parentNode:XMLNode;
	var previousSibling:XMLNode;

	function XMLNode(type:Number, value:String);

	function appendChild(newChild:XMLNode):Void;
	function cloneNode(deep:Boolean):XMLNode;
	function hasChildNodes():Boolean;
	function insertBefore(newChild:XMLNode,insertPoint:XMLNode):Void;
	function removeNode():Void;
	function toString():String;

	// Tree Mixins
	function addTreeNode(arg1:Object, arg2:Object):XMLNode;
	function addTreeNodeAt(index:Number, arg1:Object, arg2:Object):XMLNode; //untyped args for "overloading"
	function getTreeNodeAt(index:Number):XMLNode;
	function removeTreeNode():XMLNode;
	function removeTreeNodeAt(index:Number):XMLNode;
	
	// Menu Mixins
	function addMenuItem(arg:Object):XMLNode;
	function addMenuItemAt(index:Number, arg:Object):XMLNode;
	function getMenuItemAt(index:Number):XMLNode;
	function indexOf(node:XMLNode):Number;
	function removeMenuItem():XMLNode;
	function removeMenuItemAt(index:Number):XMLNode;
}

