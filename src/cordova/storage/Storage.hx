/** 
 * Author: adrien
 * Date: 18/02/13
 *
 * Copyright 2012 - RevoluGame.com
 */

package cordova.storage;

@:native("window")
extern class Storage
{
    /**
     * This method will create a new SQL Lite Database and return a Database object. Use the Database Object to manipulate the data.
     * http://docs.phonegap.com/en/2.4.0/cordova_storage_storage.md.html#Storage
     *
     * @param database_name: The name of the database.
     * @param database_version: The version of the database.
     * @param database_displayName: The display name of the database.
     * @param database_size: The size of the database in bytes.
     */
    public static function openDatabase(database_name:String, database_version:String, database_displayName:String, database_size:Int) : Database;
    public static var localStorage : LocalStorage;
    public static var sessionStorage : LocalStorage;
}