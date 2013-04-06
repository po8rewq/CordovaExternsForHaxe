/** 
 * Author: adrien
 * Date: 05/02/13
 *
 * Copyright 2012 - RevoluGame.com
 */

package cordova.network;

@:native("navigator.connection")
extern class Connection
{
    public static var type : String;

    public static inline var UNKNOWN    : String = 'Unknown connection';
    public static inline var ETHERNET   : String = 'Ethernet connection';
    public static inline var WIFI       : String = 'WiFi connection';
    public static inline var CELL_2G    : String = 'Cell 2G connection';
    public static inline var CELL_3G    : String = 'Cell 3G connection';
    public static inline var CELL_4G    : String = 'Cell 4G connection';
    public static inline var NONE       : String = "none"; //'No network connection';
}
