/** 
 * Author: adrien
 * Date: 17/11/13
 *
 * Copyright 2013 - RevoluGame.com
 */

package framework;

class Utils
{

    public static function getTemplatePage(pTemplate: String, ?pData: Dynamic = null):String
    {
        var str = haxe.Resource.getString(pTemplate);
        var t = new haxe.Template(str);
        return t.execute(pData);
    }

}
