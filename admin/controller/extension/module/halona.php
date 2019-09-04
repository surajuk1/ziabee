<?php
/* 
Template Name: halona
Version: 1.0
Author: Felix Theme
Website: http://halona.com
*/

class ControllerExtensionModulehalona extends Controller {
	
	private $error = array(); 
	
	public function index() {   
	
		//Load the language file for this module
		$this->language->load('extension/module/halona');

		//Set the title from the language file $_['heading_title'] string
		$this->document->setTitle('halona Theme Options');
		
		//Load the settings model. You can also add any other models you want to load here.
		$this->load->model('setting/setting');
		
		// Multilanguage
		$this->load->model('localisation/language');
		$data['languages'] = $this->model_localisation_language->getLanguages();
		
		/* Konfiguracja kolorow */
		$data['colors_data'] = array(
			array(
				'name' => 'Body',
				'content' => array(
					array(
						'name' => 'Body text',
						'id'   => 'body_font_text'
					),
					array(
						'name' => 'Body links',
						'id'   => 'body_font_links'
					),
					array(
						'name' => 'Body links hover',
						'id'   => 'body_font_links_hover'
					),
					array(
						'name' => 'Background color',
						'id'   => 'body_background_color'
					)
				)
			),
			array(
				'name' => 'Products',
				'content' => array(
			          array(
			          	'name' => 'Price text',
			          	'id'   => 'body_price_text'
			          ),
			          array(
			          	'name' => 'Price old text',
			          	'id'   => 'body_price_old_text'
			          ),
			          array(
			          	'name' => 'Price old text on product page',
			          	'id'   => 'body_price_old_text_on_product_page'
			          ),
			          array(
			          	'name' => 'Hover border color',
			          	'id'   => 'product_hover_border_color'
			          )
				)
			),
			array(
				'name' => 'Products Buttons',
				'content' => array(
			          array(
			          	'name' => 'Background color',
			          	'id'   => 'products_buttons_background_color'
			          ),
			          array(
			          	'name' => 'Border color',
			          	'id'   => 'products_buttons_border_color'
			          ),
			          array(
			          	'name' => 'Icon color',
			          	'id'   => 'products_buttons_icon_color'
			          )
				)
			),
			array(
				'name' => 'Products Buttons Hover',
				'content' => array(
			          array(
			          	'name' => 'Background color',
			          	'id'   => 'products_buttons_hover_background_color'
			          ),
			          array(
			          	'name' => 'Border color',
			          	'id'   => 'products_buttons_hover_border_color'
			          ),
			          array(
			          	'name' => 'Icon color',
			          	'id'   => 'products_buttons_hover_icon_color'
			          )
				)
			),
			array(
				'name' => 'Dropdown',
				'content' => array(
			          array(
			          	'name' => 'Background color',
			          	'id'   => 'dropdown_background_color'
			          ),
			          array(
			          	'name' => 'Text color',
			          	'id'   => 'dropdown_text_color'
			          ),
			          array(
			          	'name' => 'Links color',
			          	'id'   => 'dropdown_links_color'
			          ),
			          array(
			          	'name' => 'Links hover color',
			          	'id'   => 'dropdown_links_hover_color'
			          )
				)
			),
			array(
				'name' => 'Inputs',
				'content' => array(
			          array(
			          	'name' => 'Background color',
			          	'id'   => 'inputs_background_color'
			          ),
			          array(
			          	'name' => 'Background focus color',
			          	'id'   => 'inputs_background_focus_color'
			          ),
			          array(
			          	'name' => 'Border color',
			          	'id'   => 'inputs_border_color'
			          ),
			          array(
			          	'name' => 'Border focus color',
			          	'id'   => 'inputs_border_focus_color'
			          ),
			          array(
			          	'name' => 'Text color',
			          	'id'   => 'inputs_text_color'
			          )
				)
			),
			array(
				'name' => 'Selects',
				'content' => array(
			          array(
			          	'name' => 'Background color',
			          	'id'   => 'selects_background_color'
			          ),
			          array(
			          	'name' => 'Border color',
			          	'id'   => 'selects_border_color'
			          ),
			          array(
			          	'name' => 'Text color',
			          	'id'   => 'selects_text_color'
			          ),
			          array(
			          	'name' => 'Arrow color',
			          	'id'   => 'selects_arrow_color'
			          )
				)
			),
			array(
				'name' => 'Header',
				'content' => array(
			          array(
			          	'name' => 'Background color',
			          	'id'   => 'header_background_color'
			          )
				)
			),
			array(
				'name' => 'Header Type 3, 4, 8',
				'content' => array(
			          array(
			          	'name' => 'Top border bottom 1px color',
			          	'id'   => 'header_type_3_border_bottom_1_color'
			          ),
			          array(
			          	'name' => 'Top border bottom 2px color',
			          	'id'   => 'header_type_3_border_bottom_2_color'
			          )
				)
			),
			array(
				'name' => 'Header Type 3, 4, 8, 27 -> Search',
				'content' => array(
			          array(
			          	'name' => 'Border color',
			          	'id'   => 'header_type_3_search_border_color'
			          ),
			          array(
			          	'name' => 'Background color',
			          	'id'   => 'header_type_3_search_background_color'
			          ),
			          array(
			          	'name' => 'Icon color',
			          	'id'   => 'header_type_3_search_icon_color'
			          ),
			          array(
			          	'name' => 'Border hover color',
			          	'id'   => 'header_type_3_search_border_hover_color'
			          ),
			          array(
			          	'name' => 'Background hover color',
			          	'id'   => 'header_type_3_search_background_hover_color'
			          ),
			          array(
			          	'name' => 'Icon hover color',
			          	'id'   => 'header_type_3_search_icon_hover_color'
			          )
				)
			),
			array(
				'name' => 'Header Type 12 -> Search',
				'content' => array(
			          array(
			          	'name' => 'Background color',
			          	'id'   => 'header_type_12_search_background_color'
			          ),
			          array(
			          	'name' => 'Background gradient top color',
			          	'id'   => 'header_type_12_search_background_gradient_top_color'
			          ),
			          array(
			          	'name' => 'Background gradient bottom color',
			          	'id'   => 'header_type_12_search_background_gradient_bottom_color'
			          ),
			          array(
			          	'name' => 'Icon color',
			          	'id'   => 'header_type_12_search_icon_color'
			          ),
			          array(
			          	'name' => 'Select text color',
			          	'id'   => 'header_type_12_search_select_text_color'
			          ),
			          array(
			          	'name' => 'Input text color',
			          	'id'   => 'header_type_12_search_input_text_color'
			          ),
			          array(
			          	'name' => 'Input background color',
			          	'id'   => 'header_type_12_search_input_background_color'
			          ),
			          array(
			          	'name' => 'Input focus background color',
			          	'id'   => 'header_type_12_search_input_focus_background_color'
			          )
				)
			),
			array(
				'name' => 'Header Type 13 -> Search',
				'content' => array(
			          array(
			          	'name' => 'Background color',
			          	'id'   => 'header_type_13_search_background_color'
			          ),
			          array(
			          	'name' => 'Border color',
			          	'id'   => 'header_type_13_search_border_color'
			          ),
			          array(
			          	'name' => 'Select text color',
			          	'id'   => 'header_type_13_search_select_text_color'
			          ),
			          array(
			          	'name' => 'Input text color',
			          	'id'   => 'header_type_13_search_input_text_color'
			          ),
			          array(
			          	'name' => 'Icon search background color',
			          	'id'   => 'header_type_13_search_icon_background_color'
			          ),
			          array(
			          	'name' => 'Icon search hover background color',
			          	'id'   => 'header_type_13_search_icon_hover_background_color'
			          ),
			          array(
			          	'name' => 'Icon search text color',
			          	'id'   => 'header_type_13_search_icon_text_color'
			          ),
			          array(
			          	'name' => 'Icon search hover text color',
			          	'id'   => 'header_type_13_search_icon_hover_text_color'
			          )
				)
			),
			array(
				'name' => 'Header Type 15 -> Logo',
				'content' => array(
			          array(
			          	'name' => 'Background color',
			          	'id'   => 'logo_background_color'
			          ),
			          array(
			          	'name' => 'Background gradient top color',
			          	'id'   => 'logo_background_gradient_top_color'
			          ),
			          array(
			          	'name' => 'Background gradient bottom color',
			          	'id'   => 'logo_background_gradient_bottom_color'
			          )
				)
			),
			array(
				'name' => 'Top bar',
				'content' => array(
			          array(
			          	'name' => 'Background color',
			          	'id'   => 'top_bar_background_color'
			          ),
			          array(
			          	'name' => 'Background gradient top color',
			          	'id'   => 'top_bar_background_gradient_top_color'
			          ),
			          array(
			          	'name' => 'Background gradient bottom color',
			          	'id'   => 'top_bar_background_gradient_bottom_color'
			          ),
			          array(
			          	'name' => 'Border 1px bottom color',
			          	'id'   => 'top_bar_border_bottom_color'
			          )
				)
			),
			array(
				'name' => 'Top bar -> Welcome text',
				'content' => array(
			          array(
			          	'name' => 'Text color',
			          	'id'   => 'top_bar_welcome_text'
			          ),
			          array(
			          	'name' => 'Links color',
			          	'id'   => 'top_bar_welcome_text_links_color'
			          )
				)
			),
			array(
				'name' => 'Top',
				'content' => array(
			          array(
			          	'name' => 'Background color',
			          	'id'   => 'top_background_color'
			          ),
			          array(
			          	'name' => 'Background gradient top color',
			          	'id'   => 'top_background_gradient_top'
			          ),
			          array(
			          	'name' => 'Background gradient bottom color',
			          	'id'   => 'top_background_gradient_bottom'
			          ),
			          array(
			          	'name' => 'Border bottom 1px color',
			          	'id'   => 'top_border_bottom_1px_color'
			          ),
			          array(
			          	'name' => 'Border bottom 2px color',
			          	'id'   => 'top_border_bottom_color'
			          ),
			          array(
			          	'name' => 'Border bottom 4px color',
			          	'id'   => 'top_border_bottom_4px_color'
			          )
				)
			),
			array(
				'name' => 'Top -> Menu',
				'content' => array(
			          array(
			          	'name' => 'Links color',
			          	'id'   => 'top_links_color'
			          ),
			          array(
			          	'name' => 'Links hover',
			          	'id'   => 'top_links_hover_color'
			          )
				)
			),
			array(
				'name' => 'Top -> Search',
				'content' => array(
			          array(
			          	'name' => 'Input background color',
			          	'id'   => 'top_search_input_background_color'
			          ),
			          array(
			          	'name' => 'Input focus background color',
			          	'id'   => 'top_search_input_focus_background_color'
			          ),
			          array(
			          	'name' => 'Input border color',
			          	'id'   => 'top_search_input_border_color'
			          ),
			          array(
			          	'name' => 'Input focus border color',
			          	'id'   => 'top_search_input_focus_border_color'
			          ),
			          array(
			          	'name' => 'Input text color',
			          	'id'   => 'top_search_input_text_color'
			          ),
			          array(
			          	'name' => 'Icon search color',
			          	'id'   => 'top_search_icon_color'
			          )
				)
			),
			array(
				'name' => 'Top -> Change currency, language',
				'content' => array(
			          array(
			          	'name' => 'Text color',
			          	'id'   => 'top_change_text_color'
			          ),
			          array(
			          	'name' => 'Bullet color',
			          	'id'   => 'top_change_bullet_color'
			          ),
			          array(
			          	'name' => 'Text hover color',
			          	'id'   => 'top_change_text_hover_color'
			          ),
			          array(
			          	'name' => 'Bullet hover color',
			          	'id'   => 'top_change_bullet_hover_color'
			          )
				)
			),
			array(
				'name' => 'Top -> My Account',
				'content' => array(
			          array(
			          	'name' => 'Border color',
			          	'id'   => 'top_my_account_border_color'
			          ),
			          array(
			          	'name' => 'Background color',
			          	'id'   => 'top_my_account_background_color'
			          ),
			          array(
			          	'name' => 'Background gradient top color',
			          	'id'   => 'top_my_account_background_gradient_top_color'
			          ),
			          array(
			          	'name' => 'Background gradient bottom color',
			          	'id'   => 'top_my_account_background_gradient_bottom_color'
			          ),
			          array(
			          	'name' => 'Icon color',
			          	'id'   => 'top_my_account_icon_color'
			          ),
			          array(
			          	'name' => 'Border hover color',
			          	'id'   => 'top_my_account_border_hover_color'
			          ),
			          array(
			          	'name' => 'Background hover color',
			          	'id'   => 'top_my_account_background_hover_color'
			          ),
			          array(
			          	'name' => 'Background hover gradient top color',
			          	'id'   => 'top_my_account_background_hover_gradient_top_color'
			          ),
			          array(
			          	'name' => 'Background hover gradient bottom color',
			          	'id'   => 'top_my_account_background_hover_gradient_bottom_color'
			          ),
			          array(
			          	'name' => 'Icon hover color',
			          	'id'   => 'top_my_account_icon_hover_color'
			          )
				)
			),
			array(
				'name' => 'Top -> Cart',
				'content' => array(
                         array(
                         	'name' => 'Cart icon border color',
                         	'id'   => 'top_cart_icon_border_color'
                         ),
					array(
						'name' => 'Cart icon background color',
						'id'   => 'top_cart_icon_background_color'
					),
					array(
						'name' => 'Cart icon background gradient top color',
						'id'   => 'top_cart_icon_background_gradient_top_color'
					),
					array(
						'name' => 'Cart icon background gradient bottom color',
						'id'   => 'top_cart_icon_background_gradient_bottom_color'
					),
					array(
						'name' => 'Cart amount text color',
						'id'   => 'top_cart_amount_text_color'
					),
					array(
						'name' => 'Cart amount background color',
						'id'   => 'top_cart_amount_background_color'
					),
					array(
						'name' => 'Cart amount background gradient top color',
						'id'   => 'top_cart_amount_background_gradient_top_color'
					),
					array(
						'name' => 'Cart amount background gradient bottom color',
						'id'   => 'top_cart_amount_background_gradient_bottom_color'
					),
					array(
						'name' => 'Cart price color',
						'id'   => 'top_cart_price_color'
					),
					array(
						'name' => 'Cart bullet color',
						'id'   => 'top_cart_bullet_color'
					)
				)
			),
			array(
				'name' => 'Top -> Cart Hover',
				'content' => array(
					array(
						'name' => 'Cart icon border color',
						'id'   => 'top_cart_icon_hover_border_color'
					),
					array(
						'name' => 'Cart icon background color',
						'id'   => 'top_cart_icon_hover_background_color'
					),
					array(
						'name' => 'Cart icon background gradient top color',
						'id'   => 'top_cart_icon_background_hover_gradient_top_color'
					),
					array(
						'name' => 'Cart icon background gradient bottom color',
						'id'   => 'top_cart_icon_background_hover_gradient_bottom_color'
					),
					array(
						'name' => 'Cart amount text color',
						'id'   => 'top_cart_amount_hover_text_color'
					),
					array(
						'name' => 'Cart amount background color',
						'id'   => 'top_cart_amount_hover_background_color'
					),
					array(
						'name' => 'Cart amount background gradient top color',
						'id'   => 'top_cart_amount_hover_background_gradient_top_color'
					),
					array(
						'name' => 'Cart amount background gradient bottom color',
						'id'   => 'top_cart_amount_hover_background_gradient_bottom_color'
					),
					array(
						'name' => 'Cart price color',
						'id'   => 'top_cart_price_hover_color'
					),
					array(
						'name' => 'Cart bullet color',
						'id'   => 'top_cart_bullet_hover_color'
					)
				)
			),
			array(
				'name' => 'Menu',
				'content' => array(
				     array(
				     	'name' => 'Background color',
				     	'id'   => 'menu_background_color'
				     ),
				     array(
				     	'name' => 'Background gradient top color',
				     	'id'   => 'menu_background_gradient_top_color'
				     ),
				     array(
				     	'name' => 'Background gradient bottom color',
				     	'id'   => 'menu_background_gradient_bottom_color'
				     ),
					array(
						'name' => 'Main links color',
						'id'   => 'main_links_color'
					),
					array(
						'name' => 'Main links bullet color',
						'id'   => 'main_links_bullet_color'
					),
					array(
						'name' => 'Main links hover color',
						'id'   => 'main_links_hover_color'
					),
					array(
						'name' => 'Main links bullet hover color',
						'id'   => 'main_links_bullet_hover_color'
					)
				)
			),
			array(
				'name' => 'Menu -> Link position right',
				'content' => array(
				     array(
				     	'name' => 'Text color',
				     	'id'   => 'menu_link_position_right_text_color'
				     ),
				     array(
				     	'name' => 'Background color',
				     	'id'   => 'menu_link_position_right_background_color'
				     ),
				     array(
				     	'name' => 'Background gradient top color',
				     	'id'   => 'menu_link_position_right_background_gradient_top_color'
				     ),
				     array(
				     	'name' => 'Background gradient bottom color',
				     	'id'   => 'menu_link_position_right_background_gradient_bottom_color'
				     )
				)
			),
			array(
				'name' => 'Vertical Menu',
				'content' => array(
					array(
						'name' => 'Heading text color',
						'id'   => 'vertical_menu_heading_text_color'
					),
					array(
						'name' => 'Heading bullet color',
						'id'   => 'vertical_menu_heading_bullet_color'
					),
					array(
						'name' => 'Heading background color',
						'id'   => 'vertical_menu_heading_background_color'
					),
					array(
						'name' => 'Heading background gradient top color',
						'id'   => 'vertical_menu_heading_background_gradient_top_color'
					),
					array(
						'name' => 'Heading background gradient bottom color',
						'id'   => 'vertical_menu_heading_background_gradient_bottom_color'
					),
					array(
						'name' => 'Heading hover text color',
						'id'   => 'vertical_menu_heading_hover_text_color'
					),
					array(
						'name' => 'Heading hover bullet color',
						'id'   => 'vertical_menu_heading_hover_bullet_color'
					),
					array(
						'name' => 'Heading hover background color',
						'id'   => 'vertical_menu_heading_hover_background_color'
					),
					array(
						'name' => 'Heading hover background gradient top color',
						'id'   => 'vertical_menu_heading_hover_background_gradient_top_color'
					),
					array(
						'name' => 'Heading hover background gradient bottom color',
						'id'   => 'vertical_menu_heading_hover_background_gradient_bottom_color'
					),
					array(
						'name' => 'Content background color',
						'id'   => 'vertical_menu_content_background_color'
					),
					array(
						'name' => 'Content border 1px color',
						'id'   => 'vertical_menu_content_border2_color'
					),
					array(
						'name' => 'Content border 2px color',
						'id'   => 'vertical_menu_content_border3_color'
					),
					array(
						'name' => 'Content links color',
						'id'   => 'vertical_menu_content_links_color'
					),
					array(
						'name' => 'Content links border top color',
						'id'   => 'vertical_menu_content_border_color'
					),
					array(
						'name' => 'Content links hover color',
						'id'   => 'vertical_menu_content_links_hover_color'
					),
					array(
						'name' => 'Content links hover background color',
						'id'   => 'vertical_menu_content_links_hover_background_color'
					),
					array(
						'name' => 'Content bullet color',
						'id'   => 'vertical_menu_content_bullet_color'
					),
					array(
						'name' => 'Content bullet hover color',
						'id'   => 'vertical_menu_content_bullet_hover_color'
					)
				)
			),
			array(
				'name' => 'Menu -> Submenu',
				'content' => array(
				     array(
				     	'name' => 'Background color',
				     	'id'   => 'submenu_background_color'
				     ),
				     array(
				     	'name' => 'Text color',
				     	'id'   => 'submenu_text_color'
				     ),
			          array(
			          	'name' => 'Links color',
			          	'id'   => 'submenu_links_color'
			          ),
			          array(
			          	'name' => 'Links hover color',
			          	'id'   => 'submenu_links_hover_color'
			          ),
			          array(
			          	'name' => 'Bullets color',
			          	'id'   => 'submenu_bullets_color'
			          ),
			          array(
			          	'name' => 'Bullets hover color',
			          	'id'   => 'submenu_bullets_hover_color'
			          ),
			          array(
			          	'name' => 'Main links in visible type color',
			          	'id'   => 'submenu_main_links_in_visible_type_color'
			          ),
			          array(
			          	'name' => 'Main links hover in visible type color',
			          	'id'   => 'submenu_main_links_hover_in_visible_type_color'
			          ),
			          array(
			          	'name' => 'Main links in visible type border bottom color',
			          	'id'   => 'submenu_main_links_in_visible_type_border_bottom_color'
			          )
				)
			),
			array(
				'name' => 'Mobile Menu -> Heading',
				'content' => array(
			          array(
			          	'name' => 'Heading background color',
			          	'id'   => 'mobile_menu_heading_background_color'
			          ),
			          array(
			          	'name' => 'Heading background gradient top color',
			          	'id'   => 'mobile_menu_heading_background_gradient_top_color'
			          ),
			          array(
			          	'name' => 'Heading background gradient bottom color',
			          	'id'   => 'mobile_menu_heading_background_gradient_bottom_color'
			          ),
			          array(
			          	'name' => 'Heading text color',
			          	'id'   => 'mobile_menu_heading_text_color'
			          ),
			          array(
			          	'name' => 'Heading bullet color',
			          	'id'   => 'mobile_menu_heading_bullet_color'
			          )
				)
			),
			array(
				'name' => 'Mobile Menu -> Heading Hover',
				'content' => array(
			          array(
			          	'name' => 'Heading background color',
			          	'id'   => 'mobile_menu_heading_hover_background_color'
			          ),
			          array(
			          	'name' => 'Heading background gradient top color',
			          	'id'   => 'mobile_menu_heading_hover_background_gradient_top_color'
			          ),
			          array(
			          	'name' => 'Heading background gradient bottom color',
			          	'id'   => 'mobile_menu_heading_hover_background_gradient_bottom_color'
			          ),
			          array(
			          	'name' => 'Heading text color',
			          	'id'   => 'mobile_menu_heading_hover_text_color'
			          ),
			          array(
			          	'name' => 'Heading bullet color',
			          	'id'   => 'mobile_menu_heading_hover_bullet_color'
			          )
				)
			),
			array(
				'name' => 'Mobile Menu -> Content',
				'content' => array(
			          array(
			          	'name' => 'Background color',
			          	'id'   => 'mobile_menu_content_background_color'
			          ),
			          array(
			          	'name' => 'Border color',
			          	'id'   => 'mobile_menu_content_border_color'
			          ),
			          array(
			          	'name' => 'Link color',
			          	'id'   => 'mobile_menu_content_link_color'
			          ),
			          array(
			          	'name' => 'Link active color',
			          	'id'   => 'mobile_menu_content_link_active_color'
			          ),
			          array(
			          	'name' => 'Link border top color',
			          	'id'   => 'mobile_menu_content_link_border_top_color'
			          ),
			          array(
			          	'name' => 'Link hover background color',
			          	'id'   => 'mobile_menu_content_link_hover_background_color'
			          ),
			          array(
			          	'name' => 'Plus/minus color',
			          	'id'   => 'mobile_menu_content_plus_minus_color'
			          )
				)
			),
			array(
				'name' => 'Horizontal Type 2 Menu (Flowers)',
				'content' => array(
				     array(
				     	'name' => 'Background color',
				     	'id'   => 'horizontal_type_2_menu_background_color'
				     ),
				     array(
				     	'name' => 'Links color',
				     	'id'   => 'horizontal_type_2_menu_links_color'
				     ),
				     array(
				     	'name' => 'Bullet color',
				     	'id'   => 'horizontal_type_2_menu_bullet_color'
				     ),
				     array(
				     	'name' => 'Links hover color',
				     	'id'   => 'horizontal_type_2_menu_links_hover_color'
				     ),
				     array(
				     	'name' => 'Bullet hover color',
				     	'id'   => 'horizontal_type_2_menu_bullet_hover_color'
				     )
				)
			),
			array(
				'name' => 'Breadcrumb',
				'content' => array(
				     array(
				     	'name' => 'Background color',
				     	'id'   => 'breadcrumb_background_color'
				     ),
				     array(
				     	'name' => 'Border bottom 1px color',
				     	'id'   => 'breadcrumb_border_bottom_color'
				     ),
				     array(
				     	'name' => 'Border bottom 4px color',
				     	'id'   => 'breadcrumb_border_bottom_4px_color'
				     ),
				     array(
				     	'name' => 'Border top color',
				     	'id'   => 'breadcrumb_border_top_color'
				     ),
				     array(
				     	'name' => 'Heading color',
				     	'id'   => 'breadcrumb_heading_color'
				     ),
			          array(
			          	'name' => 'Heading border bottom color',
			          	'id'   => 'breadcrumb_heading_border_bottom_color'
			          ),
			          array(
			          	'name' => 'Links color',
			          	'id'   => 'breadcrumb_links_color'
			          ),
			          array(
			          	'name' => 'Links hover color',
			          	'id'   => 'breadcrumb_links_hover_color'
			          ),
			          array(
			          	'name' => 'Price color',
			          	'id'   => 'breadcrumb_price_color'
			          )
				)
			),
			array(
				'name' => 'Breadcrumb -> Button prev/next product',
				'content' => array(
			          array(
			          	'name' => 'Background color',
			          	'id'   => 'breadcrumb_button_background_color'
			          ),
			          array(
			          	'name' => 'Border color',
			          	'id'   => 'breadcrumb_button_border_color'
			          ),
			          array(
			          	'name' => 'Text color',
			          	'id'   => 'breadcrumb_button_text_color'
			          )
				)
			),
			array(
				'name' => 'Breadcrumb -> Button Hover prev/next product',
				'content' => array(
			          array(
			          	'name' => 'Background color',
			          	'id'   => 'breadcrumb_button_hover_background_color'
			          ),
			          array(
			          	'name' => 'Border color',
			          	'id'   => 'breadcrumb_button_hover_border_color'
			          ),
			          array(
			          	'name' => 'Text color',
			          	'id'   => 'breadcrumb_button_hover_text_color'
			          )
				)
			),
			array(
				'name' => 'Main content',
				'content' => array(
			          array(
			          	'name' => 'Background color',
			          	'id'   => 'main_content_background_color'
			          ),
			          array(
			          	'name' => 'Border color',
			          	'id'   => 'main_content_border_color'
			          ),
			          array(
			          	'name' => 'Headings color',
			          	'id'   => 'main_content_headings_color'
			          )
				)
			),
			array(
				'name' => 'Pagination',
				'content' => array(
			          array(
			          	'name' => 'Text color',
			          	'id'   => 'pagination_text_color'
			          )
				)
			),
			array(
				'name' => 'Product filter',
				'content' => array(
			          array(
			          	'name' => 'Icon color',
			          	'id'   => 'product_filter_icon_color'
			          ),
			          array(
			          	'name' => 'Icon active color',
			          	'id'   => 'product_filter_icon_active_color'
			          )
				)
			),
			array(
				'name' => 'Box',
				'content' => array(
			          array(
			          	'name' => 'Background color',
			          	'id'   => 'box_background_color'
			          ),
			          array(
			          	'name' => 'Text color',
			          	'id'   => 'box_text_color'
			          ),
			          array(
			          	'name' => 'Links color',
			          	'id'   => 'box_links_color'
			          )
				)
			),
			array(
				'name' => 'Box -> Heading',
				'content' => array(
			          array(
			          	'name' => 'Background color',
			          	'id'   => 'box_heading_background_color'
			          ),
			          array(
			          	'name' => 'Text color',
			          	'id'   => 'box_heading_text_color'
			          ),
			          array(
			          	'name' => 'Border bottom color',
			          	'id'   => 'box_heading_border_bottom_color'
			          )
				)
			),
			array(
				'name' => 'Box -> Button prev/next',
				'content' => array(
			          array(
			          	'name' => 'Background color',
			          	'id'   => 'box_button_background_color'
			          ),
			          array(
			          	'name' => 'Background gradient top color',
			          	'id'   => 'box_button_background_gradient_top_color'
			          ),
			          array(
			          	'name' => 'Background gradient bottom color',
			          	'id'   => 'box_button_background_gradient_bottom_color'
			          ),
			          array(
			          	'name' => 'Text color',
			          	'id'   => 'box_button_text_color'
			          ),
			          array(
			          	'name' => 'Border color',
			          	'id'   => 'box_button_border_color'
			          )
				)
			),
			array(
				'name' => 'Box -> Button Hover prev/next',
				'content' => array(
			          array(
			          	'name' => 'Background color',
			          	'id'   => 'box_button_hover_background_color'
			          ),
			          array(
			          	'name' => 'Background gradient top color',
			          	'id'   => 'box_button_hover_background_gradient_top_color'
			          ),
			          array(
			          	'name' => 'Background gradient bottom color',
			          	'id'   => 'box_button_hover_background_gradient_bottom_color'
			          ),
			          array(
			          	'name' => 'Text color',
			          	'id'   => 'box_button_hover_text_color'
			          ),
			          array(
			          	'name' => 'Border color',
			          	'id'   => 'box_button_hover_border_color'
			          )
				)
			),
			array(
				'name' => 'Box on left/right column',
				'content' => array(
			          array(
			          	'name' => 'Background color',
			          	'id'   => 'box_left_background_color'
			          ),
			          array(
			          	'name' => 'Border color',
			          	'id'   => 'box_left_border_color'
			          ),
			          array(
			          	'name' => 'Border 1px color',
			          	'id'   => 'box_left_border_1_color'
			          ),
			          array(
			          	'name' => 'Text color',
			          	'id'   => 'box_left_text_color'
			          ),
			          array(
			          	'name' => 'Links color',
			          	'id'   => 'box_left_links_color'
			          ),
			          array(
			          	'name' => 'Links hover color',
			          	'id'   => 'box_left_links_hover_color'
			          )
				)
			),
			array(
				'name' => 'Box on left/right column -> Heading',
				'content' => array(
			          array(
			          	'name' => 'Background color',
			          	'id'   => 'box_left_heading_background_color'
			          ),
			          array(
			          	'name' => 'Text color',
			          	'id'   => 'box_left_heading_text_color'
			          ),
			          array(
			          	'name' => 'Border bottom color',
			          	'id'   => 'box_left_heading_border_bottom_color'
			          )
				)
			),
			array(
				'name' => 'Box categories',
				'content' => array(
			          array(
			          	'name' => 'Background color',
			          	'id'   => 'box_categories_background_color'
			          ),
			          array(
			          	'name' => 'Border 2px color',
			          	'id'   => 'box_categories_border_color'
			          ),
			          array(
			          	'name' => 'Border 1px color',
			          	'id'   => 'box_categories_border_1px_color'
			          ),
			          array(
			          	'name' => 'Link border top color',
			          	'id'   => 'box_categories_link_border_top_color'
			          ),
			          array(
			          	'name' => 'Links color',
			          	'id'   => 'box_categories_links_color'
			          ),
			          array(
			          	'name' => 'Links hover color',
			          	'id'   => 'box_categories_links_hover_color'
			          ),
			          array(
			          	'name' => 'Links active color',
			          	'id'   => 'box_categories_links_active_color'
			          ),
			          array(
			          	'name' => 'Links hover background color',
			          	'id'   => 'box_categories_links_hover_background_color'
			          ),
			          array(
			          	'name' => 'Bullet color',
			          	'id'   => 'box_categories_bullet_color'
			          )
				)
			),
			array(
				'name' => 'Box categories -> Heading',
				'content' => array(
			          array(
			          	'name' => 'Background color',
			          	'id'   => 'box_categories_heading_background_color'
			          ),
			          array(
			          	'name' => 'Background gradient top color',
			          	'id'   => 'box_categories_heading_background_gradient_top_color'
			          ),
			          array(
			          	'name' => 'Background gradient bottom color',
			          	'id'   => 'box_categories_heading_background_gradient_bottom_color'
			          ),
			          array(
			          	'name' => 'Text color',
			          	'id'   => 'box_categories_heading_text_color'
			          )
				)
			),
			array(
				'name' => 'Box with products',
				'content' => array(
			          array(
			          	'name' => 'Background color',
			          	'id'   => 'box_with_products_background_color'
			          ),
			          array(
			          	'name' => 'Border color',
			          	'id'   => 'box_with_products_border_color'
			          ),
			          array(
			          	'name' => 'Text color',
			          	'id'   => 'box_with_products_text_color'
			          ),
			          array(
			          	'name' => 'Links color',
			          	'id'   => 'box_with_products_links_color'
			          ),
			          array(
			          	'name' => 'Links hover color',
			          	'id'   => 'box_with_products_links_hover_color'
			          ),
			          array(
			          	'name' => 'Heading color',
			          	'id'   => 'box_with_products_heading_color'
			          ),
			          array(
			          	'name' => 'Heading border bottom color',
			          	'id'   => 'box_with_products_heading_border_bottom_color'
			          )
				)
			),
			array(
				'name' => 'MegaFilter',
				'content' => array(
			          array(
			          	'name' => 'Bullets background color',
			          	'id'   => 'megafilter_bullets_background_color'
			          ),
			          array(
			          	'name' => 'Background color of slider',
			          	'id'   => 'megafilter_background_color_of_slider'
			          )
			     )
			),
			array(
				'name' => 'Tabs',
				'content' => array(
			          array(
			          	'name' => 'Link active color',
			          	'id'   => 'tabs_link_active'
			          ),
			          array(
			          	'name' => 'Link active border bottom color',
			          	'id'   => 'tabs_link_active_border_bottom_color'
			          ),
			          array(
			          	'name' => 'Links color',
			          	'id'   => 'tabs_links_color'
			          )
			     )
			),
			array(
				'name' => 'Category Wall',
				'content' => array(
			          array(
			          	'name' => 'Heading border bottom color',
			          	'id'   => 'category_wall_heading_border_bottom_color'
			          )
			     )
			),
			array(
				'name' => 'Category Wall -> Button',
				'content' => array(
			          array(
			          	'name' => 'Background color',
			          	'id'   => 'category_wall_button_background_color'
			          ),
			          array(
			          	'name' => 'Border color',
			          	'id'   => 'category_wall_button_border_color'
			          ),
			          array(
			          	'name' => 'Text color',
			          	'id'   => 'category_wall_button_text_color'
			          )
			     )
			),
			array(
				'name' => 'Category Wall -> Button Hover',
				'content' => array(
			          array(
			          	'name' => 'Background color',
			          	'id'   => 'category_wall_button_hover_background_color'
			          ),
			          array(
			          	'name' => 'Border color',
			          	'id'   => 'category_wall_button_hover_border_color'
			          ),
			          array(
			          	'name' => 'Text color',
			          	'id'   => 'category_wall_button_hover_text_color'
			          )
			     )
			),
			array(
				'name' => 'Popup',
				'content' => array(
			          array(
			          	'name' => 'Heading border bottom color',
			          	'id'   => 'popup_heading_border_bottom_color'
			          )
			     )
			),
			array(
				'name' => 'Popup -> Newsletter',
				'content' => array(
				     array(
				     	'name' => 'Input text color',
				     	'id'   => 'popup_newsletter_input_text_color'
				     ),
			          array(
			          	'name' => 'Input background color',
			          	'id'   => 'popup_newsletter_input_background_color'
			          ),
			          array(
			          	'name' => 'Input focus background color',
			          	'id'   => 'popup_newsletter_input_focus_background_color'
			          ),
			          array(
			          	'name' => 'Subscribe button text color',
			          	'id'   => 'popup_newsletter_subscribe_button_text_color'
			          ),
			          array(
			          	'name' => 'Subscribe button background color',
			          	'id'   => 'popup_newsletter_subscribe_button_background_color'
			          ),
			          array(
			          	'name' => 'Subscribe button hover text color',
			          	'id'   => 'popup_newsletter_subscribe_button_hover_text_color'
			          ),
			          array(
			          	'name' => 'Subscribe button hover background color',
			          	'id'   => 'popup_newsletter_subscribe_button_hover_background_color'
			          )
			     )
			),
			array(
				'name' => 'Popup -> Close Button',
				'content' => array(
			          array(
			          	'name' => 'Background color',
			          	'id'   => 'popup_close_button_background_color'
			          ),
			          array(
			          	'name' => 'Border color',
			          	'id'   => 'popup_close_button_border_color'
			          ),
			          array(
			          	'name' => 'Text color',
			          	'id'   => 'popup_close_button_text_color'
			          )
			     )
			),
			array(
				'name' => 'Popup -> Close Button Hover',
				'content' => array(
			          array(
			          	'name' => 'Background color',
			          	'id'   => 'popup_close_button_hover_background_color'
			          ),
			          array(
			          	'name' => 'Border color',
			          	'id'   => 'popup_close_button_hover_border_color'
			          ),
			          array(
			          	'name' => 'Text color',
			          	'id'   => 'popup_close_button_hover_text_color'
			          )
			     )
			),
			array(
				'name' => 'Slider',
				'content' => array(
			          array(
			          	'name' => 'Background color',
			          	'id'   => 'slider_background_color'
			          ),
			          array(
			          	'name' => 'Loader background color',
			          	'id'   => 'slider_loader_background_color'
			          ),
			          array(
			          	'name' => 'Border bottom 4px color',
			          	'id'   => 'slider_border_bottom_4px_color'
			          )
			     )
			),
			array(
				'name' => 'Slider -> Buttons prev/next',
				'content' => array(
			          array(
			          	'name' => 'Background color',
			          	'id'   => 'slider_buttons_background_color'
			          ),
			          array(
			          	'name' => 'Border color',
			          	'id'   => 'slider_buttons_border_color'
			          ),
			          array(
			          	'name' => 'Icon color',
			          	'id'   => 'slider_buttons_icon_color'
			          )
			     )
			),
			array(
				'name' => 'Slider -> Buttons hover prev/next',
				'content' => array(
			          array(
			          	'name' => 'Background color',
			          	'id'   => 'slider_buttons_hover_background_color'
			          ),
			          array(
			          	'name' => 'Border color',
			          	'id'   => 'slider_buttons_hover_border_color'
			          ),
			          array(
			          	'name' => 'Icon color',
			          	'id'   => 'slider_buttons_hover_icon_color'
			          )
			     )
			),
			array(
				'name' => 'Sale badges',
				'content' => array(
					array(
						'name' => 'Color text',
						'id'   => 'sale_color_text'
					),
					array(
						'name' => 'Border color',
						'id'   => 'sale_border_color'
					),
					array(
						'name' => 'Background color',
						'id'   => 'sale_background_color'
					),
					array(
						'name' => 'Background gradient top',
						'id'   => 'sale_background_gradient_top'
					),
					array(
						'name' => 'Background gradient bottom',
						'id'   => 'sale_background_gradient_bottom'
					)
				)
			),
			array(
				'name' => 'New badges',
				'content' => array(
					array(
						'name' => 'Color text',
						'id'   => 'new_color_text'
					),
					array(
						'name' => 'Border color',
						'id'   => 'new_border_color'
					),
					array(
						'name' => 'Background color',
						'id'   => 'new_background_color'
					),
					array(
						'name' => 'Background gradient top',
						'id'   => 'new_background_gradient_top'
					),
					array(
						'name' => 'Background gradient bottom',
						'id'   => 'new_background_gradient_bottom'
					)
				)
			),
			array(
				'name' => 'Ratings icon',
				'content' => array(
				     array(
				     	'name' => 'Background color',
				     	'id'   => 'ratings_background_color'
				     ),
					array(
						'name' => 'Background gradient top',
						'id'   => 'ratings_background_gradient_top'
					),
					array(
						'name' => 'Background gradient bottom',
						'id'   => 'ratings_background_gradient_bottom'
					),
					array(
						'name' => 'Active background color',
						'id'   => 'ratings_active_background_color'
					),
					array(
						'name' => 'Active background gradient top',
						'id'   => 'ratings_active_background_gradient_top'
					),
					array(
						'name' => 'Active background gradient bottom',
						'id'   => 'ratings_active_background_gradient_bottom'
					)
				)
			),
			array(
				'name' => 'Button',
				'content' => array(
					array(
						'name' => 'Color text',
						'id'   => 'buttons_color_text'
					),
					array(
						'name' => 'Border color',
						'id'   => 'buttons_border_color'
					),
					array(
						'name' => 'Background color',
						'id'   => 'buttons_background_color'
					),
					array(
						'name' => 'Background gradient top',
						'id'   => 'buttons_background_gradient_top'
					),
					array(
						'name' => 'Background gradient bottom',
						'id'   => 'buttons_background_gradient_bottom'
					)
				)
			),
			array(
				'name' => 'Button Hover',
				'content' => array(
					array(
						'name' => 'Color text',
						'id'   => 'buttons_hover_color_text'
					),
					array(
						'name' => 'Background color',
						'id'   => 'buttons_hover_background_color'
					),
					array(
						'name' => 'Border color',
						'id'   => 'buttons_hover_border_color'
					),
					array(
						'name' => 'Background gradient top',
						'id'   => 'buttons_hover_background_gradient_top'
					),
					array(
						'name' => 'Background gradient bottom',
						'id'   => 'buttons_hover_background_gradient_bottom'
					)
				)
			),
			array(
				'name' => 'Second Button',
				'content' => array(
					array(
						'name' => 'Color text',
						'id'   => 'second_buttons_color_text'
					),
					array(
						'name' => 'Border color',
						'id'   => 'second_buttons_border_color'
					),
					array(
						'name' => 'Background color',
						'id'   => 'second_buttons_background_color'
					),
					array(
						'name' => 'Background gradient top',
						'id'   => 'second_buttons_background_gradient_top'
					),
					array(
						'name' => 'Background gradient bottom',
						'id'   => 'second_buttons_background_gradient_bottom'
					)
				)
			),
			array(
				'name' => 'Second Button Hover',
				'content' => array(
					array(
						'name' => 'Color text',
						'id'   => 'second_buttons_hover_color_text'
					),
					array(
						'name' => 'Border color',
						'id'   => 'second_buttons_hover_border_color'
					),
					array(
						'name' => 'Background color',
						'id'   => 'second_buttons_hover_background_color'
					),
					array(
						'name' => 'Background gradient top',
						'id'   => 'second_buttons_hover_background_gradient_top'
					),
					array(
						'name' => 'Background gradient bottom',
						'id'   => 'second_buttons_hover_background_gradient_bottom'
					)
				)
			),
			array(
				'name' => 'CustomFooter',
				'content' => array(
					array(
						'name' => 'Text color',
						'id'   => 'customfooter_color_text'
					),
					array(
						'name' => 'Heading color',
						'id'   => 'customfooter_color_heading'
					),
					array(
						'name' => 'Icon heading color',
						'id'   => 'customfooter_color_icon_heading'
					),
					array(
						'name' => 'Icon contact us color',
						'id'   => 'customfooter_color_icon_contact_us'
					),
					array(
						'name' => 'Border color',
						'id'   => 'customfooter_border_color'
					),
					array(
						'name' => 'Background color',
						'id'   => 'customfooter_background_color'
					)
				)
			),
			array(
				'name' => 'Footer',
				'content' => array(
					array(
						'name' => 'Text color',
						'id'   => 'footer_color_text'
					),
					array(
						'name' => 'Links color',
						'id'   => 'footer_color_links'
					),
					array(
						'name' => 'Links hover color',
						'id'   => 'footer_color_links_hover'
					),
					array(
						'name' => 'Heading color',
						'id'   => 'footer_color_heading'
					),
					array(
						'name' => 'Heading border bottom color',
						'id'   => 'footer_color_heading_border_bottom'
					),
					array(
						'name' => 'Background color',
						'id'   => 'footer_background_color'
					),
					array(
						'name' => 'Border color',
						'id'   => 'footer_border_color'
					)
				)
			),
			array(
				'name' => 'Footer -> Button',
				'content' => array(
					array(
						'name' => 'Color text',
						'id'   => 'footer_button_color_text'
					),
					array(
						'name' => 'Background color',
						'id'   => 'footer_button_background_color'
					),
					array(
						'name' => 'Background gradient top',
						'id'   => 'footer_button_background_gradient_top'
					),
					array(
						'name' => 'Background gradient bottom',
						'id'   => 'footer_button_background_gradient_bottom'
					)
				)
			),
			array(
				'name' => 'Footer -> Button Hover',
				'content' => array(
					array(
						'name' => 'Color text',
						'id'   => 'footer_button_hover_color_text'
					),
					array(
						'name' => 'Background color',
						'id'   => 'footer_button_hover_background_color'
					),
					array(
						'name' => 'Background gradient top',
						'id'   => 'footer_button_hover_background_gradient_top'
					),
					array(
						'name' => 'Background gradient bottom',
						'id'   => 'footer_button_hover_background_gradient_bottom'
					)
				)
			),
			array(
				'name' => 'Blog',
				'content' => array(
					array(
						'name' => 'Date text',
						'id'   => 'blog_date_text'
					),
					array(
						'name' => 'Categories links color',
						'id'   => 'blog_categories_links_color'
					),
					array(
						'name' => 'Categories links hover color',
						'id'   => 'blog_categories_links_hover_color'
					)
				)
			),
			array(
				'name' => 'Blog -> Tag',
				'content' => array(
					array(
						'name' => 'Text color',
						'id'   => 'blog_tag_text_color'
					),
					array(
						'name' => 'Background color',
						'id'   => 'blog_tag_background_color'
					),
					array(
						'name' => 'Background gradient top color',
						'id'   => 'blog_tag_background_gradient_top_color'
					),
					array(
						'name' => 'Background gradient bottom color',
						'id'   => 'blog_tag_background_gradient_bottom_color'
					)
				)
			),
			array(
				'name' => 'Blog -> Tag Hover',
				'content' => array(
					array(
						'name' => 'Text color',
						'id'   => 'blog_tag_hover_text_color'
					),
					array(
						'name' => 'Background color',
						'id'   => 'blog_tag_hover_background_color'
					),
					array(
						'name' => 'Background gradient top color',
						'id'   => 'blog_tag_hover_background_gradient_top_color'
					),
					array(
						'name' => 'Background gradient bottom color',
						'id'   => 'blog_tag_hover_background_gradient_bottom_color'
					)
				)
			),
			array(
				'name' => 'Blog -> Button',
				'content' => array(
			          array(
			          	'name' => 'Background color',
			          	'id'   => 'blog_button_background_color'
			          ),
			          array(
			          	'name' => 'Border color',
			          	'id'   => 'blog_button_border_color'
			          ),
			          array(
			          	'name' => 'Text color',
			          	'id'   => 'blog_button_text_color'
			          )
			     )
			),
			array(
				'name' => 'Blog -> Button Hover',
				'content' => array(
			          array(
			          	'name' => 'Background color',
			          	'id'   => 'blog_button_hover_background_color'
			          ),
			          array(
			          	'name' => 'Border color',
			          	'id'   => 'blog_button_hover_border_color'
			          ),
			          array(
			          	'name' => 'Text color',
			          	'id'   => 'blog_button_hover_text_color'
			          )
			     )
			)
		);
		
		foreach ($data['colors_data'] as $colors) {
			foreach($colors['content'] as $color) {
				$data[$color['id']] = false;
			}
		}
		
		// Konfiguracja zmiennych
		$config_data = array(
			'main_layout',
			'header_layout',
			'slideshow_layout',
			'content_layout',
			'custom_footer_layout',
			'footer_layout',
			'breadcrumb_layout',
			
			'page_width',
			'max_width',
			'spacing_between_columns',
			
			'page_direction',
			
			'responsive_design',
			
			'add_to_compare_text',
			'add_to_wishlist_text',
			'checkout_text',
			'continue_shopping_text',
			'confirmation_text',
			'shopping_cart_text',
			'home_text',
			'welcome_text',
			'more_details_text',
			'quickview_text',
			'sale_text',
			'our_brands_text',
			'limited_time_offer_text',
			'new_text',
			'previous_product_text',
			'next_product_text',
			
			'hover_effect',
			'hover_effect_type',
			
			'header_type',
			'show_vertical_menu',
			'show_vertical_menu_category_page',
			'show_vertical_menu_product_page',
			'quick_search_autosuggest',
			'fixed_header',
			
			'product_per_pow',
			'product_per_pow2',
			'product_scroll_latest',
			'product_scroll_featured',
			'product_scroll_bestsellers',
			'product_scroll_specials',
			'product_scroll_related',
			'quick_view',
			'lazy_loading_images',
			'display_text_sale',
			'type_sale',
			'display_text_new',
			'product_image_effect',
			'display_add_to_compare',
			'display_add_to_wishlist',
			'display_add_to_cart',
			'display_specials_countdown',
			'default_list_grid',
			'refine_search_style',
			'refine_image_width',
			'refine_image_height',
			'refine_search_number',
			'product_breadcrumb',
			'product_image_zoom',
			'product_image_size',
			'position_image_additional',
			'product_social_share',
			'product_related_status',
			'product_page_radio_style',
			'product_page_radio_image_width',
			'product_page_radio_image_height',
			'product_page_checkbox_style',
			
			'custom_block',
			
			'customfooter',
			
			'breadcrumb_style',
			'category_box_style',
			'border_width',
			'footer_type',
			'countdown_special',
			'button_type',
			'sale_new_type',
			'header_margin_top',
			'box_type',
			'megamenu_label_type',
			'search_type_in_header',
			'megamenu_type',
			'product_page_type',
			'top_bar_type',
			'my_account_type',
			'cart_block_type',
			'inputs_type',
			'buttons_prev_next_in_slider',
			'products_buttons_action',
			'dropdown_menu_type',
			'product_grid_type',
			'product_list_type',
			
			'colors_status',
			'cart_icon',
			'cart_icon_hover',
			
			'background_status',
			'body_background',
			'body_background_background',
			'body_background_subtle_patterns',
			'body_background_position',
			'body_background_repeat',
			'body_background_attachment',
			'body2_background',
			'body2_background_background',
			'body2_background_subtle_patterns',
			'body2_background_position',
			'body2_background_repeat',
			'body2_background_attachment',
			'body3_background',
			'body3_background_background',
			'body3_background_subtle_patterns',
			'body3_background_position',
			'body3_background_repeat',
			'body3_background_attachment',
			'top_bar_background',
			'top_bar_background_background',
			'top_bar_background_subtle_patterns',
			'top_bar_background_position',
			'top_bar_background_repeat',
			'top_bar_background_attachment',
			'top_background',
			'top_background_background',
			'top_background_subtle_patterns',
			'top_background_position',
			'top_background_repeat',
			'top_background_attachment',
			'header_background',
			'header_background_background',
			'header_background_subtle_patterns',
			'header_background_position',
			'header_background_repeat',
			'header_background_attachment',
			'menu_background',
			'menu_background_background',
			'menu_background_subtle_patterns',
			'menu_background_position',
			'menu_background_repeat',
			'menu_background_attachment',
			'slider_background',
			'slider_background_background',
			'slider_background_subtle_patterns',
			'slider_background_position',
			'slider_background_repeat',
			'slider_background_attachment',
			'footer_background',
			'footer_background_background',
			'footer_background_subtle_patterns',
			'footer_background_position',
			'footer_background_repeat',
			'footer_background_attachment',
			'categories_heading_background',
			'categories_heading_background_background',
			'mobile_menu_navigation_background',
			'mobile_menu_navigation_background_background',
			'new_label_background_background',
			'new_label_background',
			'sale_label_background_background',
			'sale_label_background',
			'button_background_background',
			'button_background',
			'second_button_background_background',
			'second_button_background',
						
			'font_status',
			'categories_bar',
			'categories_bar_weight',
			'categories_bar_px',
			'categories_bar_line_height',
			'categories_bar_transform',
			'categories_submenu_heading',
			'categories_submenu_heading_weight',
			'categories_submenu_heading_px',
			'categories_submenu_heading_line_height',
			'categories_submenu_heading_transform',
			'categories_box_heading',
			'categories_box_heading_weight',
			'categories_box_heading_px',
			'categories_box_heading_line_height',
			'categories_box_heading_transform',
			'categories_box_links',
			'categories_box_links_weight',
			'categories_box_links_px',
			'categories_box_links_transform',
			'categories_box_links_line_height',
			'headlines',
			'headlines_weight',
			'headlines_px',
			'headlines_transform',
			'footer_headlines',
			'footer_headlines_weight',
			'footer_headlines_px',
			'footer_headlines_transform',
			'body_font',
			'body_font_px',
			'body_font_weight',
			'body_font_smaller_px',
			'body_font_very_small_px',
			'body_font_very_small_transform',
			'page_name',
			'page_name_weight',
			'page_name_px',
			'page_name_transform',
			'button_font',
			'button_font_weight',
			'button_font_px',
			'button_font_text_transform',
			'button_font_line_height',
			'sale_new_font',
			'sale_new_font_weight',
			'sale_new_font_px',
			'sale_new_font_text_transform',
			'sale_new_line_height',
			'custom_price',
			'custom_price_weight',
			'custom_price_px',
			'custom_price_px_medium',
			'custom_price_px_small',
			'custom_price_px_old_price',
			
			'product_image_zoom',
			
			'product_scroll_latest',
			'product_scroll_featured',
			'product_scroll_bestsellers',
			'product_scroll_specials',
			'product_scroll_related',
			
			'custom_code_css_status',
			'custom_code_css',
			'custom_code_javascript_status',
			'custom_code_js',
			
			'refine_image_width',
			'refine_image_height',
			
			'payment_status',
			'payment',
			
			'widget_facebook_status',
			'widget_facebook_id',
			'widget_facebook_position',
			'widget_twitter_status',
			'widget_twitter_id',
			'widget_twitter_user_name',
			'widget_twitter_position',
			'widget_twitter_limit',
			'widget_custom_status',
			'widget_custom_content',
			'widget_custom_position',
			
			'compressor_code_status',
			
			'select_demo'
		);
		
		foreach ($config_data as $conf) {
			$data[$conf] = false;
		}

		// Funkcja do usuwania katalogu
		function removeDir($path) { 
			$dir = new DirectoryIterator($path); 
			foreach ($dir as $fileinfo) { 
				if ($fileinfo->isFile() || $fileinfo->isLink()) { 
					unlink($fileinfo->getPathName()); 
				} elseif (!$fileinfo->isDot() && $fileinfo->isDir()) { 
					removeDir($fileinfo->getPathName()); 
				} 
			} 
			rmdir($path); 
		}
		
  		// halona MUTLI STORE
  		
			if (isset($this->request->post['store_id'])) {
				$data['store_id'] = $this->request->post['store_id'];
			} else {
				$data['store_id'] = $this->config->get('d_store_id');
			}

			$data['stores'] = array();
			
			$this->load->model('setting/store');
			
			$results = $this->model_setting_store->getStores();
			
			$data['stores'][] = array(
				'name' => 'Default',
				'href' => '',
				'store_id' => 0
			);
				
			foreach ($results as $result) {
				$data['stores'][] = array(
					'name' => $result['name'],
					'href' => $result['url'],
					'store_id' => $result['store_id']
				);
			}		
			
			
			if(isset($_GET['store_id'])) {
				$data['store_id'] = $_GET['store_id'];
			} else {
				if (isset($_GET['submit'])) {
					$data['store_id'] = $data['store_id'];
				} else {
					if (isset($this->request->post['store_id'])) {
						$data['store_id'] = $this->request->post['store_id'];
					} else {
						$data['store_id'] = 0;
					}
				}
			}
			
			if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
				$data['array'] = array(
					'd_store_id' => $this->request->post['store_id']
				);
				$this->model_setting_setting->editSetting('d_id_store', $data['array']);	
			}
			
