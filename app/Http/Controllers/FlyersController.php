<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

class FlyersController extends Controller
{
    /**
    * Display a listing of the resource.
    *
    * @return Response
    */
    public function index()
    {

    }

    /**
    * Show the form for creating a new resource.
    *
    * @return Response
    */
    public function create()
    {
    	return view('flyers.create');
    }

    /**
    * Store a newly created resource in storsage.
    *
    * @param Request $request
    * @return Response
    */
    public function store(Request $request)
    {

    }
}
