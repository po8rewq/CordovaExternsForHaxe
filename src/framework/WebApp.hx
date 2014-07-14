/** 
 * Author: adrien
 * Date: 20/07/13
 *
 * Copyright 2013 - RevoluGame.com
 */

package framework;

import js.Browser;
import jQuery.JQuery;

#if phonegap
import cordova.Console;
#end

class WebApp
{
    public static var controllers : Map<String, IController>;

    private var slider : PageSlider;
    /** Name of the main container div */
    private var mainContainer : String;

    public function new(pMainContainer: String)
    {
        #if phonegap
        // redirect traces to phonegap
        haxe.Log.trace = console;
        #end

//        Browser.document.addEventListener(Events.PAUSE, onPause, false);
//        Browser.document.addEventListener(Events.RESUME, onResume, false);

        mainContainer = pMainContainer;

        #if phonegap
        Browser.window.addEventListener('load', function (_) {
            new FastClick(Browser.window.document.body);
        }, false);
        #end

        slider = new PageSlider(new JQuery(mainContainer));
        Browser.window.addEventListener("hashchange", route);
    }

    private function route(event: js.html.Event)
    {
        onHashChange(Browser.window.location.hash);
    }

    private function onHashChange(pHash: String)
    {
        // need to be override
    }

    #if phonegap
    private static function console( v : Dynamic, ?inf : haxe.PosInfos )
    {
        Console.log(v);
    }
    #end

    public function registerController(pController: IController)
    {
        if(WebApp.controllers == null) WebApp.controllers = new Map();

        pController.buildRouter();
        controllers.set(pController.name, pController);
    }

    private static function onPause(e:Dynamic) {}
    private static function onResume(e:Dynamic) {}
}


@:native("PageSlider")
extern class PageSlider
{
    public function new(pElem: JQuery):Void;
    public function slidePage(elem: Dynamic, ?pCallback:Void->Void):Void;
    public function slidePageFrom(elem: Dynamic, ?pClass: String, ?pCallback:Void->Void):Void;
}


@:native("FastClick")
extern class FastClick
{
    public function new(pElem: Dynamic):Void;
}