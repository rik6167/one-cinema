<?php

class CinemaController extends \BaseController {

	/**
	 * Display a listing of the resource.
	 * RETURN ALL CINEMA LISTINGS
	 * @return Response
	 */
	public function index()
	{
		 
            $cinemas = Cinema::getAllCinemas();
            return $cinemas;
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  text  $name
	 * @return Response
         * example Event-Cinema 
	 */
	public function show($name)
	{
            return Cinema::getCinemaInfo($name);
            
	}
        

}
