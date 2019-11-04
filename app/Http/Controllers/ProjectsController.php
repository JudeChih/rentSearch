<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;

use App\Wms_Project;
use App\Project;
use Image;

use Illuminate\Support\Facades\Session;

class ProjectsController extends Controller
{
    // public function __construct()
    // {
    //     $this->middleware('auth');
    // }
    public function index(Request $request)
    {
       
        $search = $request->search;

        $items = Project::Where('date', 'LIKE', '%'.$search.'%')
        ->orWhere('tpl', 'LIKE', '%'.$search.'%')
        ->orWhere('pd_id', 'LIKE', '%'.$search.'%')
        ->orWhere('code', 'LIKE', '%'.$search.'%')
        ->orWhere('caseName', 'LIKE', '%'.$search.'%')
        ->orWhere('designer', 'LIKE', '%'.$search.'%')
        ->orWhere('editor', 'LIKE', '%'.$search.'%')
        ->orWhere('rd', 'LIKE', '%'.$search.'%')
        ->orWhere('link', 'LIKE', '%'.$search.'%')
        ->orWhere('remark', 'LIKE', '%'.$search.'%')
        ->orderBy('date', 'desc')
        ->paginate(10);

        $template = Wms_Project::where('isflag',1)->select('pd_id','pd_num','pd_rwd')->get();

        // \App\Library\CommonTools::writeErrorLogByMessage(json_encode($template));
        if(count($template) > 0){
            $arraydata['pd_id'] = 0;
            $arraydata['pd_num'] = '解除綁定版型';
            $arraydata['pd_rwd'] = 0;
            // array_unshift($template,$arraydata);
            $json_array[0] = $arraydata;
            foreach($template as $val){
                array_push($json_array,$val);
            }
        }



        $response = [
            'pagination' => [
                'total' => $items->total(),
                'per_page' => $items->perPage(),
                'current_page' => $items->currentPage(),
                'last_page' => $items->lastPage(),
                'from' => $items->firstItem(),
                'to' => $items->lastItem(),
            ],
            'data' => $items,
            'template' => $json_array
        ];

        


        // echo $response;

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
            // "date" => 'required',
            // "tpl" => 'required',
            "caseName" => 'required',
            // "designer" => 'required',
            // "editor" => 'required',
            // "rd" => 'required',
            // "link" => 'required',
            // "ver" => 'required',
            // "remark" => 'required',
        ]); 

        // And then redirect to the home page.
        $create = Project::create($request->all());
        
        // return back();
        return response()->json($create);
        // return ['message' => 'Project Created!'];
    }

    public function delete($id){

        Project::where('id', $id)->delete();
        return back();
        // return response()->json(['done']);

    }
    public function edit($id)
    {
        $project = Project::find($id);
        return view('project.edit',compact('project'));
    }


    public function update(Request $request, $id)
    {
        $arraydata = $request->all();
        if($arraydata['pd_id']){
            $data = Wms_Project::where('pd_id',$arraydata['pd_id'])->get();
            $data = $data[0];
            $arraydata['pd_num'] = $data['pd_num'];
            
        }
        if($arraydata['pd_id'] == 0){
            $arraydata['pd_id'] = null;
            $arraydata['pd_num'] = null;
        }
        
        $Project = new Project;
        $this->validate($request, [
            // "date" => 'required',
            // "tpl" => 'required',
            "caseName" => 'required',
            // "designer" => 'required',
            // "editor" => 'required',
            // "rd" => 'required',
            // "link" => 'required',
            // "ver" => 'required',
            // "remark" => 'required',
        ]); 

        $edit = Project::find($id)->update($arraydata);
        return response()->json($edit);
        // return ['message' => 'Project Update!'];
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

    public function destroy($id)
    {
        $file = Project::findOrFail($id);
        $path = public_path('uploads/avatars/');
        if (!(empty($file->filename))){
            unlink($path . $file->filename);
        }
        $file -> delete();
    }

}
