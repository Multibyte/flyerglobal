<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Photo extends Model
{
    /**
    * A photo belongs to a flyer.
    *
    * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
    */
    protected $table = 'flyer_photos';
    protected $fillable = ['photo'];
    public function flyer()
    {
        return $this->belongsTo('App\Flyer');
    }
}
