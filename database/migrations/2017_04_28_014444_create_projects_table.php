<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProjectsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('projects', function (Blueprint $table) {
            $table->increments('id');
            $table->string('date');
            $table->string('tpl');
            $table->string('caseName');
            $table->string('designer');
            $table->string('editor');
            $table->string('rd');
            $table->string('link')->nullable();
            $table->string('filename')->nullable();
            $table->string('ver')->nullable();
            $table->string('remark')->nullable();
            $table->rememberToken();
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
        Schema::dropIfExists('projects');
    }
}
