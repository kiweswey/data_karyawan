<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Karyawan extends CI_Controller {
    public function __construct()
    {
        parent::__construct();
        $this->load->model("Karyawan_model"); //load model mahasiswa
    }

    //method pertama yang akan di eksekusi
    public function index()
    {
   
        $data["title"] = "List Data Karyawan";
        //ambil fungsi getAll untuk menampilkan semua data mahasiswa
        $data["data_karyawan"] = $this->Karyawan_model->getAll();
        //load view header.php pada folder views/templates
        $this->load->view('templates/header', $data);
        $this->load->view('templates/menu');
        //load view index.php pada folder views/mahasiswa
        $this->load->view('karyawan/index', $data);
        $this->load->view('templates/footer');
    }

    //method add digunakan untuk menampilkan form tambah data mahasiswa
    public function add()
    {
        $Karyawan = $this->Karyawan_model; //objek model
        $validation = $this->form_validation; //objek form validation
        $validation->set_rules($Karyawan->rules()); //menerapkan rules validasi pada mahasiswa_model
        //kondisi jika semua kolom telah divalidasi, maka akan menjalankan method save pada mahasiswa_model
        if ($validation->run()) {
            $Karyawan->save();
            $this->session->set_flashdata('message', '<div class="alert alert-success alert-dismissible fade show" role="alert">
            Data Karyawan berhasil disimpan. 
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button></div>');
            redirect("karyawan");
        }
        $data["title"] = " Data Karyawan";
        $this->load->view('templates/header', $data);
        $this->load->view('templates/menu');
        $this->load->view('karyawan/add', $data);
        $this->load->view('templates/footer');
    }

    public function edit($id = null)
    {
        if (!isset($id)) redirect('karyawan');

        $Karyawan = $this->Karyawan_model;
        $validation = $this->form_validation;
        $validation->set_rules($Karyawan->rules());

        if ($validation->run()) {
            $Karyawan->update();
            $this->session->set_flashdata('message', '<div class="alert alert-success alert-dismissible fade show" role="alert">
            Data Mahasiswa berhasil disimpan.
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button></div>');
            redirect("karyawan");
        }
        $data["title"] = "Edit Data Karyawan";
        $data["data_karyawan"] = $Karyawan->getById($id);
        if (!$data["data_karyawan"]) show_404();
        $this->load->view('templates/header', $data);
        $this->load->view('templates/menu');
        $this->load->view('karyawan/edit', $data);
        $this->load->view('templates/footer');
    }

    public function delete()
    {
        $id = $this->input->get('id');
        if (!isset($id)) show_404();
        $this->Karyawan_model->delete($id);
        $msg['success'] = true;
        $this->session->set_flashdata('message', '<div class="alert alert-success alert-dismissible fade show" role="alert">
        Data Karyawan berhasil dihapus.
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button></div>');
        $this->output->set_output(json_encode($msg));
   
    }

    public function logout() {
        // Hapus data session
        $this->session->unset_userdata('logged_in');
        // Arahkan kembali ke halaman login atau halaman utama
        redirect('login');
    }
}