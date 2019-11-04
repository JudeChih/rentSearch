<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Helper\DataViewer;

class Project extends Model
{

    public static $columns = [
        'id','pd_num', 'pd_id', 'date', 'tpl', 'code', 'caseName', 'designer', 'editor', 'RD', 'link', 'avatar'
    ];


    protected $fillable = [
        'id',
        'pd_num',
        'pd_id',
        'date',
        'tpl',
        'code',
        'password',
        'caseName',
        'designer',
        'editor',
        'rd',
        'link',
        'filename',
        'ver',
        'remark',
    ];
}
