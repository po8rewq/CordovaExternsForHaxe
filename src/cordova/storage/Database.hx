/** 
 * Author: adrien
 * Date: 18/02/13
 *
 * Copyright 2012 - RevoluGame.com
 */

package cordova.storage;

extern class Database
{
    /**
     * Runs a database transaction.
     */
    public function transaction(populate:SQLTransaction->Void, error:SQLError->Void, ?success:Void->Void) : Void;

    /**
     * Method allows scripts to atomically verify the version number and change it at the same time as doing a schema update.
     */
     public function changeVersion(v1:String, v2:String) : Void;
}
