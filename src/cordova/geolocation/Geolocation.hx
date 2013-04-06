/** 
 * Author: adrien
 * Date: 05/02/13
 *
 * Copyright 2012 - RevoluGame.com
 */

package cordova.geolocation;

import cordova.geolocation.GeolocationOptions;

@:native("navigator.geolocation")
extern class Geolocation
{
    /**
     * Returns the device's current position as a Position object.
     * @param geolocationSuccess: The callback that is called with the current position.
     * @param geolocationError: (Optional) The callback that is called if there was an error.
     * @param geolocationOptions: (Optional) The geolocation options.
     **/
    public static function getCurrentPosition(geolocationSuccess: Position->Void, ?geolocationError: PositionError->Void, ?geolocationOptions: GeolocationOptions): Void;

    /**
     * Watches for changes to the device's current position.
     * @param geolocationSuccess: The callback that is called with the current position.
     * @param geolocationError: (Optional) The callback that is called if there was an error.
     * @param geolocationOptions: (Optional) The geolocation options.
     * @return a watch id that references the watch position interval.
     * The watch id should be used with geolocation.clearWatch to stop watching for changes in position.
     **/
    public static function watchPosition(geolocationSuccess: Position->Void, ?geolocationError: PositionError->Void, ?geolocationOptions: GeolocationOptions): String;

    /**
     * Stop watching for changes to the device's location referenced by the watchID parameter.
     * @param watchId: The id of the watchPosition interval to clear. (String)
     **/
    public static function clearWatch(watchID: String):Void;

}
