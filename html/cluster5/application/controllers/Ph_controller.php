<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Ph_controller extends CI_Controller {
    /*
    * @author Weradet Nopsombun 62160110
    */
	public function __construct()
    {
		parent::__construct();
    } 

	 public function index()
    {
      $this->load->view('templete/header');
      $this->load->view('templete/javascript');
      $this->load->view('firstpage/first_page');
      $this->load->view('templete/footer');
    }

    public function output($view, $data=null){
      $this->load->view('templete/header');
      $this->load->view('templete/javascript');
      $this->load->view($view,$data);
      $this->load->view('templete/footer');
    }
}

