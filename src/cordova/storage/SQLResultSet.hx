/** 
 * Author: adrien
 * Date: 18/02/13
 *
 * Copyright 2012 - RevoluGame.com
 */

package cordova.storage;

extern class SQLResultSet
{
    /**
     * the row ID of the row that the SQLResultSet object's SQL statement inserted into the database
     **/
    public var insertId : Int;

    /**
     * The number of rows that were changed by the SQL statement. If the statement did not affect any rows then it is set to 0.
     **/
    public var rowsAffected : Int;

    /**
     * a SQLResultSetRowList representing the rows returned. If no rows are returned the object will be empty.
     **/
    public var rows : SQLResultSetList;
}
