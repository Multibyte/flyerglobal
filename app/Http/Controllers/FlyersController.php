<?php

namespace App\Http\Controllers;

use App\Flyer;
use Illuminate\Http\Request;
use App\Http\Requests\FlyerRequest;
use App\Http\Controllers\Controller;

class FlyersController extends Controller
{
    /**
    * Create a new FlyersController instance.
    */
    public function __construct()
    {
        $this->middleware('auth', ['except' => ['show']]);

        parent::__construct();
    }

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
        $flyer = $this->user->publish(new Flyer($request->all()));

        flash()->success('Success!', 'Your flyer has been created.');

        return redirect(flyer_path($flyer));
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
        $flyer = Flyer::locatedAt($zip, $street);

        return view('flyers.show', compact('flyer'));
    }

    /**
    * Show the form for editing the specified resource.
    *
    * @param int $id
    * @return Response
    */
    public function edit($id)
    {
        //
    }
}
