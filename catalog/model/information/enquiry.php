<?php
class ModelInformationEnquiry extends Model {
	public function addEnquiry($data) {
		$this->db->query("INSERT INTO " . DB_PREFIX . "enquiry SET custname = '" . $this->db->escape($data['name']) . "', email = '" . $this->db->escape($data['email']) . "',product_name = '" . $this->db->escape($data['pname']) . "', phone = '" . $this->db->escape($data['phone']) . "', quantity = '" . $this->db->escape($data['quantity']?$data['quantity']:'-NA-') . "', image_primary = '" . $this->db->escape($data['image1']) . "', image_secondary = '" . $this->db->escape($data['image2']) . "', enquiry = '" . $this->db->escape($data['enquiry']) . "'");

		$enquiry_id = $this->db->getLastId();

		return $enquiry_id;
	}
}
