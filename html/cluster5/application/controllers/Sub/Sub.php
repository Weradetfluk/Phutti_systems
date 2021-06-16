<?php
defined('BASEPATH') OR exit('No direct script access allowed');
require dirname(__FILE__) . '/../Ph_controller.php';
class Sub extends Ph_controller {

	public function __construct()
    {
		parent::__construct();
    } 
    public function show_sub_data(){
       
      $this->load->model('M_sub','msub');
      $data = array();
      $data = $this->msub->show_sub_all();

      $this->output('regis_sub/regis_sub',$data);

    }
    public function check_systens_status(){
      
    }

}
