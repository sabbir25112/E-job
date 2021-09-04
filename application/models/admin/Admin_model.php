<?php
	class Admin_model extends CI_Model{

		//--------------------------------------------------------------------
		public function get_user_detail(){
			$id = $this->session->userdata('admin_id');
			$query = $this->db->get_where('xx_admin', array('id' => $id));
			return $result = $query->row_array();
		}
		//--------------------------------------------------------------------
		public function update_user($data){
			$id = $this->session->userdata('admin_id');
			$this->db->where('id', $id);
			$this->db->update('xx_admin', $data);
			return true;
		}
		//--------------------------------------------------------------------
		public function change_pwd($data, $id){
			$this->db->where('id', $id);
			$this->db->update('xx_admin', $data);
			return true;
		}

        public function get_all_admins(){
            $wh =array();
            $SQL ='SELECT * FROM xx_admin';
            $wh[] = "";
            if(count($wh)>0)
            {
                $WHERE = implode(' and ',$wh);
                return $this->datatable->LoadJson($SQL,$WHERE);
            }
            else
            {
                return $this->datatable->LoadJson($SQL);
            }
        }

        public function get_user_by_id($id){
            $query = $this->db->get_where('xx_admin', array('id' => $id));
            return $result = $query->row_array();
        }

        public function edit_user($data, $id){
            $this->db->where('id', $id);
            $this->db->update('xx_admin', $data);
            return true;
        }

        public function add_user($data){
            $this->db->insert('xx_admin', $data);
            return true;
        }

	}

?>