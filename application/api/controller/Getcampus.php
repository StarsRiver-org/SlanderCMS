<?php
/**
 *      [Starsriver] (C)2014-2099.
 *      This is NOT a freeware, follows Apache2.0 licence
 *
 *      Author: 张宇
 *      Email:  starsriver@yahoo.com
 *      CreateDate:   2018-08-12
 *
 */

namespace app\api\controller;

use think\Controller;
use think\Db;
use app\common\Ip;
use app\common\Qhelp;

class Getcampus extends Controller {

    public function main() {
        return htmlspecialchars_decode(Db::query("select * from slender_config where name = 'campus'")[0]['data'], ENT_QUOTES);
    }
}