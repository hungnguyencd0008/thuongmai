<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class VpCategoryLaptop extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        Schema::create('vp_category_laptop', function (Blueprint $table) {
        $table->increments('cate_id');
        $table->string('cate_name');
        $table->string('cate_slug');       
        $table->timestamps();
    });

   }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
        Schema::dropIfExists('vp_category_laptop');
    }
}
