<?php
class ModelCatalogCategory extends Model {
	public function addCategory($data) {
		$this->db->query("INSERT INTO " . DB_PREFIX . "category SET parent_id = '" . (int)$data['parent_id'] . "',`is_banner` = '" . (isset($data['isbanner']) ? (int)$data['isbanner'] : 0) . "', `top` = '" . (isset($data['top']) ? (int)$data['top'] : 0) . "', `column` = '" . (int)$data['column'] . "', sort_order = '" . (int)$data['sort_order'] . "', status = '" . (int)$data['status'] . "', date_modified = NOW(), date_added = NOW()");

		$category_id = $this->db->getLastId();

		if (isset($data['image'])) {
			$this->db->query("UPDATE " . DB_PREFIX . "category SET image = '" . $this->db->escape($data['image']) . "' WHERE category_id = '" . (int)$category_id . "'");
		}

		if (isset($data['hiddenbanner'])) {
			$this->db->query("UPDATE " . DB_PREFIX . "category SET banner_image = '" . $this->db->escape($data['hiddenbanner']) . "' WHERE category_id = '" . (int)$category_id . "'");
		}

		foreach ($data['category_description'] as $language_id => $value) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "category_description SET category_id = '" . (int)$category_id . "', language_id = '" . (int)$language_id . "', name = '" . $this->db->escape($value['name']) . "', description = '" . $this->db->escape($value['description']) . "', meta_title = '" . $this->db->escape($value['meta_title']) . "', meta_description = '" . $this->db->escape($value['meta_description']) . "', meta_keyword = '" . $this->db->escape($value['meta_keyword']) . "'");
		}

		// MySQL Hierarchical Data Closure Table Pattern
		$level = 0;

		$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "category_path` WHERE category_id = '" . (int)$data['parent_id'] . "' ORDER BY `level` ASC");

		foreach ($query->rows as $result) {
			$this->db->query("INSERT INTO `" . DB_PREFIX . "category_path` SET `category_id` = '" . (int)$category_id . "', `path_id` = '" . (int)$result['path_id'] . "', `level` = '" . (int)$level . "'");

			$level++;
		}

		$this->db->query("INSERT INTO `" . DB_PREFIX . "category_path` SET `category_id` = '" . (int)$category_id . "', `path_id` = '" . (int)$category_id . "', `level` = '" . (int)$level . "'");

		if (isset($data['category_filter'])) {
			foreach ($data['category_filter'] as $filter_id) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "category_filter SET category_id = '" . (int)$category_id . "', filter_id = '" . (int)$filter_id . "'");
			}
		}

		if (isset($data['category_store'])) {
			foreach ($data['category_store'] as $store_id) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "category_to_store SET category_id = '" . (int)$category_id . "', store_id = '" . (int)$store_id . "'");
			}
		}

		if (isset($data['category_image'])) {
			foreach ($data['category_image'] as $category_image) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "category_image SET category_id = '" . (int)$category_id . "', image = '" . $this->db->escape($category_image['image']) . "', sort_order = '" . (int)$category_image['sort_order'] . "'");
			}
		}
		
		if (isset($data['category_seo_url'])) {
			foreach ($data['category_seo_url'] as $store_id => $language) {
				foreach ($language as $language_id => $keyword) {
					if (!empty($keyword)) {
						$this->db->query("INSERT INTO " . DB_PREFIX . "seo_url SET store_id = '" . (int)$store_id . "', language_id = '" . (int)$language_id . "', query = 'category_id=" . (int)$category_id . "', keyword = '" . $this->db->escape($keyword) . "'");
					}
				}
			}
		}
		
		// Set which layout to use with this category
		if (isset($data['category_layout'])) {
			foreach ($data['category_layout'] as $store_id => $layout_id) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "category_to_layout SET category_id = '" . (int)$category_id . "', store_id = '" . (int)$store_id . "', layout_id = '" . (int)$layout_id . "'");
			}
		}

		$this->cache->delete('category');

		return $category_id;
	}

	public function editCategory($category_id, $data) {
		$this->db->query("UPDATE " . DB_PREFIX . "category SET parent_id = '" . (int)$data['parent_id'] . "',`is_banner` = '" . (isset($data['isbanner']) ? (int)$data['isbanner'] : 0) . "',`top` = '" . (isset($data['top']) ? (int)$data['top'] : 0) . "', `column` = '" . (int)$data['column'] . "', sort_order = '" . (int)$data['sort_order'] . "', status = '" . (int)$data['status'] . "', date_modified = NOW() WHERE category_id = '" . (int)$category_id . "'");

		if (isset($data['image'])) {
			$this->db->query("UPDATE " . DB_PREFIX . "category SET image = '" . $this->db->escape($data['image']) . "' WHERE category_id = '" . (int)$category_id . "'");
		}

		if (isset($data['hiddenbanner'])) {
			$this->db->query("UPDATE " . DB_PREFIX . "category SET banner_image = '" . $this->db->escape($data['hiddenbanner']) . "' WHERE category_id = '" . (int)$category_id . "'");
		}

		$this->db->query("DELETE FROM " . DB_PREFIX . "category_description WHERE category_id = '" . (int)$category_id . "'");

		foreach ($data['category_description'] as $language_id => $value) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "category_description SET category_id = '" . (int)$category_id . "', language_id = '" . (int)$language_id . "', name = '" . $this->db->escape($value['name']) . "', description = '" . $this->db->escape($value['description']) . "', meta_title = '" . $this->db->escape($value['meta_title']) . "', meta_description = '" . $this->db->escape($value['meta_description']) . "', meta_keyword = '" . $this->db->escape($value['meta_keyword']) . "'");
		}

		// MySQL Hierarchical Data Closure Table Pattern
		$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "category_path` WHERE path_id = '" . (int)$category_id . "' ORDER BY level ASC");

		if ($query->rows) {
			foreach ($query->rows as $category_path) {
				// Delete the path below the current one
				$this->db->query("DELETE FROM `" . DB_PREFIX . "category_path` WHERE category_id = '" . (int)$category_path['category_id'] . "' AND level < '" . (int)$category_path['level'] . "'");

				$path = array();

				// Get the nodes new parents
				$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "category_path` WHERE category_id = '" . (int)$data['parent_id'] . "' ORDER BY level ASC");

				foreach ($query->rows as $result) {
					$path[] = $result['path_id'];
				}

				// Get whats left of the nodes current path
				$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "category_path` WHERE category_id = '" . (int)$category_path['category_id'] . "' ORDER BY level ASC");

				foreach ($query->rows as $result) {
					$path[] = $result['path_id'];
				}

				// Combine the paths with a new level
				$level = 0;

				foreach ($path as $path_id) {
					$this->db->query("REPLACE INTO `" . DB_PREFIX . "category_path` SET category_id = '" . (int)$category_path['category_id'] . "', `path_id` = '" . (int)$path_id . "', level = '" . (int)$level . "'");

					$level++;
				}
			}
		} else {
			// Delete the path below the current one
			$this->db->query("DELETE FROM `" . DB_PREFIX . "category_path` WHERE category_id = '" . (int)$category_id . "'");

			// Fix for records with no paths
			$level = 0;

			$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "category_path` WHERE category_id = '" . (int)$data['parent_id'] . "' ORDER BY level ASC");

			foreach ($query->rows as $result) {
				$this->db->query("INSERT INTO `" . DB_PREFIX . "category_path` SET category_id = '" . (int)$category_id . "', `path_id` = '" . (int)$result['path_id'] . "', level = '" . (int)$level . "'");

				$level++;
			}

			$this->db->query("REPLACE INTO `" . DB_PREFIX . "category_path` SET category_id = '" . (int)$category_id . "', `path_id` = '" . (int)$category_id . "', level = '" . (int)$level . "'");
		}

		$this->db->query("DELETE FROM " . DB_PREFIX . "category_filter WHERE category_id = '" . (int)$category_id . "'");

		if (isset($data['category_filter'])) {
			foreach ($data['category_filter'] as $filter_id) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "category_filter SET category_id = '" . (int)$category_id . "', filter_id = '" . (int)$filter_id . "'");
			}
		}

		$this->db->query("DELETE FROM " . DB_PREFIX . "category_to_store WHERE category_id = '" . (int)$category_id . "'");

		if (isset($data['category_store'])) {
			foreach ($data['category_store'] as $store_id) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "category_to_store SET category_id = '" . (int)$category_id . "', store_id = '" . (int)$store_id . "'");
			}
		}

		$this->db->query("DELETE FROM " . DB_PREFIX . "category_image WHERE category_id = '" . (int)$category_id . "'");
		
		if (isset($data['category_image'])) {
			foreach ($data['category_image'] as $category_image) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "category_image SET category_id = '" . (int)$category_id . "', image = '" . $this->db->escape($category_image['image']) . "', sort_order = '" . (int)$category_image['sort_order'] . "'");
			}
		}

		// SEO URL
		$this->db->query("DELETE FROM `" . DB_PREFIX . "seo_url` WHERE query = 'category_id=" . (int)$category_id . "'");

		if (isset($data['category_seo_url'])) {
			foreach ($data['category_seo_url'] as $store_id => $language) {
				foreach ($language as $language_id => $keyword) {
					if (!empty($keyword)) {
						$this->db->query("INSERT INTO " . DB_PREFIX . "seo_url SET store_id = '" . (int)$store_id . "', language_id = '" . (int)$language_id . "', query = 'category_id=" . (int)$category_id . "', keyword = '" . $this->db->escape($keyword) . "'");
					}
				}
			}
		}
		
		$this->db->query("DELETE FROM " . DB_PREFIX . "category_to_layout WHERE category_id = '" . (int)$category_id . "'");

		if (isset($data['category_layout'])) {
			foreach ($data['category_layout'] as $store_id => $layout_id) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "category_to_layout SET category_id = '" . (int)$category_id . "', store_id = '" . (int)$store_id . "', layout_id = '" . (int)$layout_id . "'");
			}
		}

		$this->cache->delete('category');
	}

	public function deleteCategory($category_id) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "category_path WHERE category_id = '" . (int)$category_id . "'");

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "category_path WHERE path_id = '" . (int)$category_id . "'");

		foreach ($query->rows as $result) {
			$this->deleteCategory($result['category_id']);
		}
		
		$this->db->query("DELETE FROM " . DB_PREFIX . "category_image WHERE category_id = '" . (int)$category_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "category WHERE category_id = '" . (int)$category_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "category_description WHERE category_id = '" . (int)$category_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "category_filter WHERE category_id = '" . (int)$category_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "category_to_store WHERE category_id = '" . (int)$category_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "category_to_layout WHERE category_id = '" . (int)$category_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "product_to_category WHERE category_id = '" . (int)$category_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "seo_url WHERE query = 'category_id=" . (int)$category_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "coupon_category WHERE category_id = '" . (int)$category_id . "'");

		$this->cache->delete('category');
	}

	public function repairCategories($parent_id = 0) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "category WHERE parent_id = '" . (int)$parent_id . "'");

		foreach ($query->rows as $category) {
			// Delete the path below the current one
			$this->db->query("DELETE FROM `" . DB_PREFIX . "category_path` WHERE category_id = '" . (int)$category['category_id'] . "'");

			// Fix for records with no paths
			$level = 0;

			$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "category_path` WHERE category_id = '" . (int)$parent_id . "' ORDER BY level ASC");

			foreach ($query->rows as $result) {
				$this->db->query("INSERT INTO `" . DB_PREFIX . "category_path` SET category_id = '" . (int)$category['category_id'] . "', `path_id` = '" . (int)$result['path_id'] . "', level = '" . (int)$level . "'");

				$level++;
			}

			$this->db->query("REPLACE INTO `" . DB_PREFIX . "category_path` SET category_id = '" . (int)$category['category_id'] . "', `path_id` = '" . (int)$category['category_id'] . "', level = '" . (int)$level . "'");

			$this->repairCategories($category['category_id']);
		}
	}

	public function getCategory($category_id) {
		$query = $this->db->query("SELECT DISTINCT *, (SELECT GROUP_CONCAT(cd1.name ORDER BY level SEPARATOR '&nbsp;&nbsp;&gt;&nbsp;&nbsp;') FROM " . DB_PREFIX . "category_path cp LEFT JOIN " . DB_PREFIX . "category_description cd1 ON (cp.path_id = cd1.category_id AND cp.category_id != cp.path_id) WHERE cp.category_id = c.category_id AND cd1.language_id = '" . (int)$this->config->get('config_language_id') . "' GROUP BY cp.category_id) AS path FROM " . DB_PREFIX . "category c LEFT JOIN " . DB_PREFIX . "category_description cd2 ON (c.category_id = cd2.category_id) WHERE c.category_id = '" . (int)$category_id . "' AND cd2.language_id = '" . (int)$this->config->get('config_language_id') . "'");
		
		return $query->row;
	}

	public function getCategories($data = array()) {
		$sql = "SELECT cp.category_id AS category_id, GROUP_CONCAT(cd1.name ORDER BY cp.level SEPARATOR '&nbsp;&nbsp;&gt;&nbsp;&nbsp;') AS name, c1.parent_id, c1.sort_order FROM " . DB_PREFIX . "category_path cp LEFT JOIN " . DB_PREFIX . "category c1 ON (cp.category_id = c1.category_id) LEFT JOIN " . DB_PREFIX . "category c2 ON (cp.path_id = c2.category_id) LEFT JOIN " . DB_PREFIX . "category_description cd1 ON (cp.path_id = cd1.category_id) LEFT JOIN " . DB_PREFIX . "category_description cd2 ON (cp.category_id = cd2.category_id) WHERE cd1.language_id = '" . (int)$this->config->get('config_language_id') . "' AND cd2.language_id = '" . (int)$this->config->get('config_language_id') . "'";

		if (!empty($data['filter_name'])) {
			$sql .= " AND cd2.name LIKE '%" . $this->db->escape($data['filter_name']) . "%'";
		}

		$sql .= " GROUP BY cp.category_id";

		$sort_data = array(
			'name',
			'sort_order'
		);

		if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
			$sql .= " ORDER BY " . $data['sort'];
		} else {
			$sql .= " ORDER BY sort_order";
		}

		if (isset($data['order']) && ($data['order'] == 'DESC')) {
			$sql .= " DESC";
		} else {
			$sql .= " ASC";
		}

		if (isset($data['start']) || isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}

			if ($data['limit'] < 1) {
				$data['limit'] = 20;
			}

			$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}

		$query = $this->db->query($sql);

		return $query->rows;
	}

	public function getCategoryDescriptions($category_id) {
		$category_description_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "category_description WHERE category_id = '" . (int)$category_id . "'");

		foreach ($query->rows as $result) {
			$category_description_data[$result['language_id']] = array(
				'name'             => $result['name'],
				'meta_title'       => $result['meta_title'],
				'meta_description' => $result['meta_description'],
				'meta_keyword'     => $result['meta_keyword'],
				'description'      => $result['description']
			);
		}

		return $category_description_data;
	}
	
	public function getCategoryPath($category_id) {
		$query = $this->db->query("SELECT category_id, path_id, level FROM " . DB_PREFIX . "category_path WHERE category_id = '" . (int)$category_id . "'");

		return $query->rows;
	}
	
	public function getCategoryFilters($category_id) {
		$category_filter_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "category_filter WHERE category_id = '" . (int)$category_id . "'");

		foreach ($query->rows as $result) {
			$category_filter_data[] = $result['filter_id'];
		}

		return $category_filter_data;
	}

	public function getCategoryStores($category_id) {
		$category_store_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "category_to_store WHERE category_id = '" . (int)$category_id . "'");

		foreach ($query->rows as $result) {
			$category_store_data[] = $result['store_id'];
		}

		return $category_store_data;
	}

	public function getCategoryImages($product_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "category_image WHERE category_id = '" . (int)$product_id . "' ORDER BY sort_order ASC");

		return $query->rows;
	}
	
	public function getCategorySeoUrls($category_id) {
		$category_seo_url_data = array();
		
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "seo_url WHERE query = 'category_id=" . (int)$category_id . "'");

		foreach ($query->rows as $result) {
			$category_seo_url_data[$result['store_id']][$result['language_id']] = $result['keyword'];
		}

		return $category_seo_url_data;
	}
	
	public function getCategoryLayouts($category_id) {
		$category_layout_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "category_to_layout WHERE category_id = '" . (int)$category_id . "'");

		foreach ($query->rows as $result) {
			$category_layout_data[$result['store_id']] = $result['layout_id'];
		}

		return $category_layout_data;
	}

	public function getTotalCategories() {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "category");

		return $query->row['total'];
	}
	
	public function getTotalCategoriesByLayoutId($layout_id) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "category_to_layout WHERE layout_id = '" . (int)$layout_id . "'");

		return $query->row['total'];
	}	

	public function getCallExport($sqlString) {
		//Special for call procedure
		// $hostname = DB_HOSTNAME;
		// $dbname = DB_DATABASE;
		// $username = DB_USERNAME;
		// $password = DB_PASSWORD;
		// $dir_csv = DIR_SYSTEM."/storage/download/export/product.csv";
		// @unlink($dir_csv);
		// $dbh = new PDO("mysql:host=$hostname;dbname=$dbname",$username,$password);
		// die("CALL export_product("."'".$sqlString."'".")");
		// $dbh->query("CALL export_product("."'".$sqlString."'".")");

		$query = $this->db->query($sqlString);
		return $query->rows;
	}

	public function createTempTable($temptableString,$data,$insertfield,$status) {
		//createTempTable($sqlString,$importfilename)
		//Special for call procedure
		$hostname = DB_HOSTNAME;
		$dbname = DB_DATABASE;
		$username = DB_USERNAME;
		$password = DB_PASSWORD;
		//$dir_csv = DIR_SYSTEM."/storage/download/".$importfilename;
		
		$dbh = new PDO("mysql:host=$hostname;dbname=$dbname",$username,$password);
		
		$dbh->query($temptableString);
		
		// $dbh->query('LOAD DATA INFILE '.'"'.$dir_csv.'"'.' INTO TABLE al_dytemp_product FIELDS TERMINATED BY "," LINES TERMINATED BY "\n" IGNORE 1 LINES;');

		

		foreach($data as $dvalue) {

			$insertText = "INSERT INTO ".DB_PREFIX."dytemp_product (".$insertfield.") VALUES (";
				foreach($dvalue as $key => $value) {
					$encodevalue = str_replace("'", "", $value);
					$insertText .= ("'".$encodevalue."'"?"'".$encodevalue."'":NULL).',';
				}
			$insertText = rtrim($insertText,',');
			$insertText .= ")";

			$this->db->query($insertText);	
		}

		return;
	}

	public function importDataUpdate($columns,$category_id)
	{

		//------------------------------------------//
		ini_set('memory_limit','-1');
		ini_set('max_execution_time', 0);
		//------------------------------------------//

		//$this->db->query("call delete_product_attributes()");
		//$this->db->query("call product_import(1,@out_val)");
		
		$query = $this->db->query("update " . DB_PREFIX . "product as ap 
				inner join
				(
				SELECT product_id,model,image,manufacturer,price,length,width,height,weight,status FROM `" . DB_PREFIX . "dytemp_product`  
				) as tp on ap.product_id=tp.product_id
				set ap.model=tp.model,ap.image=tp.image,ap.length=tp.length,
				ap.width=tp.width,ap.height=tp.height,ap.weight=tp.weight,ap.length_class_id=1,
				ap.weight_class_id=1,ap.manufacturer_id=tp.manufacturer,
				ap.price=tp.price,ap.status=tp.status where ap.product_id=tp.product_id;");
		$query = $this->db->query("update " . DB_PREFIX . "product_description as ap 
				inner join
				(
				SELECT product_id, name, product_description, meta_title, meta_description, meta_keyword
				FROM `" . DB_PREFIX . "dytemp_product`  
				) as tp on ap.product_id=tp.product_id
				set ap.name=tp.name,ap.description=tp.product_description,ap.meta_title=tp.meta_title,ap.meta_description=tp.meta_description,ap.meta_keyword=tp.meta_keyword where ap.product_id=tp.product_id;");

		//set to default store
		$this->db->query("DELETE FROM " . DB_PREFIX . "product_to_store WHERE EXISTS (select product_id from " . DB_PREFIX . "dytemp_product where " . DB_PREFIX . "product_to_store.product_id = " . DB_PREFIX . "dytemp_product.product_id)");

		$this->db->query("INSERT INTO " . DB_PREFIX . "product_to_store (product_id,store_id) select dp.product_id, '0' from " . DB_PREFIX . "dytemp_product dp INNER JOIN " . DB_PREFIX . "product p ON p.product_id = dp.product_id");

		//if(isset($columns))
		//$columns = $columns.",category_id";
		//$columns = trim($columns,",");
		$attribute_values = array();
		$country_names = array();
		$product_query = $this->db->query("select dp.product_id from " . DB_PREFIX . "dytemp_product dp INNER JOIN " . DB_PREFIX . "product p ON p.product_id = dp.product_id");

		$columns = explode(',',$columns);
		foreach($columns as $column)
		{
			foreach ($product_query->rows as $product_attribute) {
				if ($column=='category_id') {
					$categoryArray = explode("####",$product_attribute[$column]);

					foreach($categoryArray as $key => $category) {
						$this->db->query("INSERT INTO " . DB_PREFIX . "product_to_category SET product_id ='".(int)$product_attribute['product_id']."',category_id = '".(int)$category."'");
					}
					
				} else if ($column=='related_product') {
					$relatedArray = explode("####",$product_attribute[$column]);

					$this->db->query("DELETE FROM " . DB_PREFIX . "product_related WHERE product_id ='".(int)$product_attribute['product_id']."'");

					foreach($relatedArray as $key => $related) {
						
						$this->db->query("INSERT INTO " . DB_PREFIX . "product_related SET product_id ='".(int)$product_attribute['product_id']."',related_id = '".(int)$related."'");
					}
					
				}
			}
		}
	}
	public function importDataInsert($columns,$category_id)
	{
		//------------------------------------------//
		ini_set('memory_limit','-1');
		ini_set('max_execution_time', 0);
		//------------------------------------------//

		//Delete category
		$this->db->query("delete from " . DB_PREFIX . "product_to_category  WHERE product_id in (select product_id from " . DB_PREFIX . "product where sku in (select sku from " . DB_PREFIX . "dytemp_product))");
		//$this->db->query("delete from al_product where sku in (select sku from al_dytemp_product)");
		$columns = $columns.",country";
		$columns = trim($columns,",");
		$columns = explode(',',$columns);

		$product_query = $this->db->query("select * from " . DB_PREFIX . "dytemp_product");
		foreach ($product_query->rows as $data) {

			$this->db->query("INSERT INTO " . DB_PREFIX . "product set model='" . $this->db->escape($data['model']) . "', sku = '" . $this->db->escape($data['sku']) . "', manufacturer_id = '" . (int)$data['manufacturer'] . "',  price = '" . (float)$data['price'] . "', length = '" . (int)$data['length'] . "',width = '" . (int)$data['width'] . "',height = '" . (int)$data['height'] . "',weight = '" . (int)$data['weight'] . "',length_class_id=1, weight_class_id=1, status = '" . (int)$data['status'] . "',image ='" . $this->db->escape($data['image']) . "',date_added = NOW()");

			$product_id = $this->db->getLastId();

			//set to default store
			if($product_id) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "product_to_store SET product_id = '" . (int)$product_id . "', store_id = 0 ");

				$this->db->query("INSERT INTO " . DB_PREFIX . "product_description SET product_id = '" . (int)$product_id . "', language_id = 1, name = '" . $this->db->escape($data['name']) . "', description = '" . $this->db->escape($data['product_description']) . "',  meta_title = '" . $this->db->escape($data['meta_title']) . "', meta_description = '" . $this->db->escape($data['meta_description']) . "', meta_keyword = '" . $this->db->escape($data['meta_keyword']) . "'");

				if($category_id) {
					$this->db->query("INSERT INTO " . DB_PREFIX . "product_to_category SET product_id ='".(int)$product_id."',category_id = '".(int)$category."'");
				}

				if($data['related_product']) {
					$relatedArray = explode("####",$data['related_product']);
					$feature_flag=1;
					foreach($relatedArray as $key => $related) {

						$this->db->query("INSERT INTO " . DB_PREFIX . "product_related SET product_id ='".(int)$product_id."',related_id = '".(int)$related."'");
					}
				}

				$attribute_values = array();
				$country_names = array();
			
				// foreach($columns as $column)
				// {
				// 	if($column=='country')
				// 	{
				// 		$country_names = explode('####',$data[$column]);
				// 		foreach($country_names as $country_name) {
				// 			$this->db->query("INSERT INTO " . DB_PREFIX . "product_to_country SET country_id=(select country_id from " . DB_PREFIX . "country where iso_code_3 ='" . $country_name . "'  ),product_id='" . (int)$product_id . "'"); 
				// 		}
				// 	}
				// }
			}
		}
	}
}