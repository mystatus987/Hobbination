<?php
// enable composer autoloading
require("vendor/autoload.php");

//request classes from autoloader
use textreview\Place;
use textreview\Session;
use textreview\Review;

// get gloval variable 
$place_id = $_GET['id'];

$place = new Place();
$place_details = $place -> getDetails($place_id);
$place_name = isset($place_details['place_name']);
$email = Session::get("email");
$user_id = Session::get("user_id");
// instantiate the review class
$review = new Review();
// true if user has just submitted a review
$submitting = false;
// false if review submission fails
$success = true;
// message to show the user after submission
$message = "";

// if a review is submitted (via POST request)
if( $_SERVER["REQUEST_METHOD"] == "POST" ) {
    $review_title = $_POST["title"];
    $review_text = $_POST["text"];
    
    // create the review
    $add = $review -> addReview($review_title, $review_text, $user_id, $place_id);
    if( $add == true ) {
      // tell user review has been posted
      $submitting = true;
      $success = true;
      $message = "Your review has been submitted";
    }
    else {
      // tell user review is not created
      $submitting = true;
      $success = false;
      $message = "Your review cannot be submitted";
    }
  }


// get place reviews
$place_reviews = $review -> getPlaceReviews( $place_id );
// check if user has a review for this place
$user_place_review = $review -> getUserReviewForPlace( $place_id, $user_id);
if( $user_place_review ) {
  $reviewed_by_user = true;
}
else {
  $reviewed_by_user = false;
}



$loader = new \Twig\Loader\FilesystemLoader('templates');
$twig = new Twig\Environment($loader,["cache" =>false]);
// rendering page 
echo $twig -> render("details.html.twig",
[
  "page_title" => "HOBBINATION $place_name",
  "place" => $place_details,  
  "email" => $email,
  "user_id" => $user_id, 
  "reviews" => $place_reviews,
  "submitting" => $submitting,
  "success" => $success,
  "message" => $message,
  "reviewed" => $reviewed_by_user
]);