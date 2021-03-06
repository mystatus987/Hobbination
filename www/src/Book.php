<?php
namespace textreview;

use textreview\Database;
use Exception;

class Book extends Database {
  private $dbconnection;
  public function __construct()
  {
    // call the __construct() method of the Database class to initialise
    parent::__construct();
    // get the connection after it's been created and keep a reference in 
    // a local variable called $db_connection
    $this -> dbconnection = parent::getConnection();
  }

  public function getItems() 
  {
    $query = "
    SELECT 
    book_id, 
    book_title, 
    tagline, 
    isbn10, 
    isbn13, 
    year, 
    pages 
    FROM book";

    try
    {
      $statement = $this -> dbconnection -> prepare( $query );
      if( !$statement ) 
      {
        throw new Exception("problem with query " . $query );
      }

      if( !$statement -> execute() ) 
      {
        throw new Exception("query failed to execute");
      }
      else 
      {
        $books = array();
        $items = array();
        $result = $statement -> get_result();
        while( $row = $result -> fetch_assoc() ) 
        {
          array_push( $items, $row );
        }
        $books["total"] = count($items);
        $books["items"] = $items;

        return $books;
      }
      return null;
    }
    catch ( Exception $exception ) 
    {
      echo $exception -> getMessage();
    }
  }
}
?>