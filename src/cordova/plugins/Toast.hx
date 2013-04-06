/** 
 * Author: adrien
 * Date: 18/02/13
 *
 * Plugin :
 * https://github.com/giver/cordova-android-toast-plugin
 *
 * Copyright 2012 - RevoluGame.com
 */

package cordova.plugins;

@:native("Toast")
extern class Toast
{
    public static function longshow(Message: String, ?SuccessCallback: Dynamic, ?FailureCallback: Dynamic):Void;
    public static function shortshow(Message: String, ?SuccessCallback: Dynamic, ?FailureCallback: Dynamic):Void;
}
