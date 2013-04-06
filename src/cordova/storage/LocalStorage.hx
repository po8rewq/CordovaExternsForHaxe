/** 
 * Author: adrien
 * Date: 18/02/13
 *
 * Copyright 2012 - RevoluGame.com
 */

package cordova.storage;

@:native("window.localStorage")
extern class LocalStorage
{
    public static function key(index:Int) : String;
    public static function getItem(key:String) : Dynamic;
    public static function setItem(key:String, value:String) : Void;
    public static function removeItem(key:String) : Void;
    public static function clear() : Void;
}
