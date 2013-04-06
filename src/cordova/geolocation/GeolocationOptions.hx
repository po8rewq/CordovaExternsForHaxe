/** 
 * Author: adrien
 * Date: 05/02/13
 *
 * Copyright 2012 - RevoluGame.com
 */

package cordova.geolocation;

@:native("navigator.geolocation.geolocationOptions")
extern class GeolocationOptions
{
    /**
    * Provides a hint that the application would like to receive the best possible results.
    * By default, the device will attempt to retrieve a Position using network-based methods.
    * Setting this property to true tells the framework to use more accurate methods, such as satellite positioning. (Boolean)
    **/
    public static var enableHighAccuracy : Bool;

    /**
    * The maximum length of time (milliseconds) that is allowed to pass from the call to geolocation.getCurrentPosition or geolocation.watchPosition until the corresponding geolocationSuccess callback is invoked.
    * If the geolocationSuccess callback is not invoked within this time, the geolocationError callback will be invoked with a PositionError.TIMEOUT error code.
    * NOTE: when used in conjunction with geolocation.watchPosition, the geolocationError callback could be called on an interval every timeout milliseconds! (Number)
    **/
    public static var timeout : Int;

    /**
     * Accept a cached position whose age is no greater than the specified time in milliseconds. (Number)
     **/
    public static var maximumAge : Float;
}