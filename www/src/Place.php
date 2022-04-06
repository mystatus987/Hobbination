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
    $query = "SELECT * FROM place ";

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


  // public function getReview($place_id)
  // {
  //   $query = "
  //    SELECT
  //        place.place_id,
  //        place.place_name,
  //        place.place_address,
  //        place.place_phone_number,
  //        place.place_description,
  //        place_review.review_id,
  //        review.review_title AS reviewTitle
  //    FROM
  //        place
  //    INNER JOIN place_review ON place.place_id = place_review.place_id
  //    INNER JOIN place_review ON place.place_id = place_review.review_id
  //    WHERE
  //        place.place_id = ?
  //     ";
  // }
}
