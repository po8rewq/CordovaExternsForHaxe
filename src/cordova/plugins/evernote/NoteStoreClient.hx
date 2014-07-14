/** 
 * Author: adrien
 * Date: 20/10/13
 *
 * Copyright 2013 - RevoluGame.com
 */

package cordova.plugins.evernote;

@:native("NoteStoreClient")
extern class NoteStoreClient
{
    public function new(noteStoreProtocol: Dynamic):Void;
    public function listNotebooks(authTokenEvernote: String, ?successCallback: Array<NoteBook>->Void, ?errorCallback: Dynamic->Void):Dynamic;
    public function createNote(authTokenEvernote: String, note: Note, ?successCallback:Dynamic->Void):Void;
    public function findNotesMetadata(authTokenEvernote: String, filter:Dynamic /*NoteFilter*/, ?offset:Int, ?maxNotes: Int, ?resultSpec: Dynamic, ?successCallback:Dynamic->Void):Void;

//    public function get

    // TODO
    public function createNotebook():Void;
    public function createTag():Void;
    public function deleteNote():Void;
}

