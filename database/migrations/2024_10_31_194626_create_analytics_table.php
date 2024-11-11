<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAnalyticsTable extends Migration
{
    public function up()
    {
        Schema::create('analytics', function (Blueprint $table) {
            $table->id(); // analytics_id
            $table->foreignId('user_id')->nullable()->constrained()->nullOnDelete();
            $table->string('page', 100);
            $table->string('action', 100);
            $table->timestamp('timestamp')->useCurrent();
            $table->string('ip_address', 45);
            $table->string('user_agent', 255);
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('analytics');
    }
}