		// END MULTISTORE
		
		// Pobieranie informacji, ktora skorka jest wlaczona	
		$data['setting_skin'] = $this->model_setting_setting->getSetting('halona_skin', $data['store_id']);
		
		// Nadanie nazw sklepom 
		if($data['store_id'] == 0) {
			$data['edit_skin_store'] = 'default';
		} else {
			$data['edit_skin_store'] = $data['store_id'];
		}
		
		// Aktywna skorka
		if(isset($data['setting_skin']['halona_skin'])) {
			$data['active_skin'] = $data['setting_skin']['halona_skin'];
		} else {
			$data['active_skin'] = 'default';
		}
		
		if(!file_exists(DIR_CATALOG . 'view/theme/halona/skins/store_'.$data['edit_skin_store'].'/'.$data['active_skin'].'')) {
			$data['active_skin'] = false;
		}
		
		// Tworzenie listy skorek
		if(file_exists(DIR_CATALOG . 'view/theme/halona/skins/store_'.$data['edit_skin_store'].'/')) {
			$data['skins'] = array();
			$dir = opendir(DIR_CATALOG . 'view/theme/halona/skins/store_'.$data['edit_skin_store'].'/');
			while(false !== ($file = readdir($dir))) {
				if(is_dir(DIR_CATALOG . 'view/theme/halona/skins/store_'.$data['edit_skin_store'].'/'.$file) && $file != '.' && $file != '..')  {
					$data['skins'][] = $file;
				}
			}
			sort($data['skins']);
		}
		
