<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');



class Student extends CI_Controller
{
    
    
    function __construct()
    {
        parent::__construct();
		$this->load->database();
        /*cache control*/
        $this->output->set_header('Last-Modified: ' . gmdate("D, d M Y H:i:s") . ' GMT');
        $this->output->set_header('Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0');
        $this->output->set_header('Pragma: no-cache');
        $this->output->set_header("Expires: Mon, 26 Jul 1997 05:00:00 GMT");
    }
    
    /***default functin, redirects to login page if no admin logged in yet***/
    public function index()
    {
        if ($this->session->userdata('student_login') != 1)
            redirect(base_url() . 'index.php?login', 'refresh');
        if ($this->session->userdata('student_login') == 1)
            redirect(base_url() . 'index.php?student/dashboard', 'refresh');
    }
    
    /***ADMIN DASHBOARD***/
    function dashboard()
    {
        if ($this->session->userdata('student_login') != 1)
            redirect(base_url(), 'refresh');
        $page_data['page_name']  = 'dashboard';
        $page_data['page_title'] = get_phrase('student_dashboard');
        $this->load->view('index', $page_data);
    }
    
    
    /****MANAGE TEACHERS*****/
    function teacher_list($param1 = '', $param2 = '', $param3 = '')
    {
        if ($this->session->userdata('student_login') != 1)
            redirect(base_url(), 'refresh');
        if ($param1 == 'personal_profile') {
            $page_data['personal_profile']   = true;
            $page_data['current_teacher_id'] = $param2;
        }
        $page_data['teachers']   = $this->db->get('teacher')->result_array();
        $page_data['page_name']  = 'teacher';
        $page_data['page_title'] = get_phrase('manage_teacher');
        $this->load->view('index', $page_data);
    }
    
    
    /***********************************************************************************************************/
    
    
    
    /****MANAGE SUBJECTS*****/
    function subject($param1 = '', $param2 = '')
    {
        if ($this->session->userdata('student_login') != 1)
            redirect(base_url(), 'refresh');
        
        $student_profile         = $this->db->get_where('student', array(
            'student_id' => $this->session->userdata('student_id')
        ))->row();
        $student_class_id        = $student_profile->class_id;
        $page_data['subjects']   = $this->db->get_where('subject', array(
            'class_id' => $student_class_id
        ))->result_array();
        $page_data['page_name']  = 'subject';
        $page_data['page_title'] = get_phrase('manage_subject');
        $this->load->view('index', $page_data);
    }
    
    
    
    /****MANAGE EXAM MARKS*****/
    function marks($exam_id = '', $class_id = '', $subject_id = '')
    {
        if ($this->session->userdata('student_login') != 1)
            redirect(base_url(), 'refresh');
        
        $student_profile       = $this->db->get_where('student', array(
            'student_id' => $this->session->userdata('student_id')
        ))->row();
        $page_data['class_id'] = $student_profile->class_id;
        
        if ($this->input->post('operation') == 'selection') {
            $page_data['exam_id']    = $this->input->post('exam_id');
            //$page_data['class_id']	=	$this->input->post('class_id');
            $page_data['subject_id'] = $this->input->post('subject_id');
            
            if ($page_data['exam_id'] > 0 && $page_data['class_id'] > 0 && $page_data['subject_id'] > 0) {
                redirect(base_url() . 'index.php?student/marks/' . $page_data['exam_id'] . '/' . $page_data['class_id'] . '/' . $page_data['subject_id'], 'refresh');
            } else {
                $this->session->set_flashdata('mark_message', 'Choose exam, class and subject');
                redirect(base_url() . 'index.php?student/marks/', 'refresh');
            }
        }
        $page_data['exam_id']    = $exam_id;
        //$page_data['class_id']	=	$class_id;
        $page_data['subject_id'] = $subject_id;
        
        $page_data['page_info'] = 'Exam marks';
        
        $page_data['page_name']  = 'marks';
        $page_data['page_title'] = get_phrase('manage_exam_marks');
        $this->load->view('index', $page_data);
    }
    
    
    /**********MANAGING CLASS ROUTINE******************/
    function class_routine($param1 = '', $param2 = '', $param3 = '')
    {
        if ($this->session->userdata('student_login') != 1)
            redirect(base_url(), 'refresh');
        
        $student_profile         = $this->db->get_where('student', array(
            'student_id' => $this->session->userdata('student_id')
        ))->row();
        $page_data['class_id']   = $student_profile->class_id;
        $page_data['page_name']  = 'class_routine';
        $page_data['page_title'] = get_phrase('manage_class_routine');
        $this->load->view('index', $page_data);
    }
    
   
    /**********MANAGE LIBRARY / BOOKS********************/
    function book($param1 = '', $param2 = '', $param3 = '')
    {
        if ($this->session->userdata('student_login') != 1)
            redirect('login', 'refresh');
        
        $page_data['books']      = $this->db->get('book')->result_array();
        $page_data['page_name']  = 'book';
        $page_data['page_title'] = get_phrase('manage_library_books');
        $this->load->view('index', $page_data);
        
    }
  
   
    
