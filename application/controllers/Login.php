<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

    public function __construct() {
        parent::__construct();
    }

    public function index() {
        $this->load->view('login');
    }

    public function process() {
        $username = $this->input->post('username');
        $password = $this->input->post('password');

        // Lakukan validasi login disini
        // Contoh:
        if ($username == 'admin' && $password == 'admin123') {
            $this->session->set_userdata('logged_in', true);
            redirect('karyawan');
        } else {
            $this->session->set_flashdata('error', 'Username atau password salah');
            redirect('login');
        }
    }

    public function logout() {
        $this->session->unset_userdata('logged_in');
        redirect('login');
    }
}
