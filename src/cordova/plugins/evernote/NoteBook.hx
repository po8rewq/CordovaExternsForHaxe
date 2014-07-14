/** 
 * Author: adrien
 * Date: 26/10/13
 *
 * Copyright 2013 - RevoluGame.com
 */

package cordova.plugins.evernote;

@:native("Notebook")
extern class NoteBook
{
    public var guid : String;
    public var name : String;
    public var updateSequenceNum: Int;
    public var defaultNotebook: Bool;
    public var serviceCreated : Int;
    public var serviceUpdated : Int;
    public var publishing : Bool;
    public var published : Bool;
    public var stack : Dynamic; // ?
//    public var sharedNotebookIds
//    public var sharedNotebooks
//    public var businessNotebook
//    public var contact
    public var restrictions : Array<Dynamic>;

public function new():Void;
}
