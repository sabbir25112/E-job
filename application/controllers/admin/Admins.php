<?php

class Admins extends MY_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('admin/Admin_model', 'admin_model');
        $this->load->library('datatable'); // loaded my custom serverside datatable library
    }

    //-------------------------------------------------------
    public function index()
    {
        $data['view'] = 'admin/admin/admin_list';
        $this->load->view('admin/layout', $data);
    }

    public function add()
    {
        if($this->input->post('submit')){
            $this->form_validation->set_rules('firstname', 'Firstname', 'trim|required');
            $this->form_validation->set_rules('lastname', 'Lastname', 'trim|required');
            $this->form_validation->set_rules('email', 'Email', 'trim|valid_email|required');
            $this->form_validation->set_rules('mobile_no', 'Number', 'trim|required');
            $this->form_validation->set_rules('password', 'Password', 'trim|required');

            if ($this->form_validation->run() == FALSE) {
                $data['view'] = 'admin/admin/admin_add';
                $this->load->view('admin/layout', $data);
            }
            else{
                $data = array(
                    'firstname' => $this->input->post('firstname'),
                    'lastname' => $this->input->post('lastname'),
                    'email' => $this->input->post('email'),
                    'mobile_no' => $this->input->post('mobile_no'),
                    'password' =>  password_hash($this->input->post('password'), PASSWORD_BCRYPT),
                    'created_at' => date('Y-m-d : h:m:s'),
                    'updated_at' => date('Y-m-d : h:m:s'),
                );
                $data = $this->security->xss_clean($data);
                $result = $this->admin_model->add_user($data);
                if($result){
                    $this->session->set_flashdata('msg', 'Admin has been added successfully!');
                    redirect(base_url('admin/admins'));
                }
            }
        }
        else{
            $data['view'] = 'admin/admin/admin_add';
            $this->load->view('admin/layout', $data);
        }
    }

    public function edit($id = 0)
    {
        if($this->input->post('submit')){
            $this->form_validation->set_rules('firstname', 'Username', 'trim|required');
            $this->form_validation->set_rules('lastname', 'Lastname', 'trim|required');
            $this->form_validation->set_rules('email', 'Email', 'trim|valid_email|required');
            $this->form_validation->set_rules('mobile_no', 'Number', 'trim|required');
            $this->form_validation->set_rules('status', 'Status', 'trim|required');

            if ($this->form_validation->run() == FALSE) {
                $data['user'] = $this->admin_model->get_user_by_id($id);
                $data['view'] = 'admin/admins/admin_edit';
                $this->load->view('admin/layout', $data);
            }
            else{
                $data = array(
                    'firstname' => $this->input->post('firstname'),
                    'lastname' => $this->input->post('lastname'),
                    'email' => $this->input->post('email'),
                    'mobile_no' => $this->input->post('mobile_no'),
                    'password' =>  password_hash($this->input->post('password'), PASSWORD_BCRYPT),
                    'is_active' => $this->input->post('status'),
                    'address'   => $this->input->post('address'),
                );
                $data = $this->security->xss_clean($data);
                $result = $this->admin_model->edit_user($data, $id);
                if($result){
                    $this->session->set_flashdata('msg', 'Admin has been updated successfully!');
                    redirect(base_url('admin/admins'));
                }
            }
        }
        else{
            $data['user'] = $this->admin_model->get_user_by_id($id);
            $data['view'] = 'admin/admin/admin_edit';
            $this->load->view('admin/layout', $data);
        }
    }

    public function datatable_json()
    {
        $records = $this->admin_model->get_all_admins();
        $data = array();
        foreach ($records['data']  as $row)
        {
            $status = ($row['is_active'] == 0)? 'Deactive': 'Active'.'<span>';
            $data[]= array(
                $username = $row['firstname'].' '.$row['lastname'],
                $row['email'],
                $row['mobile_no'],
                $row['address'],
                '<span class="btn btn-success btn-flat btn-xs" title="status">'.$status.'<span>',
                '<a title="Delete" class="delete btn btn-sm btn-danger pull-right" data-href="'.base_url('admin/admins/del/'.$row['id']).'" data-toggle="modal" data-target="#confirm-delete"> <i class="fa fa-trash-o"></i></a>
				<a title="Edit" class="update btn btn-sm btn-primary pull-right" href="'.base_url('admin/admins/edit/'.$row['id']).'"> <i class="fa fa-pencil-square-o"></i></a>
				<a title="View" class="view btn btn-sm btn-info pull-right" href="'.base_url('admin/admins/edit/'.$row['id']).'"> <i class="fa fa-eye"></i></a>'
            );
        }
        $records['data']=$data;
        echo json_encode($records);
    }
}