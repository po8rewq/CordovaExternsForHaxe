/** 
 * Author: adrien
 * Date: 25/03/13
 *
 * Plugin :
 * https://github.com/DoersGuild/Cordova-Android-Analytics
 *
 * Copyright 2012 - RevoluGame.com
 */

package cordova.plugins;

@:native("window.plugins.analytics")
extern class Analytics
{
	/**
	 * Initialize Google Analytics configuration
	 * 
	 * @param accountId         The Google Analytics account id 
	 * @param successCallback   The success callback
	 * @param failureCallback   The error callback
 	 */ 
	public static function start(successCallback: Void->Void, failureCallback: Void->Void):Void;
    public static function stop(successCallback: Void->Void, failureCallback: Void->Void):Void;
 
	/**
	 * Track a page view on Google Analytics
	 * @param key               The name of the tracked item (can be a url or some logical name).
	 *                          The key name will be presented in Google Analytics report.  
	 * @param successCallback   The success callback
	 * @param failureCallback   The error callback 
	 */
	public static function trackPageView(key:String, successCallback: Void->Void, failureCallback: Void->Void): Void;
 
	/**
	 * Track an event on Google Analytics
	 * @param category          The name that you supply as a way to group objects that you want to track
	 * @param action            The name the type of event or interaction you want to track for a particular web object
	 * @param label             Provides additional information for events that you want to track (optional)
	 * @param value             Assign a numerical value to a tracked page object (optional)

	 * @param successCallback   The success callback
	 * @param failureCallback   The error callback 
	 */

  	public static function trackEvent(category: String, action: String, label: String, value: Int, successCallback: Void->Void, failureCallback: Void->Void):Void;

    /**
     * Used to track timings within your app, such as load times, server calls, page changes etc.
     *
     * This is new to SDK v2 and only works with beta 4 and above. Reporting is still sketchy.
     * https://developers.google.com/analytics/devguides/collection/android/v2/usertimings?hl=en
     *
     * @param category The category of timing
     * @param timing The timing value to track (in ms)
     * @param name The name of the timing value
     * @param label Provides additional information for timing events that you want to track (optional)
     * @param successCallback The success callback
     * @param failureCallback The error callback
     */
    public static function trackTiming(category:String, timing:Int, name:String, label:String, successCallback:Void->Void, failureCallback:Void->Void):Void;

    /**
     * Set a custom dimension. This replaces custom variables from v1.
     * see https://developers.google.com/analytics/devguides/platform/features/customdimsmets
     *
     * Note: The dimension must be set up through the analytics web console to show up.
     * see http://support.google.com/analytics/bin/answer.py?hl=en&answer=2709829
     *
     * @param index The index of the dimension (set on Google Analytics)
     * @param value The value to set
     *
     * @param successCallback The success callback
     * @param failureCallback The error callback
     */
    public static function setCustomDimension(index:Int, value: String, successCallback:Void->Void, failureCallback:Void->Void):Void;
}

