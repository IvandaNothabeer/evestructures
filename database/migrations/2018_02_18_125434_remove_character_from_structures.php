<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class RemoveCharacterFromStructures  extends Migration
{
    /**
    * Run the migrations.
    *
    * @return void
    */
    public function up()
    {
        Schema::table('structures', function (Blueprint $table) {
            $table->dropColumn(['user_id', 'character_id']);
        });

        Schema::table('structure_services', function (Blueprint $table) {
            $table->dropColumn(['character_id']);
        });

        Schema::table('structure_states', function (Blueprint $table) {
            $table->dropColumn(['character_id']);
        });

        Schema::table('structure_vuls', function (Blueprint $table) {
            $table->dropColumn(['character_id']);
        });

    }

    /**
    * Reverse the migrations.
    *
    * @return void
    */
    public function down()
    {

    }
}
