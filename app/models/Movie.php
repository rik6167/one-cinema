<?php


class Movie extends Eloquent {

	/**
        * MOVIE MODEL 
	 */
    protected $table = 'lar_movies';

    static function getAllMovies(){
            
            $movies =  Movie::all();          
            $moviesList = $movies->toJson();
            return $moviesList;

    }

}