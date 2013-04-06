/** 
 * Author: adrien
 * Date: 05/02/13
 *
 * Copyright 2012 - RevoluGame.com
 */

package cordova.geolocation;

@:native("position")
extern class Position
{
    public var coords : Coordinates;
    public var timestamp : Date;
}

typedef Coordinates = {
    var latitude: Float;
    var longitude: Float;
    var altitude: Float;
    var accuracy: Float;
    var altitudeAccuracy: Float;
    var heading: Float;
    var speed: Float;
}