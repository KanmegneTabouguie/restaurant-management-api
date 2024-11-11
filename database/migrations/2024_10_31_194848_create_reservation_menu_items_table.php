<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateReservationMenuItemsTable extends Migration
{
    public function up()
    {
        Schema::create('reservation_menu_items', function (Blueprint $table) {
            $table->foreignId('reservation_id')->constrained()->onDelete('cascade');
            $table->foreignId('menu_item_id')->constrained()->onDelete('cascade');
            $table->integer('quantity')->default(1);
            $table->primary(['reservation_id', 'menu_item_id']);
        });
    }

    public function down()
    {
        Schema::dropIfExists('reservation_menu_items');
    }
}
