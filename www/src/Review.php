<?php

namespace textreview;

use textreview\Database;
use Exception;

class Review extends Database
{
    private $dbconnection;

    public function __construct()
    {
        parent::__construct();
        $this->dbconnection = parent::getConnection();
    }

    public function addReview($review_title, $review_text, $user_id, $place_id)
    {
        if (empty($review_title) || empty($review_text) || empty($user_id) || empty($place_id)) {
            return false;
        }
        // if none of the parameters is empty
        $query = "
        INSERT INTO review
        (
            review_title,
            review_text,
            user_id_fk,
            place_id_fk
        )
        VALUES
        (
            ?,
            ?,
            ?,
            ?
        )
    ";
        // pass query to database through database connection
        try {
            $statement = $this->dbconnection->prepare($query);
            if (!$statement) {
                throw new Exception("query error");
            }
            $statement->bind_param("ssii", $review_title, $review_text, $user_id, $place_id);
            if (!$statement->execute()) {
                throw new Exception("execute error");
            } else {
                return true;
            }
        } catch (Exception $exc) {
            echo $exc->getMessage();
            // error_log( $exc -> getMessage() );
        }
    }

    public function getPlaceReviews($place_id)
    {
        $query = "
        SELECT
        *
    FROM
        review
    WHERE
        place_id_fk = ?
";
        try {
            $statement = $this->dbconnection->prepare($query);
            if (!$statement) {
                throw new Exception("query error");
            }
            $statement->bind_param("i", $place_id);
            if (!$statement->execute()) {
                throw new Exception("execute error");
            } else {
                $result = $statement->get_result();
                $reviews = array();
                while ($row = $result->fetch_assoc()) {
                    array_push($reviews, $row);
                }
                return $reviews;
            }
        } catch (Exception $exc) {
            error_log($exc->getMessage());
        }
    }

    public function getUserReviews($user_id)
    {
        $query = "
        SELECT * FROM review WHERE user_id_fk = ?
    ";
        try {
            $statement = $this->dbconnection->prepare($query);
            if (!$statement) {
                throw new Exception("query error");
            }
            $statement->bind_param("i", $user_id);
            if (!$statement->execute()) {
                throw new Exception("execute error");
            } else {
                $result = $statement->get_result();
                $reviews = array();
                while ($row = $result->fetch_assoc()) {
                    array_push($reviews, $row);
                }
                return $reviews;
            }
        } catch (Exception $exc) {
            error_log($exc->getMessage());
        }
    }

    public function getUserReviewForPlace($place_id, $user_id)
    {
        $query = "
        SELECT
        place.place_id,
        review.review_id,
        review.user_id_fk,
        review.review_title,
        review.review_description
        FROM
        place_review
        INNER JOIN place ON place_review.place_id = place.place_id
        INNER JOIN review ON place_review.review_id = review.review_id
        WHERE place_id_fk = ? AND user_id_fk =?
        ";
        try {
            $statement = $this->dbconnection->prepare($query);
            if (!$statement) {
                throw new Exception("query error");
            }
            $statement->bind_param("ii", $place_id, $user_id);
            if (!$statement->execute()) {
                throw new Exception("execute error");
            } else {
                $result = $statement->get_result();
                $review = $result->fetch_assoc();
                return $review;
            }
        } catch (Exception $exc) {
            error_log($exc->getMessage());
        }
    }
}
