<?php
defined('BASEPATH') OR exit('No direct script access allowed');
require dirname(__FILE__) . '/../Ph_controller.php';
class Sub extends Ph_controller {

	public function __construct()
    {
		parent::__construct();
    } 
    public function show_sub_data(){
       
      $this->output('regis_sub/regis_sub');

    }
    public function check_systems_status(){
      
    }

    public  function show_sub_data_ajax(){
            
      $this->load->model('M_sub','msub');
      $data =array(); 
      $data['arr_sub'] = $this->msub->show_sub_all()->result();

      echo json_encode( $data['arr_sub']);
    }

}
