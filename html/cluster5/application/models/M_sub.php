<?php
defined('BASEPATH') or exit('No direct script access allowed');
include_once 'Da_sub.php';
class M_sub extends Da_sub
{
    public function __construct()
    {
        parent::__construct();
    }

    public function show_sub_all(){
        
        $sql = "SELECT * FROM `pht_sub` LEFT JOIN pht_teacher ON pht_sub.sub_id = pht_teacher.sub_id;";

        $query = $this->db->query($sql);


        return $query;

    }

    

}
