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
    WHERE place.place_id = ?
    ";
    try {
      $statement = $this->dbconnection->prepare($query);
      if (!$statement) {
        throw new Exception("query error");
      }
      // binding ? to replace place_id
      $statement->bind_param("i", $place_id);
      if (!$statement->execute()) {
        throw new Exception("query error");
      } else {
        $result = $statement->get_result();
        $detail = $result->fetch_assoc();
        return $detail;
      }
    } catch (Exception $exc) {
      echo $exc->getMessage();
      return false;
    }
  }

  public function getPlacesInCategory($category_id)
  {
    $query = "
    SELECT place_name
    FROM category c
    LEFT JOIN place_category pc ON c.category_id = pc.category_id
    JOIN place p ON pc.place_id = p.place_id
    WHERE c.category_id = ?
    ORDER BY c.category_id
    ";
    $statement = $this -> dbconnection -> prepare($query);
    $statement->bind_param("i", $category_id);
    try {
      if (!$statement -> execute()) {
        throw new Exception("query error");
      } 
      else {
        $categoryPlaces = array();
        $items = array();
        $result = $statement -> get_result();
        while( $row = $result -> fetch_assoc() ) {
          array_push( $categoryPlaces, $row );
        }
        return $categoryPlaces;
      }
    } 
    catch (Exception $exc) {
      echo $exc -> getMessage();
    }
  }
}
