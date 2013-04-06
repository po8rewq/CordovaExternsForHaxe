/** 
 * Author: adrien
 * Date: 05/02/13
 *
 * Copyright 2012 - RevoluGame.com
 */

package cordova.geolocation;

@:native("PositionError")
extern class PositionError
{
    public static var PERMISSION_DENIED     : Int = 1;
    public static var POSITION_UNAVAILABLE  : Int = 2;
    public static var TIMEOUT               : Int = 3;

    public var code (default, null) : Int;
    public var message (default, null) : String;
}
