/** 
 * Author: adrien
 * Date: 18/02/13
 *
 * Copyright 2012 - RevoluGame.com
 */

package cordova.storage;

extern class SQLTransaction
{
    // e ??? dans les exemples : [] array vide ...
    public function executeSql(sql:String, ?e:Dynamic, ?querySuccesstx:SQLTransaction->SQLResultSet->Void, ?errorCB: SQLError->Void) : SQLResultSet;
}
