/** 
 * Author: adrien
 * Date: 31/08/13
 *
 * Copyright 2013 - RevoluGame.com
 */

package framework.managers;

import haxe.ds.HashMap;
import msignal.Signal.Signal1;

class PagesManager
{

    private static var _instance:PagesManager;

    public static function getInstance():PagesManager
    {
        if (_instance == null) _instance = new PagesManager();
        return _instance;
    }

    // liste des id des pages
    private var _pagesList : Hash<String, String>;
//    public var changePageSignal : Signal1;

    private function new()
    {
        _pagesList = new HashMap();
//        changePageSignal = new Signal1<String>();
    }

    public function changePage(pPage: String)
    {

    }

}