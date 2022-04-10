<?php 
namespace textreview;
class Session{
    public static function init(){
        if( session_status()== PHP_SESSION_NONE){
            session_start();
        }
    }
    public static function set($name, $value){
        self::init();
        $_SESSION[$name] = $value;
    }
    public static function get($name){
        self::init();
        return $_SESSION[$name] ? $_SESSION[$name]:null;
    }
    public static function unset($name){
        self::init();
        unset($_SESSION[$name]);
    }
}


?>