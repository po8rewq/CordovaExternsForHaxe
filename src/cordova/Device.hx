package cordova;

@:native("window.device")
extern class Device
{
//    static var name	(default, null) : String;
    static var cordova	(default, null)	: String;
    static var platform	(default, null)	: String;
    static var uuid		(default, null)	: String;
    static var version	(default, null)	: String;
}