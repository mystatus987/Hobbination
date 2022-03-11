<?php
// enable composer autoloading
require("vendor/autoload.php");

//request classes from autoloader
use textreview\Book;

$book = new Book();
$items = $book -> getItems();

if ( $items ) {
  print_r($items);
}
else {
  echo "no books found";
}
?>