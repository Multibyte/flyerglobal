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
        // flash()->overlay('Welcome Aboard', 'Thank you for signing up.');
        // flash()->success('Test Title', 'Test Message');
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

        flash()->success('Success!', 'Your flyer has been created.');

        return redirect()->back();
    }

    /**
    * Display the specified resource.
    *
    * @param string $zip
    * @param string $street
    * @return Response
    */
    public function show($zip, $street)
    {
        $flyer = Flyer::locatedAt($zip, $street)->first();

        return view('flyers.show', compact('flyer'));
    }
}
