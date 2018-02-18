<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Structure extends Model
{
    protected $guarded = [];
    //
    
    /**
    * The charatcers that belong to the Structure.
    */
    public function characters()
    {
        return $this->belongsToMany('App\Character',null,null,null,'structure_id','id');
    }
}
