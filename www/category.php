<?php
require("vendor/autoload.php");

use textreview\Place;
use textreview\Search;
use textreview\Session;

$email = Session::get("email");
$place = new Place();
$search = new Search();

$user_email = Session::get("user_email");
$user_Id = Session::get("user_id");
$user_image = Session::get("user_image");

$category_id = $_GET['id'];
$categoryPlaces = $place -> getPlacesInCategory($category_id);
print_r( $categoryPlaces );

$site_name = "Hobbination";
// $count = count( $categoryPlaces );

// create twig environment
$loader = new \Twig\Loader\FilesystemLoader("templates");
$twig = new Twig\Environment( $loader, [ "cache" => false ] );

echo $twig -> render(
  "category.html.twig", 
  [
    // Search Class
    // "page_title" => "Search result for $cateName",  
    "result" => $categoryPlaces,
    "site_name" => $site_name,
    // "total" => $count,

    // nav category pull down menu
    //"categories" => $categories,
    "email" => $email
  ] );
?>