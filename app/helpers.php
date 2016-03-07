<?php

function flash($title = null, $message = null)
{
	$flash = app('App\Http\Flash');

	if(func_num_args() == 0)
	{
		return $flash; // flash()->success('Title', 'Message')
	}

	return $flash->info($title, $message); // flash('Title', 'Message')
}