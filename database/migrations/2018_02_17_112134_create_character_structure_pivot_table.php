<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCharacterStructurePivotTable  extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('character_structure', function (Blueprint $table) {
            $table->bigInteger('character_id')->index();
            //$table->foreign('character_id')->references('character_id')->on('characters')->onDelete('cascade');
            $table->biginteger('structure_id')->index();
            //$table->foreign('structure_id')->references('structure_id')->on('structures')->onDelete('cascade');
            $table->primary(['character_id', 'structure_id']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('character_structure');
    }
}
