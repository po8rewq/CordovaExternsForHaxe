/** 
 * Author: adrien
 * Date: 20/10/13
 *
 * Copyright 2013 - RevoluGame.com
 */

package cordova.plugins.evernote;

@:native("Note")
extern class Note
{
    public var guid : String;
    public var content : String;
    public var title : String;
    public var notebookGuid : String; // GUID du notebook parent

    public var created : Int; // timestamp
    public var updated : Int; // timestamp
    public var deleted : Int; // timestamp
    public var active : Bool;

    public var tagGuids : Array<String>;
    public var resources : Array<Dynamic>; // type Resource TODO
    public var attributes : Dynamic; // ?
    public var tagNames : Array<String>;

    public function new():Void;
}
