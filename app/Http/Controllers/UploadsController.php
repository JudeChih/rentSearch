<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;

use Image;


class UploadsController extends Controller
{
    public function upload_avatar(Request $request) {
        $validator = Validator::make($request->all(), [
            'image' => 'required|image64:jpeg,jpg,png'
        ]);
        if ($validator->fails()) {
            return response()->json(['errors'=>$validator->errors()]);
        } else {
            $imageData = $request->get('image');
            $fileName = time() . '.' . explode('/', explode(':', substr($imageData, 0, strpos($imageData, ';')))[1])[1];

            Image::make($request->get('image'))->save(public_path('uploads/avatars/').$fileName);

            $response = [
                'fileName' => $fileName
            ];

            return response()->json($response);
        }
        
    }
}
