<?php
/* 
Version: 1.0
Author: Felix Sułkowski
Website: http://halona.com
*/

class ModelSliderFullScreenBackgroundSlider extends Model {		
	public function getSlider($id) {
		$query = $this->db->query("SELECT * FROM ".DB_PREFIX."full_screen_background_slider WHERE id='".$id."'");
		if( count($query) ) {
			foreach($query->rows as $row) {
				$output = array(
					'id' => $row['id'],
					'settings' => unserialize($row['settings']),
					'content' => unserialize($row['content'])
				);
				return $output;
			}
		}
		return false;
	}

}
?>