    /**********WATCH NOTICEBOARD AND EVENT ********************/
    function noticeboard($param1 = '', $param2 = '', $param3 = '')
    {
        if ($this->session->userdata('student_login') != 1)
            redirect('login', 'refresh');
        
        $page_data['notices']    = $this->db->get('noticeboard')->result_array();
        $page_data['page_name']  = 'noticeboard';
        $page_data['page_title'] = get_phrase('noticeboard');
        $this->load->view('index', $page_data);
        
    }
    
    /**********MANAGE DOCUMENT / home work FOR A SPECIFIC CLASS or ALL*******************/
    function document($do = '', $document_id = '')
    {
        if ($this->session->userdata('student_login') != 1)
            redirect('login', 'refresh');
        
        $page_data['page_name']  = 'manage_document';
        $page_data['page_title'] = get_phrase('manage_documents');
        $page_data['documents']  = $this->db->get('document')->result_array();
        $this->load->view('index', $page_data);
    }
    
    
    /******MANAGE OWN PROFILE AND CHANGE PASSWORD***/
    function manage_profile($param1 = '', $param2 = '', $param3 = '')
    {
        if ($this->session->userdata('student_login') != 1)
            redirect(base_url() . 'index.php?login', 'refresh');
        if ($param1 == 'update_profile_info') {
            $data['name']        = $this->input->post('name');
            $data['birthday']    = $this->input->post('birthday');
            $data['sex']         = $this->input->post('sex');
            $data['religion']    = $this->input->post('religion');
            $data['blood_group'] = $this->input->post('blood_group');
            $data['address']     = $this->input->post('address');
            $data['phone']       = $this->input->post('phone');
            $data['email']       = $this->input->post('email');
            
            $this->db->where('student_id', $this->session->userdata('student_id'));
            $this->db->update('student', $data);
            $this->session->set_flashdata('flash_message', get_phrase('account_updated'));
            redirect(base_url() . 'index.php?student/manage_profile/', 'refresh');
        }
        if ($param1 == 'change_password') {
            $data['password']             = $this->input->post('password');
            $data['new_password']         = $this->input->post('new_password');
            $data['confirm_new_password'] = $this->input->post('confirm_new_password');
            
            $current_password = $this->db->get_where('student', array(
                'student_id' => $this->session->userdata('student_id')
            ))->row()->password;
            if ($current_password == $data['password'] && $data['new_password'] == $data['confirm_new_password']) {
                $this->db->where('student_id', $this->session->userdata('student_id'));
                $this->db->update('student', array(
                    'password' => $data['new_password']
                ));
                $this->session->set_flashdata('flash_message', get_phrase('password_updated'));
            } else {
                $this->session->set_flashdata('flash_message', get_phrase('password_mismatch'));
            }
            redirect(base_url() . 'index.php?student/manage_profile/', 'refresh');
        }
        $page_data['page_name']  = 'manage_profile';
        $page_data['page_title'] = get_phrase('manage_profile');
        $page_data['edit_data']  = $this->db->get_where('student', array(
            'student_id' => $this->session->userdata('student_id')
        ))->result_array();
        $this->load->view('index', $page_data);
    }
}
