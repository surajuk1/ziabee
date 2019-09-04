<?php
/* 
Version: 1.0
Author: Felix Sułkowski
Website: http://halona.com
*/

class ModelNewsletterNewsletter extends Model {		
    public function isSubscribed($email) {    
        $query = $this->db->query("SELECT customer_id FROM " . DB_PREFIX . "customer WHERE email = '" . $email . "' AND newsletter = '1'");
        if ($query->num_rows > 0) return true;
        
        $query = $this->db->query("SELECT email FROM " . DB_PREFIX . "newsletter WHERE email = '" . $email . "'");
        if ($query->num_rows > 0) return true;

        return false;
    }
    
	public function subscribe($email) {
	    $query = $this->db->query("SELECT customer_id FROM " . DB_PREFIX . "customer WHERE email = '" . $email . "'");
	    if ($query->num_rows > 0) {
	        $this->db->query("UPDATE " . DB_PREFIX . "customer SET newsletter = '1' WHERE customer_id = '" . (int)$query->row['customer_id'] . "'");
	    } else {
	        $this->db->query("INSERT INTO " . DB_PREFIX . "newsletter (email) VALUES ('" . $email . "')");
	    }
	}
	
	public function unsubscribe($email) {
	    $this->db->query("UPDATE " . DB_PREFIX . "customer SET newsletter = 0 WHERE email = '" . $email . "'");
	    $this->db->query("DELETE FROM " . DB_PREFIX . "newsletter WHERE email = '" . $email . "'");
	}
}