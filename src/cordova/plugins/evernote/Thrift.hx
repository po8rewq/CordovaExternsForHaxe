/** 
 * Author: adrien
 * Date: 20/10/13
 *
 * Copyright 2013 - RevoluGame.com
 */

package cordova.plugins.evernote;

@:native("Thrift")
extern class Thrift
{

}

@:native("Thrift.BinaryHttpTransport")
extern class BinaryHttpTransport
{
    public function new(noteStoreURL: Dynamic):Void;
}

@:native("Thrift.BinaryProtocol")
extern class BinaryProtocol
{
    public function new(noteStoreTransport: Dynamic):Void;
}