<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class VpProductsTablet extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
       Schema::create('vp_products_tablet', function (Blueprint $table) {
        $table->increments('prod_id');
        $table->string('prod_name');
        $table->string('prod_slug'); 
        $table->integer('prod_price'); 
        $table->string('prod_img'); 
        $table->string('prod_accessories'); 
        $table->string('prod_warranty'); 
        $table->string('prod_promotion'); 
        $table->string('prod_condition'); 
        $table->tinyInteger('prod_status'); 
        $table->text('prod_description'); 
        $table->tinyInteger('prod_featured');  
        $table->integer('prod_cate')->unsigned(); 
        $table->foreign('prod_cate')
        ->references('cate_id')
        ->on('vp_category_tablet')
        ->onDelete('cascade'); 
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
       Schema::dropIfExists('vp_products_tablet');
   }
}
