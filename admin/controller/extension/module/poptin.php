<?php
class ControllerExtensionModulePoptin extends Controller {

	private $error = array();
	public function getPoptinFormValues()
    {
        return array(
            'poptin_USER_ID' => $this->model_setting_setting->getSettingValue('poptin_USER_ID', $this->request->get['store_id']) ,
            'poptin_CLIENT_ID' => $this->model_setting_setting->getSettingValue('poptin_CLIENT_ID', $this->request->get['store_id']),
            'poptin_TOKEN' => $this->model_setting_setting->getSettingValue('poptin_TOKEN', $this->request->get['store_id']),
            'poptin_LOGIN_URL' => $this->model_setting_setting->getSettingValue('poptin_LOGIN_URL', $this->request->get['store_id']),
            'poptin_ACCOUNT_EMAIL' => $this->model_setting_setting->getSettingValue('poptin_ACCOUNT_EMAIL', $this->request->get['store_id']),
            'poptin_REGISTRATION_DATE' => $this->model_setting_setting->getSettingValue('poptin_REGISTRATION_DATE', $this->request->get['store_id']),
        );
    }
	public function index() {
		$this->load->model('setting/setting');
		$this->load->language('extension/module/poptin');
		if(isset($_GET['ajax'])){
			$this->postprocess();
		}
		if(!isset($this->request->get['store_id'])){
			$this->request->get['store_id']=0;
		}if(!isset($this->session->data['user_token'])){
			$this->session->data['user_token']=$this->session->data['token'];
		}
		
		$this->document->addStyle('view/stylesheet/poptin.css?time='.time());
		$this->document->addScript('view/javascript/sweetalert.min.js?time='.time());
		$this->document->setTitle($this->language->get('heading_title'));
		
		
		
		if (($this->request->server['REQUEST_METHOD'] == 'POST')) {
			$this->model_setting_setting->editSetting('poptin', $this->request->post, $this->request->get['store_id']);

			$this->session->data['success'] = $this->language->get('text_success');

			$this->response->redirect($this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&token='.$this->session->data['user_token'].'&type=poptin', true));
		}
		
		$module_ajax_path="index.php?route=extension/module/poptin&ajax=1&user_token=".$this->session->data['user_token'].'&token='.$this->session->data['user_token'].'&store_id='.$this->request->get['store_id'];
		$data['module_ajax']=$module_ajax_path;
		$data['poptin_values']=$this->getPoptinFormValues();
		$data['module_img_dir']="view/image/poptin/";
		
		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		if (isset($this->error['code'])) {
			$data['error_code'] = $this->error['code'];
		} else {
			$data['error_code'] = '';
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'user_token=' . $this->session->data['user_token'], true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_extension'),
			'href' => $this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=poptin', true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('extension/poptin/main', 'user_token=' . $this->session->data['user_token'] . '&store_id=' . $this->request->get['store_id'], true)
		);

		$data['action'] = $this->url->link('extension/module/poptin', 'user_token=' . $this->session->data['user_token'] . '&store_id=' . $this->request->get['store_id'], true);

		$data['cancel'] = $this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=poptin', true);
		
		$data['user_token'] = $this->session->data['user_token'];
				
		if (isset($this->request->post['poptin_code'])) {
			$data['poptin_code'] = $this->request->post['poptin_code'];
		} else {
			$data['poptin_code'] = $this->model_setting_setting->getSettingValue('poptin_code', $this->request->get['store_id']);
		}
		
		if (isset($this->request->post['poptin_status'])) {
			$data['poptin_status'] = $this->request->post['poptin_status'];
		} else {
			$data['poptin_status'] = $this->model_setting_setting->getSettingValue('poptin_status', $this->request->get['store_id']);
		}
		
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('extension/module/poptin', $data));
	}

	
	public function postprocess(){
		$permission_msg="you don't have permission to access.";
		$api_url="https://app.popt.in/api/marketplace/";
		$marketplace='opencart3';
		$return_data = array();
		
		/* Save Client ID */
		if (isset($_REQUEST['type']) || isset($_REQUEST['poptin_logmein'])) {
			if (isset($_POST['type']) && $_POST['type'] == 'save_poptin') {
				$pop_up_id = $_POST['pop_up_id'];
				$data['poptin_USER_ID']="";
				$data['poptin_CLIENT_ID']=$pop_up_id;
				$data['poptin_TOKEN']="";
				$data['poptin_LOGIN_URL']="";
				$data['poptin_ACCOUNT_EMAIL']="";
				$data['poptin_REGISTRATION_DATE']="";
				$this->model_setting_setting->editSetting('poptin', $data, $this->request->get['store_id']);
				/* $this->session->data['success'] = $this->language->get('text_success'); */
				$return_data['status'] = 1;
				$return_data['user_id'] = $pop_up_id;
				echo json_encode($return_data);
				die();
			}
			/* Remove Client ID */
			if (isset($_POST['type']) && $_POST['type'] == 'remove') {
				$data['poptin_USER_ID']="";
				$data['poptin_CLIENT_ID']="";
				$data['poptin_TOKEN']="";
				$data['poptin_LOGIN_URL']="";
				$data['poptin_ACCOUNT_EMAIL']="";
				$data['poptin_REGISTRATION_DATE']="";
				$this->model_setting_setting->editSetting('poptin', $data, $this->request->get['store_id']);
				$return_data['status'] = 1;
				echo json_encode($return_data);
				die();
			} 
			/* Authenticate Client ID */
			if (isset($_REQUEST['poptin_logmein']) && $_REQUEST['poptin_logmein'] == true) {
				
				$poptin_USER_ID = $this->model_setting_setting->getSettingValue('poptin_USER_ID', $this->request->get['store_id']);
				$poptin_TOKEN = $this->model_setting_setting->getSettingValue('poptin_TOKEN', $this->request->get['store_id']);
				if (empty($poptin_USER_ID)) {
					die($permission_msg);
				}
				$url = $api_url."auth";
				$dataurl = "token=" . $poptin_TOKEN . "&user_id=" . $poptin_USER_ID;
			}
			/* Register Client ID */
			if (isset($_POST['type']) && $_POST['type']  == 'register') {
				$email = $_POST['email'];
				$dataurl = "email=" . $email. "&marketplace=" . $marketplace;
				$url = $api_url."register";
			}
			$curl = curl_init();
			curl_setopt_array($curl, array(CURLOPT_URL => $url, CURLOPT_RETURNTRANSFER => true, CURLOPT_ENCODING => "", CURLOPT_MAXREDIRS => 10, CURLOPT_TIMEOUT => 30, CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1, CURLOPT_CUSTOMREQUEST => "POST", CURLOPT_POSTFIELDS => $dataurl, CURLOPT_HTTPHEADER => array("cache-control: no-cache", "content-type: application/x-www-form-urlencoded", "postman-token: 16ba048a-499c-06c8-517c-cea2abb11945"),));
			$response = curl_exec($curl);
			$err = curl_error($curl);
			curl_close($curl);
			if ($err) {
				echo "cURL Error #:" . $err;
			} else {
				/*  ...process $output now */
				$result = json_decode($response);
				if (isset($_POST['type']) && $_POST['type'] == 'register') {
					if (isset($result->success) && ($result->success == '1')) {
						/* Return Data */
						$return_data['status'] = 1;
						$return_data['user_id'] = $result->user_id;
						$return_data['client_id'] = $result->client_id;
						$return_data['token'] = $result->token;
						$return_data['login_url'] = $result->login_url;
						$return_data['email'] = $email;
						/* Update Response */
						$data['poptin_USER_ID']=$result->user_id;
						$data['poptin_CLIENT_ID']=$result->client_id;
						$data['poptin_TOKEN']=$result->token;
						$data['poptin_LOGIN_URL']=$result->login_url;
						$data['poptin_ACCOUNT_EMAIL']=$email;
						$data['poptin_REGISTRATION_DATE']=date('m/d/Y h:i:s a', time());
						$this->model_setting_setting->editSetting('poptin', $data, $this->request->get['store_id']);
					} else {
						$return_data['status'] = 0;
						$return_data['message'] = $result->message;
					}
					echo json_encode($return_data);
				}
				if (isset($_REQUEST['poptin_logmein']) && $_REQUEST['poptin_logmein'] == true) {
					if (isset($result->success) && ($result->success == '1')) {
						/* Return Data */
						$return_data['status'] = 1;
						$return_data['token'] = $result->token;
						$return_data['login_url'] = $result->login_url;
					
						/* Update Response */
						/* $data['poptin_TOKEN']=$result->token;
						$data['poptin_LOGIN_URL']=$result->login_url;
						$data['poptin_USER_ID'] = $this->model_setting_setting->getSettingValue('poptin_USER_ID', $this->request->get['store_id']);
						$data['poptin_CLIENT_ID'] = $this->model_setting_setting->getSettingValue('poptin_CLIENT_ID', $this->request->get['store_id']);
						$this->model_setting_setting->editSetting('poptin', $data, $this->request->get['store_id']); */
						if (isset($_REQUEST['utm_source'])) {
							$final_url=$result->login_url."&utm_source=opencart3";
						} else {
							$final_url=$result->login_url;
						}
						header("location:".$final_url);die($final_url);
					} else {
						$return_data['status'] = 0;
						$return_data['message'] = $result->message;
						echo json_encode($return_data);
					}
				}
			}
		} else {
			die($permission_msg);
		}
		die;
	}
	protected function validate() {
		if (!$this->user->hasPermission('modify', 'extension/module/poptin')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		return !$this->error;
	}
}