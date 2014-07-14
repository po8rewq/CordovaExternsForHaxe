/** 
 * Author: adrien
 * Date: 20/07/13
 *
 * Copyright 2013 - RevoluGame.com
 */

package framework;

interface IController
{
    public var name : String; // needed

    // automatically called when registered
    function buildRouter():Void;
}
