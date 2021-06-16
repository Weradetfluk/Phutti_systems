<?php
defined('BASEPATH') or exit('No direct script access allowed');
/*
    * Da_timestamp
    *โมเดลสำหรับ insert Update Deleteเท่านั้น
    * @author Weradet Nopsombun 62160110
    * @update Date 2564-04-13
*/
include_once 'pht_model.php';
class Da_sub extends pht_model
{
    public $sub_id;
    public $sub_name;
    public $sub_limit;

    public function __construct()
    {
        parent::__construct();
    }

    

}
