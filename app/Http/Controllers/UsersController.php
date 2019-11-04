<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;

use App\Project;
use Image;

use Illuminate\Support\Facades\Session;

class UsersController extends Controller
{

    public function index(Request $request)
    {
       
        $search = $request->search;

        $items = Project::Where('date', 'LIKE', '%'.$search.'%')
        ->orWhere('tpl', 'LIKE', '%'.$search.'%')
        ->orWhere('code', 'LIKE', '%'.$search.'%')
        ->orWhere('caseName', 'LIKE', '%'.$search.'%')
        ->orWhere('designer', 'LIKE', '%'.$search.'%')
        ->orWhere('editor', 'LIKE', '%'.$search.'%')
        ->orWhere('rd', 'LIKE', '%'.$search.'%')
        ->orWhere('link', 'LIKE', '%'.$search.'%')
        ->orderBy('date', 'desc')
        ->paginate(10);

        $response = [
            'pagination' => [
                'total' => $items->total(),
                'per_page' => $items->perPage(),
                'current_page' => $items->currentPage(),
                'last_page' => $items->lastPage(),
                'from' => $items->firstItem(),
                'to' => $items->lastItem(),
            ],
            'data' => $items
        ];
        return response()->json($response);
    }

    
    public function collect()
    {
        return view('projects.collect', [
            'projects' => Project::all()
        ]);
    }

    public function store(Request $request)
    {

        // Create a new Project using the request data
        $Project = new Project;

        // app/HTTP/Project.php > app/HTTP/Model.php
        // Project::create($request->all());
       

    

        $this->validate($request, [
            "date" => 'required',
            "code" => 'required',
            "tpl" => 'required',
            "caseName" => 'required',
            "designer" => 'required',
            "editor" => 'required',
            "rd" => 'required',
            "link" => 'required',
            "ver" => 'required',
            "remark" => 'required',
        ]); 

        // And then redirect to the home page.
        $create = Project::create($request->all());
        
        // return back();
        return response()->json($create);
        // return ['message' => 'Project Created!'];
    }


    public function getData()
    {
        $items = Project::searchPaginateAndOrder();
        $columns = Project::$columns;

        return response()
            ->json([
                'items' => $items,
                'columns' => $columns,
            ]);
    }
}
