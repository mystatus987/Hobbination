<?php
// enable composer autoloading
require("vendor/autoload.php");

//request classes from autoloader
use textreview\Place;
use textreview\Session;
$place = new Place();
$listOfPlace = $place -> getPlace();
$site_name = "Textreview";
$email = Session::get("email");
$loader = new \Twig\Loader\FilesystemLoader('templates');
$twig = new Twig\Environment($loader,["cache" =>false]);

// rendering page 
echo $twig -> render("home.html.twig",["page_title" => "HOBBINATION","places" =>$listOfPlace]);
?>