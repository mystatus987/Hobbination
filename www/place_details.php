<?php
// enable composer autoloading
require("vendor/autoload.php");

//request classes from autoloader
use textreview\Place;

// get gloval variable 
$place_id = $_GET['id'];

$place = new Place();
$place_details = $place -> getDetails($place_id);
$place_name = $place_details['place_name'];

$loader = new \Twig\Loader\FilesystemLoader('templates');
$twig = new Twig\Environment($loader,["cache" =>false]);
// rendering page 
echo $twig -> render("details.html.twig",["page_title" => "HOBBINATION $place_name","place" => $place_details]);
?>