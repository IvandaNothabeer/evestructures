<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class StructureVul extends Model
{
    protected $guarded = [];

    public function structures() {
        return $this->belongsTo('App\Structure', 'structure_id', 'structure_id');
    }
}
