<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests\FlyerRequest;
use App\Http\Controllers\Controller;
use App\Flyer;

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
    * @param FlyerRequest $request
    * @return Response
    */
    public function store(FlyerRequest $request)
    {
        Flyer::create($request->all());

        return redirect()->back();
    }

    /**
    * Display the specified resource.
    *
    * @param int $id
    * @return Response
    */
    public function show($id)
    {
        //
    }
}
