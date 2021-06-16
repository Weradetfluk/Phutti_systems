<?php

defined('BASEPATH') or exit('No direct script access allowed');
class pht_model extends CI_Model
{
   
    public $db;
    public $db_name;

    public function __construct(){
        $this->db = $this->load->database('default',true);
        $this->db_name = $this->db->database;
    }
}


