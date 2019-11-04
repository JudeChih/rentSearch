<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class ResponseMacroServiceProvider extends ServiceProvider
{
     public function boot()
        {
            Illuminate\Support\Facades\Response::macro('success', function ($data) {

                return response()->json([
                'errors' => false,
                'data'   => $data,
                ]);
            });

            Illuminate\Support\Facades\Response::macro('error', function ($message, $status = Illuminate\Http\Response::HTTP_BAD_REQUEST) {

                return response()->json([
                'errors'  => true,
                'message' => $message,
                ], $status);
            });
        }
}
