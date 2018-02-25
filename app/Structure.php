<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Structure extends Model
{
    protected $guarded = [];
    //
    
    /**
    * The characters that belong to the Structure.
    */
    public function characters()
    {
        return $this->belongsToMany('App\Character',null,null,null,'structure_id','id');
    }
    
        /**
    * The services that belong to the Structure.
    */
    public function services()
    {
        return $this->hasMany('App\StructureService','structure_id','structure_id');
    }
    
        /**
    * The States that belong to the Structure.
    */
    public function states()
    {
        return $this->hasMany('App\StructureState','structure_id','structure_id');
    }
    
        /**
    * The Vulnerabilities that belong to the Structure.
    */
    public function vuls()
    {
        return $this->hasMany('App\StructureVul','structure_id','structure_id');
    }
    
}