		// Edycja skorki - sprawdzanie jaki szablon jest edytowany
		if(isset($data['setting_skin']['halona_skin'])) {
			$data['active_skin_edit'] = $data['setting_skin']['halona_skin'];
		} else {
			$data['active_skin_edit'] = 'default';
		}
		
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			if(isset($_POST['button-edit']) || isset($_POST['button-delete'])){
				$data['active_skin_edit'] = $this->request->post['skin'];
			}
		}
		
		if(isset($this->request->post['save_skin']) && !isset($_POST['button-edit']) && !isset($_POST['button-delete'])) {
			$data['active_skin_edit'] = $this->request->post['save_skin'];
		}
		
		if(isset($_GET['skin_edit'])) {
			$data['active_skin_edit'] = $_GET['skin_edit'];
		}
			
		// Zmiana skorki
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			if(isset($_POST['button-active'])){
				$save_halona_skin = array(
					'halona_skin' => $this->request->post['skin']
				);
				$this->model_setting_setting->editSetting('halona_skin', $save_halona_skin, $this->request->post['store_id']);	
				$this->session->data['success'] = $this->language->get('text_success');
				$this->response->redirect($this->url->link('extension/module/halona&submit=true&store_id=' . $data['store_id'] . '', 'user_token=' . $this->session->data['user_token'], true));
            }
		}
		
		// Dodawanie skorki
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			if(isset($_POST['add-skin'])){
				if(is_writable(DIR_CATALOG . 'view/theme/halona/skins/') && (is_writable(DIR_CATALOG . 'view/theme/halona/skins/store_'.$data['edit_skin_store'].'/') || !file_exists(DIR_CATALOG . 'view/theme/halona/skins/store_'.$data['edit_skin_store'].'/'))) {
					// Sprawdzanie czy istnieje folder store_ 
					if(file_exists(DIR_CATALOG . 'view/theme/halona/skins/store_'.$data['edit_skin_store'].'/') && filetype(DIR_CATALOG . 'view/theme/halona/skins/store_'.$data['edit_skin_store'].'/') == 'dir') {
					} else {
						mkdir(DIR_CATALOG . 'view/theme/halona/skins/store_'.$data['edit_skin_store'].'/', 0777);
					}
					
					// Dodawanie pliku z ustawieniami
					if($this->request->post['add-skin-name'] != '') {	
						if(!file_exists(DIR_CATALOG . 'view/theme/halona/skins/store_'.$data['edit_skin_store'].'/'.$this->request->post['add-skin-name'].'/')) {
							mkdir(DIR_CATALOG . 'view/theme/halona/skins/store_'.$data['edit_skin_store'].'/'.$this->request->post['add-skin-name'].'/', 0777);
							file_put_contents(DIR_CATALOG . 'view/theme/halona/skins/store_'.$data['edit_skin_store'].'/'.$this->request->post['add-skin-name'].'/settings.json', json_encode($config_data));
							mkdir(DIR_CATALOG . 'view/theme/halona/skins/store_'.$data['edit_skin_store'].'/'.$this->request->post['add-skin-name'].'/js/', 0777);
							file_put_contents(DIR_CATALOG . 'view/theme/halona/skins/store_'.$data['edit_skin_store'].'/'.$this->request->post['add-skin-name'].'/js/custom_code.js', ' ');
							mkdir(DIR_CATALOG . 'view/theme/halona/skins/store_'.$data['edit_skin_store'].'/'.$this->request->post['add-skin-name'].'/css/', 0777);
							file_put_contents(DIR_CATALOG . 'view/theme/halona/skins/store_'.$data['edit_skin_store'].'/'.$this->request->post['add-skin-name'].'/css/custom_code.css', ' ');
							$this->session->data['success'] = $this->language->get('text_success');
							$this->response->redirect($this->url->link('extension/module/halona&submit=true&store_id=' . $data['store_id'] . '', 'user_token=' . $this->session->data['user_token'], true));
						}
					}  
				}

				$this->session->data['error_warning'] = 'You need to set CHMOD 777 for all folder and subfolder in catalog/view/theme/halona/skins!';
				$this->response->redirect($this->url->link('extension/module/halona&submit=true&store_id=' . $data['store_id'] . '', 'user_token=' . $this->session->data['user_token'], true));
		    }
		}
		
		// Zapisywanie skorki
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			if(isset($_POST['button-save'])){
				if(is_writable(DIR_CATALOG . 'view/theme/halona/skins') && is_writable(DIR_CATALOG . 'view/theme/halona/skins/store_'.$data['edit_skin_store']) && is_writable(DIR_CATALOG . 'view/theme/halona/skins/store_'.$data['edit_skin_store'].'/'.$data['active_skin_edit'])) {
					// Sprawdzanie czy istnieje skorka
					if(file_exists(DIR_CATALOG . 'view/theme/halona/skins/store_'.$data['edit_skin_store'].'/') && filetype(DIR_CATALOG . 'view/theme/halona/skins/store_'.$data['edit_skin_store'].'/') == 'dir' && file_exists(DIR_CATALOG . 'view/theme/halona/skins/store_'.$data['edit_skin_store'].'/'.$data['active_skin_edit'].'')) {
						// Zapisywanie ustawien
						file_put_contents(DIR_CATALOG . 'view/theme/halona/skins/store_'.$data['edit_skin_store'].'/'.$data['active_skin_edit'].'/settings.json', json_encode($this->request->post));  
						
						// Custom js
						file_put_contents(DIR_CATALOG . 'view/theme/halona/skins/store_'.$data['edit_skin_store'].'/'.$data['active_skin_edit'].'/js/custom_code.js', html_entity_decode($this->request->post['custom_code_js']));  
						
						// Custom css
						file_put_contents(DIR_CATALOG . 'view/theme/halona/skins/store_'.$data['edit_skin_store'].'/'.$data['active_skin_edit'].'/css/custom_code.css', html_entity_decode($this->request->post['custom_code_css']));  
						
						// Informacja o zapisaniu ustawien
						$this->session->data['success'] = $this->language->get('text_success');
						$this->response->redirect($this->url->link('extension/module/halona&submit=true&store_id=' . $data['store_id'] . '&skin_edit=' . $data['active_skin_edit'] . '', 'user_token=' . $this->session->data['user_token'], true));
					}
				}
				
				// Jezeli nie istnieje katalog skorki to pojawia sie komunikat o bledzie
				$this->session->data['error_warning'] = 'You need to set CHMOD 777 for all folder and subfolder in catalog/view/theme/halona/skins!';
				$this->response->redirect($this->url->link('extension/module/halona&submit=true&store_id=' . $data['store_id'] . '', 'user_token=' . $this->session->data['user_token'], true));
			}
			if(isset($_POST['button-save-live-editor'])){

                // Pobieranie ustawien szablonu
                if(file_exists(DIR_CATALOG . 'view/theme/halona/skins/store_'.$data['edit_skin_store'].'/'.$data['active_skin_edit'].'/settings.json')) {
                    $template_temp = json_decode(file_get_contents(DIR_CATALOG . 'view/theme/halona/skins/store_'.$data['edit_skin_store'].'/'.$data['active_skin_edit'].'/settings.json'), true);
                    $data_temp = array();
                    if(isset($template_temp)) {
                        foreach ($template_temp as $option => $value) { 
                            if($option != 'store_id') {
                                $data_temp[$option] = $value;
                            }
                        }
                    }
                }
                
                $this->request->post = array_replace($data_temp, $this->request->post);
                
				if(is_writable(DIR_CATALOG . 'view/theme/halona/skins') && is_writable(DIR_CATALOG . 'view/theme/halona/skins/store_'.$data['edit_skin_store']) && is_writable(DIR_CATALOG . 'view/theme/halona/skins/store_'.$data['edit_skin_store'].'/'.$data['active_skin_edit'])) {
					// Sprawdzanie czy istnieje skorka
					if(file_exists(DIR_CATALOG . 'view/theme/halona/skins/store_'.$data['edit_skin_store'].'/') && filetype(DIR_CATALOG . 'view/theme/halona/skins/store_'.$data['edit_skin_store'].'/') == 'dir' && file_exists(DIR_CATALOG . 'view/theme/halona/skins/store_'.$data['edit_skin_store'].'/'.$data['active_skin_edit'].'')) {
						// Zapisywanie ustawien
						file_put_contents(DIR_CATALOG . 'view/theme/halona/skins/store_'.$data['edit_skin_store'].'/'.$data['active_skin_edit'].'/settings.json', json_encode($this->request->post));  
						
						// Informacja o zapisaniu ustawien
						$this->session->data['success'] = $this->language->get('text_success');
						$this->response->redirect($this->url->link('extension/module/halona&submit=true&store_id=' . $data['store_id'] . '&skin_edit=' . $data['active_skin_edit'] . '', 'live_editor=true&store_id='.$data['store_id'].'&user_token=' . $this->session->data['user_token'], true));
					}
				}
				
				// Jezeli nie istnieje katalog skorki to pojawia sie komunikat o bledzie
				$this->session->data['error_warning'] = 'You need to set CHMOD 777 for all folder and subfolder in catalog/view/theme/halona/skins!';
				$this->response->redirect($this->url->link('extension/module/halona&submit=true&store_id=' . $data['store_id'] . '', 'live_editor=true&store_id='.$data['store_id'].'&user_token=' . $this->session->data['user_token'], true));
			}
		}
		
		// Usuwanie skorki
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			if(isset($_POST['button-delete'])){
				if(is_writable(DIR_CATALOG . 'view/theme/halona/skins')) {
					// Sprawdzanie czy istnieje skorka
					if(file_exists(DIR_CATALOG . 'view/theme/halona/skins/store_'.$data['edit_skin_store'].'/') && filetype(DIR_CATALOG . 'view/theme/halona/skins/store_'.$data['edit_skin_store'].'/') == 'dir' && file_exists(DIR_CATALOG . 'view/theme/halona/skins/store_'.$data['edit_skin_store'].'/'.$data['active_skin_edit'].'')) {
						// Sprawdzanie czy skorka jest ustawiona jako aktywna
						if($data['active_skin_edit'] != $data['active_skin']) {
							removeDir(DIR_CATALOG . 'view/theme/halona/skins/store_'.$data['edit_skin_store'].'/'.$data['active_skin_edit'].'');
							
							// Informacja o usunieciu skorki
							$this->session->data['success'] = $this->language->get('text_success');
							$this->response->redirect($this->url->link('extension/module/halona&submit=true&store_id=' . $data['store_id'] . '', 'user_token=' . $this->session->data['user_token'], true));
						}
					}
				} else {
					$this->session->data['error_warning'] = 'You need to set CHMOD 777 for all folder and subfolder in catalog/view/theme/halona/skins!';
					$this->response->redirect($this->url->link('extension/module/halona&submit=true&store_id=' . $data['store_id'] . '', 'user_token=' . $this->session->data['user_token'], true));
				}
				
				// Jezeli nie usunieto szablonu to pojawia sie blad
				$this->session->data['error_warning'] = $this->language->get('text_warning2');
				$this->response->redirect($this->url->link('extension/module/halona&submit=true&store_id=' . $data['store_id'] . '', 'user_token=' . $this->session->data['user_token'], true));
			}
		}
		
		// Pobieranie ustawien szablonu
		if(file_exists(DIR_CATALOG . 'view/theme/halona/skins/store_'.$data['edit_skin_store'].'/'.$data['active_skin_edit'].'/settings.json')) {
			$template = json_decode(file_get_contents(DIR_CATALOG . 'view/theme/halona/skins/store_'.$data['edit_skin_store'].'/'.$data['active_skin_edit'].'/settings.json'), true);
			if(isset($template)) {
				foreach ($template as $option => $value) { 
					if($option != 'store_id') {
						$data[$option] = $value;
					}
				}
			}
		}
				
		// Pobieranie ustawien szablon --> custom code js
		if(file_exists(DIR_CATALOG . 'view/theme/halona/skins/store_'.$data['edit_skin_store'].'/'.$data['active_skin_edit'].'/js/custom_code.js')) {
			$data['custom_code_js'] = file_get_contents(DIR_CATALOG . 'view/theme/halona/skins/store_'.$data['edit_skin_store'].'/'.$data['active_skin_edit'].'/js/custom_code.js');
		}
		
		// Pobieranie ustawien szablon --> custom code css
		if(file_exists(DIR_CATALOG . 'view/theme/halona/skins/store_'.$data['edit_skin_store'].'/'.$data['active_skin_edit'].'/css/custom_code.css')) {
			$data['custom_code_css'] = file_get_contents(DIR_CATALOG . 'view/theme/halona/skins/store_'.$data['edit_skin_store'].'/'.$data['active_skin_edit'].'/css/custom_code.css');
		}
		
		$data['text_image_manager'] = 'Image manager';
		$data['user_token'] = $this->session->data['user_token'];		
		
		$text_strings = array('heading_title');
		
		foreach ($text_strings as $text) {
			$data[$text] = $this->language->get($text);
		}
		
		
		// Instalacja przykladowych danych
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {	
		     // Custom Module
		     if(isset($_POST['install_advanced_grid'])){
		          $output["select_demo"] = $this->request->post['select_demo'];
		          $this->model_setting_setting->editSetting( "select_demo", $output );	
		          
		          include '../data_sample/halona/' . $this->request->post['select_demo'] . '/advanced_grid.php'; 
		          
		     	$this->session->data['success'] = $this->language->get('text_success');
		     	$this->response->redirect($this->url->link('extension/module/halona', 'user_token=' . $this->session->data['user_token'], true));
		     }
		     
		     // Breadcrumb background image
		     if(isset($_POST['install_breadcrumb_background_image'])){     
		          $output["select_demo"] = $this->request->post['select_demo'];
		          $this->model_setting_setting->editSetting( "select_demo", $output );	
		          
		          include '../data_sample/halona/' . $this->request->post['select_demo'] . '/breadcrumb_background_image.php'; 
		          
		     	$this->session->data['success'] = $this->language->get('text_success');
		     	$this->response->redirect($this->url->link('extension/module/halona', 'user_token=' . $this->session->data['user_token'], true));
		     }
		     
		     // Filter product
		     if(isset($_POST['install_filter_product'])){
		          $output["select_demo"] = $this->request->post['select_demo'];
		          $this->model_setting_setting->editSetting( "select_demo", $output );	
		          
		          include '../data_sample/halona/' . $this->request->post['select_demo'] . '/filter_product.php'; 
		          
		     	$this->session->data['success'] = $this->language->get('text_success');
		     	$this->response->redirect($this->url->link('extension/module/halona', 'user_token=' . $this->session->data['user_token'], true));
		     }
		     
		     // Header notice
		     if(isset($_POST['install_header_notice'])){
		          $output["select_demo"] = $this->request->post['select_demo'];
		          $this->model_setting_setting->editSetting( "select_demo", $output );	
		          
		          include '../data_sample/halona/' . $this->request->post['select_demo'] . '/header_notice.php'; 
		          
		     	$this->session->data['success'] = $this->language->get('text_success');
		     	$this->response->redirect($this->url->link('extension/module/halona', 'user_token=' . $this->session->data['user_token'], true));
		     }
		     
		     // Cookie module
		     if(isset($_POST['install_cookie_module'])){
		          $output["select_demo"] = $this->request->post['select_demo'];
		          $this->model_setting_setting->editSetting( "select_demo", $output );	
		          
		          include '../data_sample/halona/' . $this->request->post['select_demo'] . '/cookie_module.php'; 
		          
		     	$this->session->data['success'] = $this->language->get('text_success');
		     	$this->response->redirect($this->url->link('extension/module/halona', 'user_token=' . $this->session->data['user_token'], true));
		     }
		     
		     // Product questions
		     if(isset($_POST['install_product_questions'])){
		          $output["select_demo"] = $this->request->post['select_demo'];
		          $this->model_setting_setting->editSetting( "select_demo", $output );	
		          
		          include '../data_sample/halona/' . $this->request->post['select_demo'] . '/product_questions.php'; 
		          
		     	$this->session->data['success'] = $this->language->get('text_success');
		     	$this->response->redirect($this->url->link('extension/module/halona', 'user_token=' . $this->session->data['user_token'], true));
		     }
		     
		     // Faq
		     if(isset($_POST['install_faq'])){
		          $output["select_demo"] = $this->request->post['select_demo'];
		          $this->model_setting_setting->editSetting( "select_demo", $output );	
		          
		          include '../data_sample/halona/' . $this->request->post['select_demo'] . '/faq.php'; 
		          
		     	$this->session->data['success'] = $this->language->get('text_success');
		     	$this->response->redirect($this->url->link('extension/module/halona', 'user_token=' . $this->session->data['user_token'], true));
		     }
		     
		     // Popup
		     if(isset($_POST['install_popup'])){
		          $output["select_demo"] = $this->request->post['select_demo'];
		          $this->model_setting_setting->editSetting( "select_demo", $output );	
		          
		          include '../data_sample/halona/' . $this->request->post['select_demo'] . '/popup.php'; 
		          
		     	$this->session->data['success'] = $this->language->get('text_success');
		     	$this->response->redirect($this->url->link('extension/module/halona', 'user_token=' . $this->session->data['user_token'], true));
		     }
		     
		     // Product blocks
		     if(isset($_POST['install_product_blocks'])){
		          $output["select_demo"] = $this->request->post['select_demo'];
		          $this->model_setting_setting->editSetting( "select_demo", $output );	
		          
		          include '../data_sample/halona/' . $this->request->post['select_demo'] . '/product_blocks.php'; 
		          
		     	$this->session->data['success'] = $this->language->get('text_success');
		     	$this->response->redirect($this->url->link('extension/module/halona', 'user_token=' . $this->session->data['user_token'], true));
		     }
		     
			// Custom Module
			if(isset($_POST['install_custom_module'])){
			     $output["select_demo"] = $this->request->post['select_demo'];
			     $this->model_setting_setting->editSetting( "select_demo", $output );	
			     
			     include '../data_sample/halona/' . $this->request->post['select_demo'] . '/custom_module.php'; 
			     
				$this->session->data['success'] = $this->language->get('text_success');
				$this->response->redirect($this->url->link('extension/module/halona', 'user_token=' . $this->session->data['user_token'], true));
			}
			
			// Carousel item
			if(isset($_POST['install_carousel_item'])){
			     $output["select_demo"] = $this->request->post['select_demo'];
			     $this->model_setting_setting->editSetting( "select_demo", $output );	
			     
			     include '../data_sample/halona/' . $this->request->post['select_demo'] . '/carousel_item.php'; 
			     
				$this->session->data['success'] = $this->language->get('text_success');
				$this->response->redirect($this->url->link('extension/module/halona', 'user_token=' . $this->session->data['user_token'], true));
			}
			
			// Camera slider
			if(isset($_POST['install_camera_slider'])){
			     $output["select_demo"] = $this->request->post['select_demo'];
			     $this->model_setting_setting->editSetting( "select_demo", $output );	
			     
				include '../data_sample/halona/' . $this->request->post['select_demo'] . '/camera_slider_query.php'; 
				
				$this->session->data['success'] = $this->language->get('text_success');
				$this->response->redirect($this->url->link('extension/module/halona', 'user_token=' . $this->session->data['user_token'], true));
			}
			
			// Blog latest posts
			if(isset($_POST['install_blog_latest_posts'])){
			     $output["select_demo"] = $this->request->post['select_demo'];
			     $this->model_setting_setting->editSetting( "select_demo", $output );	
			     
			     include '../data_sample/halona/' . $this->request->post['select_demo'] . '/blog_latest_posts.php'; 
			     
				$this->session->data['success'] = $this->language->get('text_success');
				$this->response->redirect($this->url->link('extension/module/halona', 'user_token=' . $this->session->data['user_token'], true));
			}
			
			// BLOG
			if(isset($_POST['install_blog'])){
				
				$this->load->model('blog/setup');
				$this->model_blog_setup->installSampleData();
			    
				$this->session->data['success'] = $this->language->get('text_success');
				$this->response->redirect($this->url->link('extension/module/halona', 'user_token=' . $this->session->data['user_token'], true));
			}
			
			// Megamenu
			if(isset($_POST['install_megamenu'])){
			     $output["select_demo"] = $this->request->post['select_demo'];
			     $this->model_setting_setting->editSetting( "select_demo", $output );	
			     
				include '../data_sample/halona/' . $this->request->post['select_demo'] . '/megamenu_query.php'; 
				
				$this->session->data['success'] = $this->language->get('text_success');
				$this->response->redirect($this->url->link('extension/module/halona', 'user_token=' . $this->session->data['user_token'], true));
			}
		}
		
		// Pobieranie informacji, ktora wersja dema jest instalowana		
		$data['select_demos'] = $this->model_setting_setting->getSetting('select_demo');
		if(isset($data['select_demos']['select_demo'])) $data['select_demo'] = $data['select_demos']['select_demo'];
		
		//This creates an error message. The error['warning'] variable is set by the call to function validate() in this controller (below)
		if (isset($this->session->data['error_warning'])) {
			$data['error_warning'] = $this->session->data['error_warning'];
			unset($this->session->data['error_warning']);
 		} elseif(isset($this->error['warning'])) {
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

		$data['action'] = $this->url->link('extension/module/halona', 'user_token=' . $this->session->data['user_token'], true);
		$data['cancel'] = $this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'], true);
		
		// Multilanguage
		$this->load->model('localisation/language');
		$data['languages'] = $this->model_localisation_language->getLanguages();
		
		$data['breadcrumbs'] = array();
		
		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'user_token=' . $this->session->data['user_token'], true)
		);
		
		$data['breadcrumbs'][] = array(
			'text' => 'Modules',
			'href' => $this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'], true)
		);
				
		$data['breadcrumbs'][] = array(
			'text' => 'halona Theme Options',
			'href' => $this->url->link('extension/module/halona', 'user_token=' . $this->session->data['user_token'], true)
		);
				
		// No image
		$this->load->model('tool/image');
		$data['placeholder'] = $this->model_tool_image->resize('no_image.png', 100, 100);
        
        $data['live_editor_link'] = $this->url->link('extension/module/halona', 'live_editor=true&store_id='.$data['store_id'].'&user_token=' . $this->session->data['user_token'], true);
		$data['theme_options_link'] = $this->url->link('extension/module/halona', 'store_id='.$data['store_id'].'&user_token=' . $this->session->data['user_token'], true);	
        
        if(!isset($this->request->get['live_editor'])){
            $data['header'] = $this->load->controller('common/header');
            $data['column_left'] = $this->load->controller('common/column_left');
            $data['footer'] = $this->load->controller('common/footer');

            $this->response->setOutput($this->load->view('extension/module/halona', $data));
        }else{
            $data['header'] = $this->load->controller('common/header');
            $data['footer'] = $this->load->controller('common/footer');
            $front_url = new Url(HTTP_CATALOG, $this->config->get('config_secure') ? HTTP_CATALOG : HTTPS_CATALOG);
            $data['front_url'] = $front_url->link('common/home');
            $data['front_url'] = str_replace('admin/', '', $data['front_url']);
            $this->response->setOutput($this->load->view('extension/module/halona_live_editor', $data));
        }
        
		
	}

	private function validate() {
		if (!$this->user->hasPermission('modify', 'extension/module/halona')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		if (!$this->error) {
			return TRUE;
		} else {
			return FALSE;
		}	
	}
}
?>