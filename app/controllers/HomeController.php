<?php

class HomeController extends BaseController {

	/*
	HOME PAGE OF ONE CINEMA APP
	*/

	public function showHome()
	{
		return View::make('home');
	}

}
