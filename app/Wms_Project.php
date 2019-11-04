<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Helper\DataViewer;

class Wms_Project extends Model
{

    protected $connection = 'mysql_wms';
    /**
     * 資料表名稱
     * @var string
     */
    protected $table = 'wms_projectdata';

    /**
     * 主鍵值
     * @var string
     */
    protected $primaryKey = 'pd_id';

    /**
     * 是否自動遞增
     * @var string
     */
    public $incrementing = true;

    /**
     * 是否自動插入現在時間
     *
     * @var bool
     */
    public $timestamps = false;

}
