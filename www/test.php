<?php
// enable composer autoloading
require("vendor/autoload.php");

//request classes from autoloader
use textreview\Book;

$book = new Book();
$items = $book -> getItems();

// $loader = new \Twig\Loader\FilesystemLoader("templates");
?>