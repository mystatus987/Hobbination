<?php
// enable composer autoloading
require("vendor/autoload.php");

use textreview\Account;
$account = new Account();

$result = null;
$user_email = null;
$user_password = null;

if( $_SERVER["REQUEST_METHOD"] == "POST" ) {
  $user_name = $_POST["name"];
  $user_email = $_POST["email"];
  $user_password = $_POST["password"];
  // check if user_email and user_password is not empty
  if( strlen($user_email) > 0 && strlen($user_password) > 0 ) {
    $result = $account -> create( $user_name,$user_email, $user_password);
      header("location: /");
  }
}


$loader = new \Twig\Loader\FilesystemLoader("templates");
$twig = new Twig\Environment( $loader, [ "cache" => false ] );

$site_name = "Hobbination";

echo $twig -> render(
  "signup.html.twig", 
  [
    "page_title" => "Sign up to Hobbination", 
    "site_name" => $site_name,
    "result" => $result,
    "email" => $user_email,
    "password" => $user_password
  ] );
