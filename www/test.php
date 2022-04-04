<?php
// enable composer autoloading
require("vendor/autoload.php");

//request classes from autoloader
use textreview\Place;

$place = new Place();
$items = $place -> getItems();


$loader = new \Twig\Loader\FilesystemLoader('templates');
$twig = new Twig\Environment($loader,["catche" =>false]);

// rendering page 
echo $twig -> render("home.html.twig",["page_title" => "TextReview","greenthing" => "Hello there","places" =>$items]);
?>