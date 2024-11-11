<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateReservationsTable extends Migration
{
    public function up()
    {
        Schema::create('reservations', function (Blueprint $table) {
            $table->id(); // reservation_id
            $table->foreignId('user_id')->nullable()->constrained()->nullOnDelete();
            $table->dateTime('reservation_date');
            $table->integer('number_of_guests');
            $table->text('special_requests')->nullable();
            $table->enum('status', ['Pending', 'Confirmed', 'Cancelled', 'Completed'])->default('Pending');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('reservations');
    }
}
