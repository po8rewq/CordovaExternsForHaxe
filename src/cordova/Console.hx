/** 
 * Author: adrien
 * Date: 20/07/13
 *
 * Copyright 2013 - RevoluGame.com
 */

package cordova;

@:native("console")
extern class Console
{
    public static function log(pText: String):Void;
}
