/** 
 * Author: adrien
 * Date: 09/03/13
 *
 * Copyright 2012 - RevoluGame.com
 *
 * Cordova 2.5.0
 */

package cordova;

@:native("navigator.app")
extern class App
{
    public static function loadUrl(url: String):Void;
}


class Extra
{
    public static var document(get_document, null):InAppBrowser;
    private static function get_document():InAppBrowser
    {
        return untyped __js__("document");
    }

    public static var window(get_window, null):InAppBrowser;
    private static function get_window():InAppBrowser
    {
        return untyped __js__("window");
    }
}