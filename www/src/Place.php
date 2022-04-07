<?php

namespace textreview;

use textreview\Database;
use Exception;

class Place extends Database
{
  private $dbconnection;
  public function __construct()
  {
    // call the __construct() method of the Database class to initialise
    parent::__construct();
    // get the connection after it's been created and keep a reference in 
    // a local variable called $db_connection
    $this->dbconnection = parent::getConnection();
  }

  public function getPlace()
  {
    $query = "
    SELECT
      place.place_id,
      place_name,
      place_address,
      place_phone_number,
      place_description,
      place_image.image_id,
      images.image_name AS picture
    FROM
      place
    INNER JOIN place_image ON place.place_id = place_image.place_id
    INNER JOIN images ON place_image.image_id = images.image_id
    ";

    try {
      $statement = $this->dbconnection->prepare($query);
      if (!$statement) {
        throw new Exception("problem with query " . $query);
      }

      if (!$statement->execute()) {
        throw new Exception("query failed to execute");
      } else {
        $places = array();
        $items = array();
        $result = $statement->get_result();
        while ($row = $result->fetch_assoc()) {
          array_push($items, $row);
        }
        $places["total"] = count($items);
        $places["items"] = $items;

        return $places;
      }
      return null;
    } catch (Exception $exception) {
      echo $exception->getMessage();
    }
  }

  public function getDetails($place_id)
  {
    $query = "
    SELECT
    place.place_id AS id,
    place_name,
    place_address,
    place_phone_number,
    place_description,
    place_image.image_id,
    images.image_name AS picture,
    review.review_title,
    review.review_description,
    category.category_name,
    user.user_name
  FROM
    place
    INNER JOIN place_image ON place.place_id = place_image.place_id
    INNER JOIN images ON place_image.image_id = images.image_id
    INNER JOIN place_review ON place.place_id = place_review.place_id
    INNER JOIN review ON place_review.review_id = review.review_id
    INNER JOIN place_category ON place.place_id = place_category.place_id
    INNER JOIN category ON place_category.category_id = category.category_id
    INNER JOIN user ON user.user_id = review.user_fk
    WHERE place.place_id = ?
    ";
    try {
      $statement = $this -> dbconnection -> prepare( $query );
      if( !$statement ) {
        throw new Exception("query error");
      }
      // binding ? to replace place_id
      $statement -> bind_param( "i", $place_id );
      if( !$statement -> execute() ) {
        throw new Exception("query error");
      }
      else {
        $result = $statement -> get_result();
        $detail = $result -> fetch_assoc();
        return $detail;
      }
    }
    catch( Exception $exc) {
      echo $exc -> getMessage();
      return false;
    }
  }
}
