/** 
 * Author: adrien
 * Date: 18/03/13
 *
 * Copyright 2012 - RevoluGame.com
 */

package cordova;

@:native("InAppBrowser")
extern class InAppBrowser
{
    public function addEventListener(pEventName: String, pCallback:Dynamic->Void, ?pUseCapture: Bool):Void;

    public function removeEventListener(pEventName: String, pCallback:Dynamic->Void):Void;

    public function close():Void;
}