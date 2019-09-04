<?php echo $header; ?>
<link href='https://fonts.googleapis.com/css?family=Poppins:700,600,500,400,300' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="view/stylesheet/css/colorpicker.css" />
<link rel="stylesheet" type="text/css" href="view/stylesheet/template_options.css" />
<link rel="stylesheet" type="text/css" href="view/stylesheet/live_editor.css" />
<script type="text/javascript" src="view/javascript/jquery/colorpicker.js"></script>
<script type="text/javascript" src="view/javascript/jquery/jquery.cookie.js"></script>
<div id="theme-options">
<div id="live-editor">
    
	<?php if ($error_warning) { ?>
		<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
		  <button type="button" class="close" data-dismiss="alert">&times;</button>
		</div>
	<?php } elseif ($success) {  ?>
		<div class="alert alert-success"><i class="fa fa-exclamation-circle"></i> <?php echo $success; ?>
			<button type="button" class="close" data-dismiss="alert">&times;</button>
		</div>
	<?php } ?>
    
    <div class="live-sidebar">
        <div class="live-title">
            Advanced Settings<br>
            <span>Live editor</span>
        </div>
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <!-- Elements -->
        <div class="section accordion">
            <div class="section-title">
                <h4>Header<br> section</h4>
                <div class="expander"></div>
            </div>
            <div class="section-content">
                <!-- Input -->
                <div class="input">
                   <p style="width:270px">Header margin top</p>
                   <select name="header_margin_top">
                       <option value="0"<?php if($header_margin_top =='0'){echo ' selected="selected"';} ?>>0px</option>
                       <option value="20"<?php if($header_margin_top =='20'){echo ' selected="selected"';} ?>>20px</option>
                       <option value="30"<?php if($header_margin_top =='30'){echo ' selected="selected"';} ?>>30px</option>
                       <option value="80"<?php if($header_margin_top =='80'){echo ' selected="selected"';} ?>>80px</option>
                   </select>
                   <div class="clear"></div>
                </div>


                <!-- Input -->
                <div class="input">
                   <p style="width:270px">Top Bar</p>
                   <select name="top_bar_type">
                       <option value="0"<?php if($top_bar_type =='0'){echo ' selected="selected"';} ?>>Default</option>
                       <option value="2"<?php if($top_bar_type =='2'){echo ' selected="selected"';} ?>>Type 2</option>
                       <option value="3"<?php if($top_bar_type =='3'){echo ' selected="selected"';} ?>>Type 3</option>
                       <option value="4"<?php if($top_bar_type =='4'){echo ' selected="selected"';} ?>>Type 4</option>
                   </select>
                   <div class="clear"></div>
                </div>

                <!-- Input -->
                <div class="input">
                   <p style="width:270px">My account</p>
                   <select name="my_account_type">
                       <option value="0"<?php if($my_account_type =='0'){echo ' selected="selected"';} ?>>Default</option>
                       <option value="2"<?php if($my_account_type =='2'){echo ' selected="selected"';} ?>>Type 2</option>
                       <option value="3"<?php if($my_account_type =='3'){echo ' selected="selected"';} ?>>Type 3</option>
                       <option value="4"<?php if($my_account_type =='4'){echo ' selected="selected"';} ?>>Type 4</option>
                       <option value="5"<?php if($my_account_type =='5'){echo ' selected="selected"';} ?>>Type 5</option>
                   </select>
                   <div class="clear"></div>
                </div>

                <!-- Input -->
                <div class="input">
                   <p style="width:270px">Cart block</p>
                   <select name="cart_block_type">
                       <option value="0"<?php if($cart_block_type =='0'){echo ' selected="selected"';} ?>>Default</option>
                       <option value="2"<?php if($cart_block_type =='2'){echo ' selected="selected"';} ?>>Type 2</option>
                       <option value="3"<?php if($cart_block_type =='3'){echo ' selected="selected"';} ?>>Type 3</option>
                       <option value="4"<?php if($cart_block_type =='4'){echo ' selected="selected"';} ?>>Type 4</option>
                       <option value="5"<?php if($cart_block_type =='5'){echo ' selected="selected"';} ?>>Type 5</option>
                       <option value="6"<?php if($cart_block_type =='6'){echo ' selected="selected"';} ?>>Type 6</option>
                       <option value="7"<?php if($cart_block_type =='7'){echo ' selected="selected"';} ?>>Type 7</option>
                       <option value="8"<?php if($cart_block_type =='8'){echo ' selected="selected"';} ?>>Type 8</option>
                       <option value="9"<?php if($cart_block_type =='9'){echo ' selected="selected"';} ?>>Type 9</option>
                       <option value="10"<?php if($cart_block_type =='10'){echo ' selected="selected"';} ?>>Type 10</option>
                       <option value="11"<?php if($cart_block_type =='11'){echo ' selected="selected"';} ?>>Type 11</option>
                   </select>
                   <div class="clear"></div>
                </div>


                <!-- Input -->
                <div class="input">
                   <p style="width:270px">Category box</p>
                   <select name="category_box_style">
                       <option value="0"<?php if($category_box_style =='0'){echo ' selected="selected"';} ?>>Default</option>
                       <option value="1"<?php if($category_box_style =='1'){echo ' selected="selected"';} ?>>Type 2</option>
                       <option value="2"<?php if($category_box_style =='2'){echo ' selected="selected"';} ?>>Type 3</option>
                       <option value="3"<?php if($category_box_style =='3'){echo ' selected="selected"';} ?>>Type 4</option>
                   </select>
                   <div class="clear"></div>
                </div>

                  <!-- Input -->
                <div class="input">
                   <p style="width:270px">Megamenu label</p>
                   <select name="megamenu_label_type">
                       <option value="0"<?php if($megamenu_label_type =='0'){echo ' selected="selected"';} ?>>Default</option>
                       <option value="2"<?php if($megamenu_label_type =='2'){echo ' selected="selected"';} ?>>Type 2</option>
                       <option value="3"<?php if($megamenu_label_type =='3'){echo ' selected="selected"';} ?>>Type 3</option>
                       <option value="4"<?php if($megamenu_label_type =='4'){echo ' selected="selected"';} ?>>Type 4</option>
                       <option value="5"<?php if($megamenu_label_type =='5'){echo ' selected="selected"';} ?>>Type 5</option>
                       <option value="6"<?php if($megamenu_label_type =='6'){echo ' selected="selected"';} ?>>Type 6</option>
                       <option value="7"<?php if($megamenu_label_type =='7'){echo ' selected="selected"';} ?>>Type 7</option>
                   </select>
                   <div class="clear"></div>
                </div>


                <!-- Input -->
                <div class="input">
                   <p style="width:270px">Search</p>
                   <select name="search_type_in_header">
                       <option value="0"<?php if($search_type_in_header =='0'){echo ' selected="selected"';} ?>>Default</option>
                       <option value="2"<?php if($search_type_in_header =='2'){echo ' selected="selected"';} ?>>Type 2</option>
                       <option value="3"<?php if($search_type_in_header =='3'){echo ' selected="selected"';} ?>>Type 3</option>
                       <option value="4"<?php if($search_type_in_header =='4'){echo ' selected="selected"';} ?>>Type 4</option>
                       <option value="5"<?php if($search_type_in_header =='5'){echo ' selected="selected"';} ?>>Type 5</option>
                       <option value="6"<?php if($search_type_in_header =='6'){echo ' selected="selected"';} ?>>Type 6</option>
                       <option value="7"<?php if($search_type_in_header =='7'){echo ' selected="selected"';} ?>>Type 7</option>
                   </select>
                   <div class="clear"></div>
                </div>

                <!-- Input -->
                <div class="input">
                   <p style="width:270px">Menu</p>
                   <select name="megamenu_type">
                       <option value="0"<?php if($megamenu_type =='0'){echo ' selected="selected"';} ?>>Default</option>
                       <option value="2"<?php if($megamenu_type =='2'){echo ' selected="selected"';} ?>>Type 2</option>
                       <option value="3"<?php if($megamenu_type =='3'){echo ' selected="selected"';} ?>>Type 3</option>
                       <option value="4"<?php if($megamenu_type =='4'){echo ' selected="selected"';} ?>>Type 4</option>
                       <option value="5"<?php if($megamenu_type =='5'){echo ' selected="selected"';} ?>>Type 5</option>
                       <option value="6"<?php if($megamenu_type =='6'){echo ' selected="selected"';} ?>>Type 6</option>
                       <option value="7"<?php if($megamenu_type =='7'){echo ' selected="selected"';} ?>>Type 7</option>
                       <option value="8"<?php if($megamenu_type =='8'){echo ' selected="selected"';} ?>>Type 8</option>
                       <option value="9"<?php if($megamenu_type =='9'){echo ' selected="selected"';} ?>>Type 9</option>
                       <option value="10"<?php if($megamenu_type =='10'){echo ' selected="selected"';} ?>>Type 10</option>
                       <option value="11"<?php if($megamenu_type =='11'){echo ' selected="selected"';} ?>>Type 11</option>
                       <option value="12"<?php if($megamenu_type =='12'){echo ' selected="selected"';} ?>>Type 12</option>
                       <option value="13"<?php if($megamenu_type =='13'){echo ' selected="selected"';} ?>>Type 13</option>
                       <option value="14"<?php if($megamenu_type =='14'){echo ' selected="selected"';} ?>>Type 14</option>
                       <option value="15"<?php if($megamenu_type =='15'){echo ' selected="selected"';} ?>>Type 15</option>
                       <option value="16"<?php if($megamenu_type =='16'){echo ' selected="selected"';} ?>>Type 16</option>
                       <option value="17"<?php if($megamenu_type =='17'){echo ' selected="selected"';} ?>>Type 17</option>
                       <option value="18"<?php if($megamenu_type =='18'){echo ' selected="selected"';} ?>>Type 18</option>
                       <option value="19"<?php if($megamenu_type =='19'){echo ' selected="selected"';} ?>>Type 19</option>
                       <option value="20"<?php if($megamenu_type =='20'){echo ' selected="selected"';} ?>>Type 20</option>
                       <option value="21"<?php if($megamenu_type =='21'){echo ' selected="selected"';} ?>>Type 21</option>
                       <option value="22"<?php if($megamenu_type =='22'){echo ' selected="selected"';} ?>>Type 22</option>
                       <option value="23"<?php if($megamenu_type =='23'){echo ' selected="selected"';} ?>>Type 23</option>
                       <option value="24"<?php if($megamenu_type =='24'){echo ' selected="selected"';} ?>>Type 24</option>
                       <option value="25"<?php if($megamenu_type =='25'){echo ' selected="selected"';} ?>>Type 25</option>
                       <option value="26"<?php if($megamenu_type =='26'){echo ' selected="selected"';} ?>>Type 26</option>
                       <option value="27"<?php if($megamenu_type =='27'){echo ' selected="selected"';} ?>>Type 27</option>
                       <option value="28"<?php if($megamenu_type =='28'){echo ' selected="selected"';} ?>>Type 28</option>
                       <option value="29"<?php if($megamenu_type =='29'){echo ' selected="selected"';} ?>>Type 29</option>
                       <option value="30"<?php if($megamenu_type =='30'){echo ' selected="selected"';} ?>>Type 30</option>
                       <option value="31"<?php if($megamenu_type =='31'){echo ' selected="selected"';} ?>>Type 31</option>
                       <option value="32"<?php if($megamenu_type =='32'){echo ' selected="selected"';} ?>>Type 32</option>
                       <option value="33"<?php if($megamenu_type =='33'){echo ' selected="selected"';} ?>>Type 33</option>
                       <option value="34"<?php if($megamenu_type =='34'){echo ' selected="selected"';} ?>>Type 34</option>
                   </select>
                   <div class="clear"></div>
                </div>


                 <!-- Input -->
                <div class="input">
                   <p style="width:270px">Dropdown menu type</p>
                   <select name="dropdown_menu_type">
                       <option value="0"<?php if($dropdown_menu_type =='0'){echo ' selected="selected"';} ?>>Default</option>
                       <option value="2"<?php if($dropdown_menu_type =='2'){echo ' selected="selected"';} ?>>Type 2</option>
                       <option value="3"<?php if($dropdown_menu_type =='3'){echo ' selected="selected"';} ?>>Type 3</option>
                       <option value="4"<?php if($dropdown_menu_type =='4'){echo ' selected="selected"';} ?>>Type 4</option>
                       <option value="5"<?php if($dropdown_menu_type =='5'){echo ' selected="selected"';} ?>>Type 5</option>
                   </select>
                   <div class="clear"></div>
                </div>


                <!-- Input -->
                <div class="input">
                   <p style="width:270px">Buttons prev/next in slider</p>
                   <select name="buttons_prev_next_in_slider">
                       <option value="0"<?php if($buttons_prev_next_in_slider =='0'){echo ' selected="selected"';} ?>>Default</option>
                       <option value="2"<?php if($buttons_prev_next_in_slider =='2'){echo ' selected="selected"';} ?>>Type 2</option>
                   </select>
                   <div class="clear"></div>
                </div>



            </div>
        </div>

        <div class="section accordion">
            <div class="section-title">
                <h4>Category<br> page</h4>
                <div class="expander"></div>
            </div>
            <div class="section-content">

                <!-- Input -->
                <div class="input">
                   <p style="width:270px">Breadcrumb</p>
                   <select name="breadcrumb_style">
                       <option value="0"<?php if($breadcrumb_style =='0'){echo ' selected="selected"';} ?>>Default</option>
                       <option value="1"<?php if($breadcrumb_style =='1'){echo ' selected="selected"';} ?>>Type 2</option>
                       <option value="2"<?php if($breadcrumb_style =='2'){echo ' selected="selected"';} ?>>Type 3</option>
                       <option value="3"<?php if($breadcrumb_style =='3'){echo ' selected="selected"';} ?>>Type 4</option>
                       <option value="4"<?php if($breadcrumb_style =='4'){echo ' selected="selected"';} ?>>Type 5</option>
                       <option value="5"<?php if($breadcrumb_style =='5'){echo ' selected="selected"';} ?>>Type 6</option>
                       <option value="6"<?php if($breadcrumb_style =='6'){echo ' selected="selected"';} ?>>Type 7</option>
                       <option value="7"<?php if($breadcrumb_style =='7'){echo ' selected="selected"';} ?>>Type 8</option>
                       <option value="8"<?php if($breadcrumb_style =='8'){echo ' selected="selected"';} ?>>Type 9</option>
                       <option value="9"<?php if($breadcrumb_style =='9'){echo ' selected="selected"';} ?>>Type 10</option>
                       <option value="10"<?php if($breadcrumb_style =='10'){echo ' selected="selected"';} ?>>Type 11</option>
                       <option value="11"<?php if($breadcrumb_style =='11'){echo ' selected="selected"';} ?>>Type 12</option>
                   </select>
                   <div class="clear"></div>
                </div>


                <!-- Input -->
                <div class="input">
                   <p style="width:270px">Product grid</p>
                   <select name="product_grid_type">
                       <option value="0"<?php if($product_grid_type =='0'){echo ' selected="selected"';} ?>>Default</option>
                       <option value="2"<?php if($product_grid_type =='2'){echo ' selected="selected"';} ?>>Type 2</option>
                       <option value="3"<?php if($product_grid_type =='3'){echo ' selected="selected"';} ?>>Type 3</option>
                       <option value="4"<?php if($product_grid_type =='4'){echo ' selected="selected"';} ?>>Type 4</option>
                       <option value="5"<?php if($product_grid_type =='5'){echo ' selected="selected"';} ?>>Type 5</option>
                       <option value="6"<?php if($product_grid_type =='6'){echo ' selected="selected"';} ?>>Type 6</option>
                       <option value="7"<?php if($product_grid_type =='7'){echo ' selected="selected"';} ?>>Type 7</option>
                       <option value="8"<?php if($product_grid_type =='8'){echo ' selected="selected"';} ?>>Type 8</option>
                   </select>
                   <div class="clear"></div>
                </div>

                <!-- Input -->
                <div class="input">
                   <p style="width:270px">Product list</p>
                   <select name="product_list_type">
                       <option value="0"<?php if($product_list_type =='0'){echo ' selected="selected"';} ?>>Default</option>
                       <option value="2"<?php if($product_list_type =='2'){echo ' selected="selected"';} ?>>Type 2</option>
                       <option value="3"<?php if($product_list_type =='3'){echo ' selected="selected"';} ?>>Type 3</option>
                       <option value="4"<?php if($product_list_type =='4'){echo ' selected="selected"';} ?>>Type 4</option>
                   </select>
                   <div class="clear"></div>
                </div>

            </div>
        </div>

        <div class="section accordion">
            <div class="section-title">
                <h4>Product<br> page</h4>
                <div class="expander"></div>
            </div>
            <div class="section-content">

                <!-- Input -->
                <div class="input">
                   <p style="width:270px">Product Page</p>
                   <select name="product_page_type">
                       <option value="0"<?php if($product_page_type =='0'){echo ' selected="selected"';} ?>>Default</option>
                       <option value="2"<?php if($product_page_type =='2'){echo ' selected="selected"';} ?>>Type 2</option>
                       <option value="3"<?php if($product_page_type =='3'){echo ' selected="selected"';} ?>>Type 3</option>
                   </select>
                   <div class="clear"></div>
                </div>

                <!-- Input -->
               <div class="input">
                  <p style="width:270px">Products buttons</p>
                  <select name="products_buttons_action">
                      <option value="0"<?php if($products_buttons_action =='0'){echo ' selected="selected"';} ?>>Default</option>
                      <option value="2"<?php if($products_buttons_action =='2'){echo ' selected="selected"';} ?>>Type 2</option>
                      <option value="3"<?php if($products_buttons_action =='3'){echo ' selected="selected"';} ?>>Type 3</option>
                      <option value="4"<?php if($products_buttons_action =='4'){echo ' selected="selected"';} ?>>Type 4</option>
                  </select>
                  <div class="clear"></div>
                </div>

            </div>
        </div>

        <div class="section accordion">
            <div class="section-title">
                <h4>Footer<br> section</h4>
                <div class="expander"></div>
            </div>
            <div class="section-content">

                <!-- Input -->
                <div class="input">
                   <p style="width:270px">Footer type</p>
                   <select name="footer_type">
                       <option value="0"<?php if($footer_type =='0'){echo ' selected="selected"';} ?>>Default</option>
                       <option value="2"<?php if($footer_type =='2'){echo ' selected="selected"';} ?>>Type 2</option>
                       <option value="3"<?php if($footer_type =='3'){echo ' selected="selected"';} ?>>Type 3</option>
                       <option value="4"<?php if($footer_type =='4'){echo ' selected="selected"';} ?>>Type 4</option>
                       <option value="5"<?php if($footer_type =='5'){echo ' selected="selected"';} ?>>Type 5</option>
                       <option value="6"<?php if($footer_type =='6'){echo ' selected="selected"';} ?>>Type 6</option>
                       <option value="7"<?php if($footer_type =='7'){echo ' selected="selected"';} ?>>Type 7</option>
                       <option value="8"<?php if($footer_type =='8'){echo ' selected="selected"';} ?>>Type 8</option>
                       <option value="9"<?php if($footer_type =='9'){echo ' selected="selected"';} ?>>Type 9</option>
                       <option value="10"<?php if($footer_type =='10'){echo ' selected="selected"';} ?>>Type 10</option>
                       <option value="11"<?php if($footer_type =='11'){echo ' selected="selected"';} ?>>Type 11</option>
                       <option value="12"<?php if($footer_type =='12'){echo ' selected="selected"';} ?>>Type 12</option>
                       <option value="13"<?php if($footer_type =='13'){echo ' selected="selected"';} ?>>Type 13</option>
                       <option value="14"<?php if($footer_type =='14'){echo ' selected="selected"';} ?>>Type 14</option>
                       <option value="15"<?php if($footer_type =='15'){echo ' selected="selected"';} ?>>Type 15</option>
                       <option value="16"<?php if($footer_type =='16'){echo ' selected="selected"';} ?>>Type 16</option>
                       <option value="17"<?php if($footer_type =='17'){echo ' selected="selected"';} ?>>Type 17</option>
                       <option value="18"<?php if($footer_type =='18'){echo ' selected="selected"';} ?>>Type 18</option>
                       <option value="19"<?php if($footer_type =='19'){echo ' selected="selected"';} ?>>Type 19</option>
                       <option value="20"<?php if($footer_type =='20'){echo ' selected="selected"';} ?>>Type 20</option>
                       <option value="21"<?php if($footer_type =='21'){echo ' selected="selected"';} ?>>Type 21</option>
                       <option value="22"<?php if($footer_type =='22'){echo ' selected="selected"';} ?>>Type 22</option>
                       <option value="23"<?php if($footer_type =='23'){echo ' selected="selected"';} ?>>Type 23</option>
                       <option value="24"<?php if($footer_type =='24'){echo ' selected="selected"';} ?>>Type 24</option>
                       <option value="25"<?php if($footer_type =='25'){echo ' selected="selected"';} ?>>Type 25</option>
                       <option value="26"<?php if($footer_type =='26'){echo ' selected="selected"';} ?>>Type 26</option>
                       <option value="27"<?php if($footer_type =='27'){echo ' selected="selected"';} ?>>Type 27</option>
                   </select>
                   <div class="clear"></div>
                </div>

            </div>
        </div>

        <div class="section accordion">
            <div class="section-title">
                <h4 style="padding: 7px 0 2px 0">Other</h4>
                <div class="expander"></div>
            </div>
            <div class="section-content">

                <!-- Input -->
                <div class="input">
                   <p style="width:270px">Border width in full-width</p>
                   <select name="border_width">
                       <option value="0"<?php if($border_width =='0'){echo ' selected="selected"';} ?>>Default</option>
                       <option value="1"<?php if($border_width =='1'){echo ' selected="selected"';} ?>>100%</option>
                   </select>
                   <div class="clear"></div>
                </div>


                <!-- Input -->
                <div class="input">
                    <p style="width:270px">Countdown special</p>
                    <select name="countdown_special">
                        <option value="0"<?php if($countdown_special =='0'){echo ' selected="selected"';} ?>>Default</option>
                        <option value="2"<?php if($countdown_special =='2'){echo ' selected="selected"';} ?>>Type 2</option>
                        <option value="3"<?php if($countdown_special =='3'){echo ' selected="selected"';} ?>>Type 3</option>
                        <option value="4"<?php if($countdown_special =='4'){echo ' selected="selected"';} ?>>Type 4</option>
                        <option value="5"<?php if($countdown_special =='5'){echo ' selected="selected"';} ?>>Type 5</option>
                        <option value="6"<?php if($countdown_special =='6'){echo ' selected="selected"';} ?>>Type 6</option>
                        <option value="7"<?php if($countdown_special =='7'){echo ' selected="selected"';} ?>>Type 7</option>
                        <option value="8"<?php if($countdown_special =='8'){echo ' selected="selected"';} ?>>Type 8</option>
                        <option value="9"<?php if($countdown_special =='9'){echo ' selected="selected"';} ?>>Type 9</option>
                    </select>
                    <div class="clear"></div>
                 </div>


                <!-- Input -->
                <div class="input">
                   <p style="width:270px">Button type</p>
                   <select name="button_type">
                       <option value="0"<?php if($button_type =='0'){echo ' selected="selected"';} ?>>Default</option>
                       <option value="2"<?php if($button_type =='2'){echo ' selected="selected"';} ?>>Type 2</option>
                       <option value="3"<?php if($button_type =='3'){echo ' selected="selected"';} ?>>Type 3</option>
                       <option value="4"<?php if($button_type =='4'){echo ' selected="selected"';} ?>>Type 4</option>
                       <option value="5"<?php if($button_type =='5'){echo ' selected="selected"';} ?>>Type 5</option>
                       <option value="6"<?php if($button_type =='6'){echo ' selected="selected"';} ?>>Type 6</option>
                       <option value="7"<?php if($button_type =='7'){echo ' selected="selected"';} ?>>Type 7</option>
                       <option value="8"<?php if($button_type =='8'){echo ' selected="selected"';} ?>>Type 8</option>
                       <option value="9"<?php if($button_type =='9'){echo ' selected="selected"';} ?>>Type 9</option>
                       <option value="10"<?php if($button_type =='10'){echo ' selected="selected"';} ?>>Type 10</option>
                       <option value="11"<?php if($button_type =='11'){echo ' selected="selected"';} ?>>Type 11</option>
                       <option value="12"<?php if($button_type =='12'){echo ' selected="selected"';} ?>>Type 12</option>
                       <option value="13"<?php if($button_type =='13'){echo ' selected="selected"';} ?>>Type 13</option>
                       <option value="14"<?php if($button_type =='14'){echo ' selected="selected"';} ?>>Type 14</option>
                       <option value="15"<?php if($button_type =='15'){echo ' selected="selected"';} ?>>Type 15</option>
                   </select>
                   <div class="clear"></div>
                </div>

                <!-- Input -->
                <div class="input">
                   <p style="width:270px">Sale, new label type</p>
                   <select name="sale_new_type">
                       <option value="0"<?php if($sale_new_type =='0'){echo ' selected="selected"';} ?>>Default</option>
                       <option value="2"<?php if($sale_new_type =='2'){echo ' selected="selected"';} ?>>Type 2</option>
                       <option value="3"<?php if($sale_new_type =='3'){echo ' selected="selected"';} ?>>Type 3</option>
                       <option value="4"<?php if($sale_new_type =='4'){echo ' selected="selected"';} ?>>Type 4</option>
                       <option value="5"<?php if($sale_new_type =='5'){echo ' selected="selected"';} ?>>Type 5</option>
                       <option value="6"<?php if($sale_new_type =='6'){echo ' selected="selected"';} ?>>Type 6</option>
                       <option value="7"<?php if($sale_new_type =='7'){echo ' selected="selected"';} ?>>Type 7</option>
                       <option value="8"<?php if($sale_new_type =='8'){echo ' selected="selected"';} ?>>Type 8</option>
                       <option value="9"<?php if($sale_new_type =='9'){echo ' selected="selected"';} ?>>Type 9</option>
                       <option value="10"<?php if($sale_new_type =='10'){echo ' selected="selected"';} ?>>Type 10</option>
                   </select>
                   <div class="clear"></div>
                </div>


                <!-- Input -->
                <div class="input">
                   <p style="width:270px">Box type</p>
                   <select name="box_type">
                       <option value="0"<?php if($box_type =='0'){echo ' selected="selected"';} ?>>Default</option>
                       <option value="2"<?php if($box_type =='2'){echo ' selected="selected"';} ?>>Type 2</option>
                       <option value="3"<?php if($box_type =='3'){echo ' selected="selected"';} ?>>Type 3</option>
                       <option value="4"<?php if($box_type =='4'){echo ' selected="selected"';} ?>>Type 4</option>
                       <option value="5"<?php if($box_type =='5'){echo ' selected="selected"';} ?>>Type 5</option>
                       <option value="6"<?php if($box_type =='6'){echo ' selected="selected"';} ?>>Type 6</option>
                       <option value="7"<?php if($box_type =='7'){echo ' selected="selected"';} ?>>Type 7</option>
                       <option value="8"<?php if($box_type =='8'){echo ' selected="selected"';} ?>>Type 8</option>
                       <option value="9"<?php if($box_type =='9'){echo ' selected="selected"';} ?>>Type 9</option>
                       <option value="10"<?php if($box_type =='10'){echo ' selected="selected"';} ?>>Type 10</option>
                       <option value="11"<?php if($box_type =='11'){echo ' selected="selected"';} ?>>Type 11</option>
                       <option value="12"<?php if($box_type =='12'){echo ' selected="selected"';} ?>>Type 12</option>
                       <option value="13"<?php if($box_type =='13'){echo ' selected="selected"';} ?>>Type 13</option>
                       <option value="14"<?php if($box_type =='14'){echo ' selected="selected"';} ?>>Type 14</option>
                       <option value="15"<?php if($box_type =='15'){echo ' selected="selected"';} ?>>Type 15</option>
                       <option value="16"<?php if($box_type =='16'){echo ' selected="selected"';} ?>>Type 16</option>
                       <option value="17"<?php if($box_type =='17'){echo ' selected="selected"';} ?>>Type 17</option>
                       <option value="18"<?php if($box_type =='18'){echo ' selected="selected"';} ?>>Type 18</option>
                       <option value="19"<?php if($box_type =='19'){echo ' selected="selected"';} ?>>Type 19</option>
                   </select>
                   <div class="clear"></div>
                </div>


                <!-- Input -->
                <div class="input">
                   <p style="width:270px">Inputs type</p>
                   <select name="inputs_type">
                       <option value="0"<?php if($inputs_type =='0'){echo ' selected="selected"';} ?>>Default</option>
                       <option value="2"<?php if($inputs_type =='2'){echo ' selected="selected"';} ?>>Type 2</option>
                       <option value="3"<?php if($inputs_type =='3'){echo ' selected="selected"';} ?>>Type 3</option>
                       <option value="4"<?php if($inputs_type =='4'){echo ' selected="selected"';} ?>>Type 4</option>
                       <option value="5"<?php if($inputs_type =='5'){echo ' selected="selected"';} ?>>Type 5</option>
                       <option value="6"<?php if($inputs_type =='6'){echo ' selected="selected"';} ?>>Type 6</option>
                       <option value="7"<?php if($inputs_type =='7'){echo ' selected="selected"';} ?>>Type 7</option>
                   </select>
                   <div class="clear"></div>
                </div>

            </div>
        </div>
        <input type="hidden" name="store_id" value="<?php echo $store_id ?>"/>
        <!-- Buttons -->
				
        <div class="buttons"><input type="submit" name="button-save-live-editor" class="button-save" value=""></div>
				
        <!-- End Buttons -->
    </form>
        <a class="quit-live-editor" href="<?php echo $theme_options_link ?>">Back to <b>halona theme options</b></a>
        
    </div>
    <div class="live-content">
        <iframe id="editor" src="<?php echo $front_url ?>"></iframe>
    </div>
