/** 
 * Author: adrien
 * Date: 18/02/13
 *
 * Copyright 2012 - RevoluGame.com
 */

package cordova.storage;

extern class SQLError
{
    public static var UNKNOWN_ERR       : Int;
    public static var DATABASE_ERR      : Int;
    public static var VERSION_ERR       : Int;
    public static var TOO_LARGE_ERR     : Int;
    public static var QUOTA_ERR         : Int;
    public static var SYNTAX_ERR        : Int;
    public static var CONSTRAINT_ERR    : Int;
    public static var TIMEOUT_ERR       : Int;

    public var code : Int;
    public var message : String;
}
