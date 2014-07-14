/** 
 * Author: adrien
 * Date: 06/03/13
 *
 * Copyright 2012 - RevoluGame.com
 */

package framework.managers;

import jQuery.JQuery;

class DomManager {

    private static var _instance : DomManager;

    public static function getInstance():DomManager{
        if(_instance == null) _instance = new DomManager();
        return _instance;
    }

    private var _cache : Map<String, JQuery>;

    private function new() {
        _cache = new Map();
    }

//    public function save(pName: String, pElement: JQuery)
//    {
//        _cache.set(pName, pElement);
//    }

    public function get(pName:String):JQuery
    {
        if(_cache.exists(pName))
            return _cache.get(pName);

        var elem = new JQuery(pName); // js.Lib.alert(elem);
        if(elem != null)
            _cache.set(pName, elem);
        return elem;
    }

    public function getAll():Map<String, JQuery>
    {
        return _cache;
    }

}