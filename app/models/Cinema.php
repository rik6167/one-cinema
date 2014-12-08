<?php


class Cinema extends Eloquent {


	/**
        * CINEMA MODEL 
	 */
    protected $table = 'lar_cinemas';

    static function getAllCinemas(){
            
            $cinemas =  Cinema::all();          
            $cinemaList = $cinemas->toJson();
            return $cinemaList;
    }
    
    static function getCinemaInfo($nameCinema){
           
  
            $where = str_replace("-", " ", $nameCinema);
            $info =  DB::table('lar_session_times')
                    ->join('lar_cinemas', 'lar_session_times.cinema_id', '=', 'lar_cinemas.id')
                    ->join('lar_movies', 'lar_session_times.movie_id', '=', 'lar_movies.id')
                    ->select('lar_cinemas.name','lar_movies.title',"lar_session_times.date_time")
                    ->where("lar_cinemas.name",$where)
                    ->get();
            
            return json_encode($info);
            
    }
    

}