<?php
class ControllerSaleEnquiry extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('sale/enquiry');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('sale/enquiry');

		$this->getList();
	}
			
	protected function getList() {

		if (isset($this->request->get['filter_customer'])) {
			$filter_customer = $this->request->get['filter_customer'];
		} else {
			$filter_customer = '';
		}
		
		if (isset($this->request->get['filter_email'])) {
			$filter_email = $this->request->get['filter_email'];
		} else {
			$filter_email = '';
		}

		if (isset($this->request->get['filter_date_added'])) {
			$filter_date_added = $this->request->get['filter_date_added'];
		} else {
			$filter_date_added = '';
		}

		if (isset($this->request->get['sort'])) {
			$sort = $this->request->get['sort'];
		} else {
			$sort = 'o.enquiry_id';
		}

		if (isset($this->request->get['enquiry'])) {
			$enquiry = $this->request->get['enquiry'];
		} else {
			$enquiry = 'DESC';
		}

		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}

		$url = '';

		if (isset($this->request->get['filter_customer'])) {
			$url .= '&filter_customer=' . urlencode(html_entity_decode($this->request->get['filter_customer'], ENT_QUOTES, 'UTF-8'));
		}

		if (isset($this->request->get['filter_email'])) {
			$url .= '&filter_email=' . $this->request->get['filter_email'];
		}

		if (isset($this->request->get['filter_date_added'])) {
			$url .= '&filter_date_added=' . $this->request->get['filter_date_added'];
		}

		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['enquiry'])) {
			$url .= '&enquiry=' . $this->request->get['enquiry'];
		}

		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'user_token=' . $this->session->data['user_token'], true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('sale/enquiry', 'user_token=' . $this->session->data['user_token'] . $url, true)
		);

		$data['enquirys'] = array();

		$filter_data = array(
			'filter_customer'	     => $filter_customer,
			'filter_email'    		 => $filter_email,
			'filter_date_added'      => $filter_date_added,
			'sort'                   => $sort,
			'enquiry'                => $enquiry,
			'start'                  => ($page - 1) * $this->config->get('config_limit_admin'),
			'limit'                  => $this->config->get('config_limit_admin')
		);

		$enquiry_total = $this->model_sale_enquiry->getTotalEnquirys($filter_data);

		$results = $this->model_sale_enquiry->getEnquirys($filter_data);

		foreach ($results as $result) {
			$data['orders'][] = array(
				'enquiry_id'      => $result['enquiry_id'],
				'customer'      => $result['custname'],
				'email'  => $result['email'],
				'phone'  => $result['phone'],
				'quantity'  => $result['quantity'],
				'image_primary'  => $result['image_primary']?HTTPS_CATALOG.'storage/upload/'.$result['image_primary']:'',
				'image_secondary'  => $result['image_secondary']?HTTPS_CATALOG.'storage/upload/'.$result['image_secondary']:'',
				'enquiry'  => $result['enquiry'],
				'date_added'    => date($this->language->get('date_format_short'), strtotime($result['date_added'])),
			);
		}

		$data['user_token'] = $this->session->data['user_token'];

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		if (isset($this->session->data['success'])) {
			$data['success'] = $this->session->data['success'];

			unset($this->session->data['success']);
		} else {
			$data['success'] = '';
		}
		

		$url = '';

		if (isset($this->request->get['filter_customer'])) {
			$url .= '&filter_customer=' . urlencode(html_entity_decode($this->request->get['filter_customer'], ENT_QUOTES, 'UTF-8'));
		}
			
		if (isset($this->request->get['filter_email'])) {
			$url .= '&filter_email=' . $this->request->get['filter_email'];
		}

		if (isset($this->request->get['filter_date_added'])) {
			$url .= '&filter_date_added=' . $this->request->get['filter_date_added'];
		}

		if ($enquiry == 'ASC') {
			$url .= '&enquiry_id=ASC';
		} else {
			$url .= '&enquiry_id=DESC';
		}

		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}

		$data['sort_customer'] = $this->url->link('sale/enquiry', 'user_token=' . $this->session->data['user_token'] . '&sort=customer' . $url, true);
		$data['sort_email'] = $this->url->link('sale/enquiry', 'user_token=' . $this->session->data['user_token'] . '&sort=email' . $url, true);
		$data['sort_date_added'] = $this->url->link('sale/enquiry', 'user_token=' . $this->session->data['user_token'] . '&sort=date_added' . $url, true);

		$url = '';

		if (isset($this->request->get['filter_customer'])) {
			$url .= '&filter_customer=' . urlencode(html_entity_decode($this->request->get['filter_customer'], ENT_QUOTES, 'UTF-8'));
		}

		if (isset($this->request->get['filter_email'])) {
			$url .= '&filter_email=' . $this->request->get['filter_email'];
		}

		if (isset($this->request->get['filter_date_added'])) {
			$url .= '&filter_date_added=' . $this->request->get['filter_date_added'];
		}

		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		$pagination = new Pagination();
		$pagination->total = $enquiry_total;
		$pagination->page = $page;
		$pagination->limit = $this->config->get('config_limit_admin');
		$pagination->url = $this->url->link('sale/enquiry', 'user_token=' . $this->session->data['user_token'] . $url . '&page={page}', true);

		$data['pagination'] = $pagination->render();

		$data['results'] = sprintf($this->language->get('text_pagination'), ($enquiry_total) ? (($page - 1) * $this->config->get('config_limit_admin')) + 1 : 0, ((($page - 1) * $this->config->get('config_limit_admin')) > ($enquiry_total - $this->config->get('config_limit_admin'))) ? $enquiry_total : ((($page - 1) * $this->config->get('config_limit_admin')) + $this->config->get('config_limit_admin')), $enquiry_total, ceil($enquiry_total / $this->config->get('config_limit_admin')));

		$data['filter_customer'] = $filter_customer;
		$data['filter_email'] = $filter_email;
		$data['filter_date_added'] = $filter_date_added;

		$data['sort'] = $sort;
		$data['enquiry'] = $enquiry;

		// API login
		$data['catalog'] = $this->request->server['HTTPS'] ? HTTPS_CATALOG : HTTP_CATALOG;

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('sale/enquiry_list', $data));
	}
}
