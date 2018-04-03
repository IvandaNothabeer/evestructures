<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Structure extends Model
{
    protected $guarded = [];
    //
    
    public function characters() {
      return $this->belongsToMany('App\Character',null,null,null,'structure_id','character_id');
    }

    public function services() {
      return $this->hasMany('App\StructureService', 'structure_id', 'structure_id');
    }

    public function states() {
      return $this->hasMany('App\StructureState', 'structure_id', 'structure_id');
    }

    public function vuls() {
      return $this->hasMany('App\StructureVul', 'structure_id', 'structure_id');
    }

    public function extractions() {
      return $this->hasOne('App\Extractions', 'structure_id', 'structure_id');
    }

}

