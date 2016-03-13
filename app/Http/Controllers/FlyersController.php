<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests\FlyerRequest;
use App\Http\Controllers\Controller;
use App\Flyer;
use App\Photo;
use Symfony\Component\HttpFoundation\File\UploadedFile;

class FlyersController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth', ['except' => ['show']]);
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
        $flyer = Flyer::locatedAt($zip, $street);

        return view('flyers.show', compact('flyer'));
    }


    /**
    * Apply a photo to the referenced flyer.
    *
    * @param string $zip
    * @param string $street
    * @return Request $request
    */
    public function addPhoto($zip, $street, Request $request)
    {
        $this->validate($request, [
            'photo' => 'required|mimes:jpg,jpeg,png,bmp'
        ]);

        // $photo = Photo::fromForm($request->file('photo'))->store();
        $photo = $this->makePhoto($request->file('photo'));

        Flyer::locatedAt($zip, $street)->addPhoto($photo);

        return 'Done';
    }


    protected function makePhoto(UploadedFile $file)
    {
        return Photo::named($file->getClientOriginalName())->move($file);
    }
}