</div>
</div>
<script>
    
    var EDITOR = {
        body: {},
        init: function(){
            this.body = $("#editor").contents().find("body");
        }
        
    };
    
    $(window).load(function(){
        EDITOR.init();
    })
    
    $(function(){
    
        $('.section.accordion .section-title').click(function(){
            if(!$(this).parent().hasClass('opened')){
                $(this).parent().addClass('opened')
                $(this).next('.section-content').hide().stop().slideDown();
            }else{
                $(this).parent().removeClass('opened')
                $(this).next('.section-content').show().stop().slideUp();
            }
        })
        
        
        
        $('select').change(function(){
            EDITOR.init();
            var action = $(this).attr('name');
            var value = $(this).val();
            switch(action){
                
                case 'header_margin_top':
                    EDITOR.body.removeClass (function (index, css) {
                        return (css.match (/(^|\s)header-margin-top-\S+/g) || []).join(' ');
                    });
                    EDITOR.body.addClass('header-margin-top-'+value);
                    break;
                
                case 'top_bar_type':
                    EDITOR.body.removeClass (function (index, css) {
                        return (css.match (/(^|\s)top-bar-type-\S+/g) || []).join(' ');
                    });
                    EDITOR.body.addClass('top-bar-type-'+value);
                    break;
                
                case 'my_account_type':
                    EDITOR.body.removeClass (function (index, css) {
                        return (css.match (/(^|\s)my-account-type-\S+/g) || []).join(' ');
                    });
                    EDITOR.body.addClass('my-account-type-'+value);
                    break;
                
                case 'cart_block_type':
                    EDITOR.body.removeClass (function (index, css) {
                        return (css.match (/(^|\s)cart-block-type-\S+/g) || []).join(' ');
                    });
                    EDITOR.body.addClass('cart-block-type-'+value);
                    break;
                
                case 'category_box_style':
                    EDITOR.body.find('.box.box-with-categories').removeClass (function (index, css) {
                        return (css.match (/(^|\s)category-box-type-\S+/g) || []).join(' ');
                    });
                    if(value == 1){
                        EDITOR.body.find('.box.box-with-categories').addClass('category-box-type-2');
                    }
                    if(value == 2){
                        EDITOR.body.find('.box.box-with-categories').addClass('category-box-type-3').addClass('category-box-type-2');
                    }
                    if(value == 3){
                        EDITOR.body.find('.box.box-with-categories').addClass('category-box-type-4').addClass('category-box-type-2');
                    }
                    break;
                    
                                    
                case 'megamenu_label_type':
                    EDITOR.body.removeClass (function (index, css) {
                        return (css.match (/(^|\s)megamenu-label-type-\S+/g) || []).join(' ');
                    });
                    EDITOR.body.addClass('megamenu-label-type-'+value);
                    break;
                                    
                case 'search_type_in_header':
                    EDITOR.body.removeClass (function (index, css) {
                        return (css.match (/(^|\s)search-type-\S+/g) || []).join(' ');
                    });
                    EDITOR.body.addClass('search-type-'+value);
                    break;
                                    
                case 'megamenu_type':
                    EDITOR.body.removeClass (function (index, css) {
                        return (css.match (/(^|\s)megamenu-type-\S+/g) || []).join(' ');
                    });
                    EDITOR.body.addClass('megamenu-type-'+value);
                    break;
                                    
                case 'dropdown_menu_type':
                    EDITOR.body.removeClass (function (index, css) {
                        return (css.match (/(^|\s)dropdown-menu-type-\S+/g) || []).join(' ');
                    });
                    EDITOR.body.addClass('dropdown-menu-type-'+value);
                    break;
                                    
                case 'buttons_prev_next_in_slider':
                    EDITOR.body.removeClass (function (index, css) {
                        return (css.match (/(^|\s)buttons-prev-next-type-\S+/g) || []).join(' ');
                    });
                    EDITOR.body.addClass('buttons-prev-next-type-'+value);
                    break;
                                    
                case 'breadcrumb_style':
                    EDITOR.body.removeClass (function (index, css) {
                        return (css.match (/(^|\s)breadcrumb-style-\S+/g) || []).join(' ');
                    });
                    EDITOR.body.addClass('breadcrumb-style-'+value);
                    break;
                    
                case 'product_grid_type':
                    EDITOR.body.removeClass (function (index, css) {
                        return (css.match (/(^|\s)product-grid-type-\S+/g) || []).join(' ');
                    });
                    EDITOR.body.addClass('product-grid-type-'+value);
                    break;
                    
                case 'product_list_type':
                    EDITOR.body.removeClass (function (index, css) {
                        return (css.match (/(^|\s)product-list-type-\S+/g) || []).join(' ');
                    });
                    EDITOR.body.addClass('product-list-type-'+value);
                    break;
                    
                case 'product_page_type':
                    EDITOR.body.removeClass (function (index, css) {
                        return (css.match (/(^|\s)product-page-type-\S+/g) || []).join(' ');
                    });
                    EDITOR.body.addClass('product-page-type-'+value);
                    break;
                    
                case 'products_buttons_action':
                    EDITOR.body.removeClass (function (index, css) {
                        return (css.match (/(^|\s)products-buttons-action-type-\S+/g) || []).join(' ');
                    });
                    EDITOR.body.addClass('products-buttons-action-type-'+value);
                    break;
                    
                case 'footer_type':
                    EDITOR.body.removeClass (function (index, css) {
                        return (css.match (/(^|\s)footer-type-\S+/g) || []).join(' ');
                    });
                    EDITOR.body.addClass('footer-type-'+value);
                    break;
                    
                case 'border_width':
                    EDITOR.body.removeClass (function (index, css) {
                        return (css.match (/(^|\s)border-width-\S+/g) || []).join(' ');
                    });
                    EDITOR.body.addClass('border-width-'+value);
                    break;
                    
                case 'countdown_special':
                    EDITOR.body.removeClass (function (index, css) {
                        return (css.match (/(^|\s)countdown-special-type-\S+/g) || []).join(' ');
                    });
                    EDITOR.body.addClass('countdown-special-type-'+value);
                    break;
                    
                case 'button_type':
                    EDITOR.body.removeClass (function (index, css) {
                        return (css.match (/(^|\s)button-body-type-\S+/g) || []).join(' ');
                    });
                    EDITOR.body.addClass('button-body-type-'+value);
                    break;
                    
                case 'sale_new_type':
                    EDITOR.body.removeClass (function (index, css) {
                        return (css.match (/(^|\s)sale-new-type-\S+/g) || []).join(' ');
                    });
                    EDITOR.body.addClass('sale-new-type-'+value);
                    break;
                    
                case 'box_type':
                    EDITOR.body.removeClass (function (index, css) {
                        return (css.match (/(^|\s)box-type-\S+/g) || []).join(' ');
                    });
                    EDITOR.body.addClass('box-type-'+value);
                    break;
                    
                case 'inputs_type':
                    EDITOR.body.removeClass (function (index, css) {
                        return (css.match (/(^|\s)inputs-type-\S+/g) || []).join(' ');
                    });
                    EDITOR.body.addClass('inputs-type-'+value);
                    break;
            }
        })
    });
    
</script>
<?php echo $footer; ?>