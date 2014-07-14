/** 
 * Author: adrien
 * Date: 20/10/13
 *
 * Copyright 2013 - RevoluGame.com
 */

package cordova.plugins;

// fonctionnement avec evernote : http://dev.evernote.com/doc/start/javascript.php

@:native("OAuth")
extern class OAuth
{
    public static function new(config: OAuthConfig):Void;
    public function request(options: OAuthRequestOptions):Void;

    public function setVerifier(verifier: Dynamic):Void;

    public function setAccessToken(params: Array<String>):Void;
}

typedef OAuthConfig = {
    var consumerKey: String;
    var consumerSecret : String;
    var callbackUrl : String;
    var signatureMethod : String;
}

typedef OAuthRequestOptions = {
    var method : String; // GET | POST
    var url : String; // 'https://sandbox.evernote.com/oauth'
    var success : Dynamic->Void;
    var failure : Dynamic->Void;
}