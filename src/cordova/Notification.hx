/** 
 * Author: adrien
 * Date: 18/02/13
 *
 * Copyright 2012 - RevoluGame.com
 */

package cordova;

@:native("navigator.notification")
extern class Notification
{
    /**
     * Shows a custom alert or dialog box.
     * @param message: Dialog message (String)
     * @param alertCallback: Callback to invoke when alert dialog is dismissed. (Function)
     * @param title: Dialog title (String) (Optional, Default: "Alert")
     * @param buttonName: Button name (String) (Optional, Default: "OK")
     **/
    public static function alert(message: String, alertCallback: Void->Void, ?title: String, ?buttonName: String): Void;

    /**
     * Shows a customizable confirmation dialog box.
     * @param message: Dialog message (String)
     * @param confirmCallback: - Callback to invoke with index of button pressed (1, 2 or 3) or when the dialog is dismissed without a button press (0), (Function)
     * @param title: Dialog title (String) (Optional, Default: "Confirm")
     * @param buttonLabels: Comma separated string with button labels (String) (Optional, Default: "OK,Cancel")
     **/
    public static function confirm(message: String, confirmCallback: Int->Void, ?title: String, ?buttonLabels: String): Void;

    /**
     * The device will play a beep sound.
     * @param times: The number of times to repeat the beep (Number)
     **/
    public static function beep(times: Int):Void;

    /**
     * Vibrates the device for the specified amount of time.
     * @param time: Milliseconds to vibrate the device. 1000 milliseconds equals 1 second (Number)
     **/
    public static function vibrate(milliseconds: Int):Void;
}
