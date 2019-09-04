<?php echo $header; 
$theme_options = $registry->get('theme_options');
$config = $registry->get('config');
$page_direction = $theme_options->get( 'page_direction' ); 
$background_status = false;
$product_page = true;
include('catalog/view/theme/'.$config->get('theme_' . $config->get('config_theme') . '_directory').'/template/new_elements/wrapper_top.tpl'); ?>

<?php 
echo '<script type="text/javascript" src="catalog/view/theme/' . $config->get('theme_' . $config->get('config_theme') . '_directory') . '/js/owl.carousel2.js"></script>';
echo '<link rel="stylesheet" type="text/css" href="catalog/view/theme/' . $config->get('theme_' . $config->get('config_theme') . '_directory') . '/css/owl.carousel.css" />';

?>
<div class="margin-class">
  <span itemprop="name" class="hidden"><?php echo $heading_title; ?></span>
  <div class="product-info">
  	<div class="row">
<!--   	     <center><a target="_blank" href="http://gccworld.info/doc/halona/"><b><u>Theme Installation Error: Delete Cache or Re-Download and re-upload or check documentation here</u></b></a></center> -->

  		<div class="col-md-<?php if($theme_options->get( 'custom_block', 'product_page', $config->get( 'config_language_id' ), 'status' ) == 1 || count($product_custom_block)) { echo 9; } else { echo 12; } ?> col-sm-12">
  			<div class="row" id="quickview_product">
			    <?php if($theme_options->get( 'product_image_zoom' ) != 2) { ?>
			    <script>
			    	$(document).ready(function(){
			    	     if($(window).width() > 992) {
     			    		<?php if($theme_options->get( 'product_image_zoom' ) == 1) { ?>
     			    			$('#image').elevateZoom({
									easing : true,
									borderSize	: 1,
									borderColour	: "rgba(0, 0, 0, 0.1)",
									zoomWindowWidth 	: 500,
									zoomWindowHeight 	: 400
     			    			});
     			    		<?php } else { ?>
     				    		$('#image').elevateZoom({
									easing : true,
									borderSize	: 1,
									borderColour	: "rgba(0, 0, 0, 0.1)",
									zoomWindowWidth 	: 500,
									zoomWindowHeight 	: 400
     				    		});
     			    		<?php } ?>
     			    		
     			    		var z_index = 0;
     			    		
     			    		$(document).on('click', '.open-popup-image', function () {
     			    		  $('.popup-gallery').magnificPopup('open', z_index);
     			    		  return false;
     			    		});
			    		
     			    		$('.thumbnails a, .thumbnails-carousel a').click(function() {
     			    			var smallImage = $(this).attr('data-image');
     			    			var largeImage = $(this).attr('data-zoom-image');
     			    			var ez =   $('#image').data('elevateZoom');	
     			    			$('#ex1').attr('href', largeImage);  
     			    			ez.swaptheimage(smallImage, largeImage); 
     			    			z_index = $(this).index('.thumbnails a, .thumbnails-carousel a');
     			    			return false;
     			    		});
			    		} else {
			    			$(document).on('click', '.open-popup-image', function () {
			    			  $('.popup-gallery').magnificPopup('open', 0);
			    			  return false;
			    			});
			    		}
			    	});
			    </script>
			    <?php } ?>
			    <?php $image_grid = 7; $product_center_grid = 5; 
			    if ($theme_options->get( 'product_image_size' ) == 1) {
			    	$image_grid = 4; $product_center_grid = 8;
			    }
			    
			    if ($theme_options->get( 'product_image_size' ) == 3) {
			    	$image_grid = 8; $product_center_grid = 4;
			    }
			    ?>
			    <div class="col-sm-<?php echo $image_grid; ?> popup-gallery" style="top:100px;">
			      <?php 
			      $product_image_top = $modules_old_opencart->getModules('product_image_top');
			      if( count($product_image_top) ) { 
			      	foreach ($product_image_top as $module) {
			      		echo $module;
			      	}
			      } ?>
			         
			      <div class="row margin-right20">


				      <?php if (($images || $theme_options->get( 'product_image_zoom' ) != 2) && $theme_options->get( 'position_image_additional' ) != 2 && COUNT($images) >= 1 || true) { ?>
				      <div class="col-sm-12">


     				<?php //Img Gallery Block -------?>
                <div class="content-product-left">

					<?php //Left Thumbnails previews -------?>
                    <?php if ($images) : ?>
                        <div id="thumb-slider" class="thumb-vertical-outer">
								<ul class="thumb-vertical">
								
								<?php 
								if (sizeof($images) > 0) {
									$firstimg = array('popup' => $popup,'thumb' => $thumb);
									array_unshift($images, $firstimg);
								}
								if ($images) { ?>
									<?php $i=-1; foreach ($images as $image) :$i++ ?>
									<li class="owl2-item">
										<a data-index="<?php echo $i; ?>" class="img thumbnail" data-image="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>">
											<img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
										</a>
									</li>
									<?php endforeach; ?>
								<?php }else { ?>
								<li class="owl2-item">
									<a data-index="<?php echo $i; ?>" class="img thumbnail" data-image="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>">
										<img src="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
									</a>
								</li>
								<?php } ?>
							</ul>
                        </div>
                    <?php endif; ?>
                  

					<div class="large-image  <?php echo  (isset($thumbnails_position) && $thumbnails_position == 'left') ? ' vertical ' : '' ?> ">
						<img itemprop="image" class="product-image-zoom" src="<?php echo $popup; ?>" data-zoom-image="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
					</div>
						
				
					
					<?php //Bottom Thumbnails previews -------?>
                    <?php if ($images  && isset($thumbnails_position) && $thumbnails_position == 'bottom') : ?>
                        <div id="thumb-slider" class="<?php echo ((count($images) < 3 ) ? 'not_full_slider' : 'full_slider'); ?> <?php echo ($thumbnails_position == 'left' ? 'flexslider-large visible-xs' : 'owl-carousel'); ?>">
							<?php
							if (sizeof($images) > 0) {
								$firstimg = array('popup' => $popup,'thumb' => $thumb);
								array_unshift($images, $firstimg);
								
							}
							if ($images) : ?>
								<?php $i=-1; foreach ($images as $image) : $i++ ?>
									<a data-index="<?php echo $i; ?>" class="img thumbnail" data-image="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>">
										<img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
									</a>
								<?php endforeach; ?>
							<?php endif; ?>
							
                        </div>

						<script type="text/javascript"><!--
							$(function ($) {
								var $nav = $("#thumb-slider");
								
								$nav.each(function () {
									$(this).owlCarousel2({
										nav:true,
										dots: false,
										slideBy: 1,
										margin:10,
										navText: ['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>'],
										<?php if($direction=='rtl'):?> rtl:true, <?php endif;?>
										responsive:{
											0:{
												items:2
											},
											600:{
												items:3
											},
											1000:{
												items:4
											}
										}
									});
								})
							});
									$("#thumb-slider .owl2-item").each(function() {
			$(this).find("[data-index='0']").addClass('active');
		});
						//--></script>
                    <?php endif; ?>

        			<div align="center">
                        <span style="color: #555!important;">Roll over image to zoom in</span>
                    </div>
					<?php //End Bottom Thumbnails previews -------?>

                </div>
			<?php //End Img Gallery Block -------?>


				      </div>
				      <?php } ?>
			      </div>
			      
			      <?php 
			      $product_image_bottom = $modules_old_opencart->getModules('product_image_bottom');
			      if( count($product_image_bottom) ) { 
			      	foreach ($product_image_bottom as $module) {
			      		echo $module;
			      	}
			      } ?>
			    </div>

			    <div class="col-sm-<?php echo $product_center_grid; ?> product-center clearfix">
			     <div itemscope itemtype="http://schema.org/Offer">
			      <?php 
			      $product_options_top = $modules_old_opencart->getModules('product_options_top');
			      if( count($product_options_top) ) { 
			      	foreach ($product_options_top as $module) {
			      		echo $module;
			      	}
			      } ?>
			      
			      <?php if ($review_status) { ?>
			      <div class="review">
			      	<?php if($rating > 0) { ?>
			      	<span itemprop="review" class="hidden" itemscope itemtype="http://schema.org/Review-aggregate">
			      		<span itemprop="itemreviewed"><?php echo $heading_title; ?></span>
			      		<span itemprop="rating"><?php echo $rating; ?></span>
			      		<span itemprop="votes"><?php preg_match_all('/\(([0-9]+)\)/', $tab_review, $wyniki);
			      		if(isset($wyniki[1][0])) { echo $wyniki[1][0]; } else { echo 0; } ?></span>
			      	</span>
			      	<?php } ?>
			        <div class="rating"><i class="fa fa-star<?php if($rating >= 1) { echo ' active'; } ?>"></i><i class="fa fa-star<?php if($rating >= 2) { echo ' active'; } ?>"></i><i class="fa fa-star<?php if($rating >= 3) { echo ' active'; } ?>"></i><i class="fa fa-star<?php if($rating >= 4) { echo ' active'; } ?>"></i><i class="fa fa-star<?php if($rating >= 5) { echo ' active'; } ?>"></i>&nbsp;&nbsp;&nbsp;<a onclick="$('a[href=\'#tab-review\']').trigger('click'); $('html, body').animate({scrollTop:$('#tab-review').offset().top}, '500', 'swing');"><?php echo $reviews; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('a[href=\'#tab-review\']').trigger('click'); $('html, body').animate({scrollTop:$('#tab-review').offset().top}, '500', 'swing');"><?php echo $text_write; ?></a></div>
			        <?php if($theme_options->get( 'product_social_share' ) != '0') { ?>
			        <div class="share">
			        	<!-- AddThis Button BEGIN -->
			        	<div class="addthis_toolbox addthis_default_style"><a class="addthis_button_facebook_like" fb:like:layout="button_count"></a> <a class="addthis_button_tweet"></a> <a class="addthis_button_pinterest_pinit"></a> <a class="addthis_counter addthis_pill_style"></a></div>
			        	<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-515eeaf54693130e"></script> 
			        	<!-- AddThis Button END --> 
			        </div>
			        <?php } ?>
			      </div>
			      <?php } ?>
			      
			      <div class="description">
			        <?php if ($manufacturer) { ?>
			        <span><?php echo $text_manufacturer; ?></span> <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a><br />
			        <?php } ?>
			        <span><?php echo $text_model; ?></span> <?php echo $model; ?><br />
			        <?php if ($reward) { ?>
			        <span><?php echo $text_reward; ?></span> <?php echo $reward; ?><br />
			        <?php } ?>
			        <span><?php echo $text_stock; ?></span> <?php echo $stock; ?></div>
			      <?php if ($price) { ?>
			      <div class="price">
			        <?php if($theme_options->get( 'display_specials_countdown' ) == '1' && $special) { $countdown = rand(0, 5000)*rand(0, 5000); 
			                  $product_detail = $theme_options->getDataProduct( $product_id );
			                  $date_end = $product_detail['date_end'];
			                  if($date_end != '0000-00-00' && $date_end) { ?>
			             		<script>
			             		$(function () {
			             			var austDay = new Date();
			             			austDay = new Date(<?php echo date("Y", strtotime($date_end)); ?>, <?php echo date("m", strtotime($date_end)); ?> - 1, <?php echo date("d", strtotime($date_end)); ?>);
			             			$('#countdown<?php echo $countdown; ?>').countdown({until: austDay});
			             		});
			             		</script>
			             		<h3><?php if($theme_options->get( 'limited_time_offer_text', $config->get( 'config_language_id' ) ) != '') { echo $theme_options->get( 'limited_time_offer_text', $config->get( 'config_language_id' ) ); } else { echo 'Limited time offer'; } ?></h3>
			             		<div id="countdown<?php echo $countdown; ?>" class="clearfix"></div>
			        	     <?php } ?>
			        <?php } ?>
			        <?php if (!$special) { ?>
			        <span class="price-new"><span itemprop="price" id="price-old"><?php echo $price; ?></span></span>
			        <?php } else { ?>
			        <span class="price-new"><span itemprop="price" id="price-special"><?php echo $special; ?></span></span> <span class="price-old" id="price-old"><?php echo $price; ?></span>
			        <?php } ?>
			        <br />
			        <?php if ($tax) { ?>
			        <span class="price-tax"><?php echo $text_tax; ?> <span id="price-tax"><?php echo $tax; ?></span></span><br />
			        <?php } ?>
			        <?php if ($points) { ?>
			        <span class="reward"><small><?php echo $text_points; ?> <?php echo $points; ?></small></span><br />
			        <?php } ?>
			        <?php if ($discounts) { ?>
			        <br />
			        <div class="discount">
			          <?php foreach ($discounts as $discount) { ?>
			          <?php echo $discount['quantity']; ?><?php echo $text_discount; ?><?php echo $discount['price']; ?><br />
			          <?php } ?>
			        </div>
			        <?php } ?>
			      </div>
			      <?php } ?>
			     </div>
			     
			     <div id="product">
			      <?php $product_options_center = $modules_old_opencart->getModules('product_options_center'); ?>
			      <?php if ($options || count($product_options_center)) { ?>
			      <div class="options">
			        <?php foreach ($product_options_center as $module) { echo $module; } ?>
			        
			        <?php if ($options) { ?>
			        <div class="options2">
     			        <h2><?php echo $text_option; ?></h2>
     			        <?php foreach ($options as $option) { ?>
     			        <?php if ($option['type'] == 'select') { ?>
     			        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
     			          <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
     			          <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
     			            <option value=""><?php echo $text_select; ?></option>
     			            <?php foreach ($option['product_option_value'] as $option_value) { ?>
     			            <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
     			            <?php if ($option_value['price']) { ?>
     			            (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
     			            <?php } ?>
     			            </option>
     			            <?php } ?>
     			          </select>
     			        </div>
     			        <?php } ?>
     			         <?php if ($option['type'] == 'radio') { ?>
     			         <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
     			           <label class="control-label"><?php echo $option['name']; ?></label>
     			           <div id="input-option<?php echo $option['product_option_id']; ?>">
     			             <?php foreach ($option['product_option_value'] as $option_value) { ?>
     			             <div class="radio <?php if($theme_options->get( 'product_page_radio_style' ) == 1) { echo 'radio-type-button2'; } ?>">
     			               <label>
     			                 <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
     			                 <span <?php if ($option_value['image']) { echo 'style="padding: 2px"'; } ?>><?php if (!$option_value['image']) { ?><?php echo $option_value['name']; ?><?php } ?>
     			                 <?php if ($option_value['image']) { ?>
     			                 <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>"  style="display: block;border-radius: 100px;-webkit-border-radius: 100px;-moz-border-radius: 100px" class="img-thumbnail" /> 
     			                 <?php } ?> 
     			                 <?php if($theme_options->get( 'product_page_radio_style' ) != 1) { ?><?php if ($option_value['price']) { ?>
     			                 (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
     			                 <?php } ?><?php } ?></span>
     			               </label>
     			             </div>
     			             <?php } ?>
     			             
     			             <?php if($theme_options->get( 'product_page_radio_style' ) == 1) { ?>
     			             <script type="text/javascript">
     			                  $(document).ready(function(){
     			                       $('#input-option<?php echo $option['product_option_id']; ?>').on('click', 'span', function () {
     			                            $('#input-option<?php echo $option['product_option_id']; ?> span').removeClass("active");
     			                            $(this).addClass("active");
     			                       });
     			                  });
     			             </script>
     			             <?php } ?>
     			           </div>
     			         </div>
     			         <?php } ?>
     			        <?php if ($option['type'] == 'checkbox') { ?>
     			        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
     			          <label class="control-label"><?php echo $option['name']; ?></label>
     			          <div id="input-option<?php echo $option['product_option_id']; ?>">
     			            <?php foreach ($option['product_option_value'] as $option_value) { ?>
     			            <div class="checkbox <?php if($theme_options->get( 'product_page_checkbox_style' ) == 1) { echo 'radio-type-button2'; } ?>">
     			              <label>
     			                <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
     			                <span><?php echo $option_value['name']; ?>
     			                <?php if($theme_options->get( 'product_page_checkbox_style' ) != 1) { ?><?php if ($option_value['price']) { ?>
     			                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
     			                <?php } ?><?php } ?></span>
     			              </label>
     			            </div>
     			            <?php } ?>
     			            
     			            <?php if($theme_options->get( 'product_page_checkbox_style' ) == 1) { ?>
     			            <script type="text/javascript">
     			                 $(document).ready(function(){
     			                      $('#input-option<?php echo $option['product_option_id']; ?>').on('click', 'span', function () {
     			                           if($(this).hasClass("active") == true) {
     			                                $(this).removeClass("active");
     			                           } else {
     			                                $(this).addClass("active");
     			                           }
     			                      });
     			                 });
     			            </script>
     			            <?php } ?>
     			          </div>
     			        </div>
     			        <?php } ?>
     			        <?php if ($option['type'] == 'image') { ?>
     			        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
     			          <label class="control-label"><?php echo $option['name']; ?></label>
     			          <div id="input-option<?php echo $option['product_option_id']; ?>">
     			            <?php foreach ($option['product_option_value'] as $option_value) { ?>
     			            <div class="radio <?php if($theme_options->get( 'product_page_radio_style' ) == 1) { echo 'radio-type-button'; } ?>">
     			              <label>
     			                <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
     			                <span <?php if($theme_options->get( 'product_page_radio_style' ) == 1) { ?>data-toggle="tooltip" data-placement="top" title="<?php echo $option_value['name']; ?> <?php if ($option_value['price']) { ?>(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)<?php } ?>"<?php } ?>><img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" <?php if($theme_options->get( 'product_page_radio_style' ) == 1) { ?>width="<?php if($theme_options->get( 'product_page_radio_image_width' ) > 0) { echo $theme_options->get( 'product_page_radio_image_width' ); } else { echo 25; } ?>px" height="<?php if($theme_options->get( 'product_page_radio_image_height' ) > 0) { echo $theme_options->get( 'product_page_radio_image_height' ); } else { echo 25; } ?>px"<?php } ?> /> <?php if($theme_options->get( 'product_page_radio_style' ) != 1) { ?><?php echo $option_value['name']; ?>
     			                <?php if ($option_value['price']) { ?>
     			                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
     			                <?php } ?><?php } ?></span>
     			              </label>
     			            </div>
     			            <?php } ?>
     			            <?php if($theme_options->get( 'product_page_radio_style' ) == 1) { ?>
     			            <script type="text/javascript">
     			                 $(document).ready(function(){
     			                      $('#input-option<?php echo $option['product_option_id']; ?>').on('click', 'span', function () {
     			                           $('#input-option<?php echo $option['product_option_id']; ?> span').removeClass("active");
     			                           $(this).addClass("active");
     			                      });
     			                 });
     			            </script>
     			            <?php } ?>
     			          </div>
     			        </div>
     			        <?php } ?>
     			        <?php if ($option['type'] == 'text') { ?>
     			        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
     			          <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
     			          <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
     			        </div>
     			        <?php } ?>
     			        <?php if ($option['type'] == 'textarea') { ?>
     			        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
     			          <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
     			          <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
     			        </div>
     			        <?php } ?>
     			        <?php if ($option['type'] == 'file') { ?>
     			        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
     			          <label class="control-label"><?php echo $option['name']; ?></label>
     			          <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" class="btn btn-default btn-block" style="margin-top: 7px"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
     			          <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
     			        </div>
     			        <?php } ?>
     			       	<?php if ($option['type'] == 'date') { ?>
     			       	<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
     			       	  <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
     			       	  <div class="input-group date">
     			       	    <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
     			       	    <span class="input-group-btn">
     			       	    <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
     			       	    </span></div>
     			       	</div>
     			       	<?php } ?>
     			       	<?php if ($option['type'] == 'datetime') { ?>
     			       	<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
     			       	  <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
     			       	  <div class="input-group datetime">
     			       	    <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
     			       	    <span class="input-group-btn">
     			       	    <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
     			       	    </span></div>
     			       	</div>
     			       	<?php } ?>
     			       	<?php if ($option['type'] == 'time') { ?>
     			       	<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
     			       	  <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
     			       	  <div class="input-group time">
     			       	    <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
     			       	    <span class="input-group-btn">
     			       	    <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
     			       	    </span></div>
     			       	</div>
     			       	<?php } ?>
     			        <?php } ?>
     			   </div>
			        <?php } ?>
			      </div>
			      <?php } ?>
			      
			      <?php if ($recurrings) { ?>
			      <div class="options">
			          <h2><?php echo $text_payment_recurring ?></h2>
			          <div class="form-group required">
			            <select name="recurring_id" class="form-control">
			              <option value=""><?php echo $text_select; ?></option>
			              <?php foreach ($recurrings as $recurring) { ?>
			              <option value="<?php echo $recurring['recurring_id'] ?>"><?php echo $recurring['name'] ?></option>
			              <?php } ?>
			            </select>
			            <div class="help-block" id="recurring-description"></div>
			          </div>
			      </div>
			      <?php } ?>
			      
			      <div class="cart">
			        <div class="add-to-cart clearfix">
			          <?php 
			          $product_enquiry = $modules_old_opencart->getModules('product_enquiry');
			          if( count($product_enquiry) ) { 
			          	foreach ($product_enquiry as $module) {
			          		echo $module;
			          	}
			          } else { ?>
     			          <p><?php echo $entry_qty; ?></p>
     			          <div class="quantity">
     				          <input type="text" name="quantity" id="quantity_wanted" size="2" value="<?php echo $minimum; ?>" />
     				          <a href="#" id="q_up"><i class="fa fa-plus"></i></a>
     				          <a href="#" id="q_down"><i class="fa fa-minus"></i></a>
     			          </div>
     			          <input type="hidden" name="product_id" size="2" value="<?php echo $product_id; ?>" />
     			         <div class="add-tocart"><i class="fa fa-shopping-cart"></i> <input type="button" value="<?php echo $button_cart; ?>" id="button-cart" rel="<?php echo $product_id; ?>" data-loading-text="<?php echo $text_loading; ?>" class="button" /></div>
     			          
     			          <?php 
     			          $product_question = $modules_old_opencart->getModules('product_question');
     			          if( count($product_question) ) { 
     			          	foreach ($product_question as $module) {
     			          		echo $module;
     			          	}
     			          } ?>
			          <?php } ?>
			        </div>
	
			        <div class="feet-link">
 						<input type="text" name="area" id="area_wanted" value="" /> <label><h4> Area in sq.ft</h4></label>
			        </div>		        
			        <div class="links clearfix">
			        	<ul><li><i class="fa fa-heart-o"></i>
                        <a onclick="wishlist.add('<?php echo $product_id; ?>');"><?php if($theme_options->get( 'add_to_wishlist_text', $config->get( 'config_language_id' ) ) != '') { echo $theme_options->get( 'add_to_wishlist_text', $config->get( 'config_language_id' ) ); } else { echo 'Add to wishlist'; } ?></a></li>
                        <li>			 <i class="fa fa-exchange"></i>       	<a onclick="compare.add('<?php echo $product_id; ?>');"><?php if($theme_options->get( 'add_to_compare_text', $config->get( 'config_language_id' ) ) != '') { echo $theme_options->get( 'add_to_compare_text', $config->get( 'config_language_id' ) ); } else { echo 'Add to compare'; } ?></a></li></ul>
			        </div>

			         
			        <?php if ($minimum > 1) { ?>
			        <div class="minimum"><?php echo $text_minimum; ?></div>
			        <?php } ?>
			      </div>
			     </div><!-- End #product -->
			      
			      <?php 
			      $product_options_bottom = $modules_old_opencart->getModules('product_options_bottom');
			      if( count($product_options_bottom) ) { 
			      	foreach ($product_options_bottom as $module) {
			      		echo $module;
			      	}
			      } ?>
		    	</div>
		    </div>
    	</div>
    	
    	<?php if(@$theme_options->get( 'custom_block', 'product_page', $config->get( 'config_language_id' ), 'status' ) == 1 || count(@$product_custom_block)) { ?>
    	<div class="col-md-3 col-sm-12">
    	     <?php if($theme_options->get( 'custom_block', 'product_page', $config->get( 'config_language_id' ), 'status' ) == 1) { ?>
    		<div class="product-block">
    			<?php if($theme_options->get( 'custom_block', 'product_page', $config->get( 'config_language_id' ), 'heading' ) != '') { ?>
    			<h4 class="title-block"><?php echo $theme_options->get( 'custom_block', 'product_page', $config->get( 'config_language_id' ), 'heading' ); ?></h4>
    			<div class="strip-line"></div>
    			<?php } ?>
    			<div class="block-content">
    				<?php echo html_entity_decode($theme_options->get( 'custom_block', 'product_page', $config->get( 'config_language_id' ), 'text' )); ?>
    			</div>
    		</div>
    		<?php } ?>
    		
    		<?php foreach ($product_custom_block as $module) { echo $module; } ?>
    	</div>
    	<?php } ?>
    </div>
  </div>
  
  <?php 
  $product_over_tabs = $modules_old_opencart->getModules('product_over_tabs');
  if( count($product_over_tabs) ) { 
  	foreach ($product_over_tabs as $module) {
  		echo $module;
  	}
  } ?>
  
  <?php 
  	  $language_id = $config->get( 'config_language_id' );
	  $tabs = array();
	  
	  $tabs[] = array(
	  	'heading' => $tab_description,
	  	'content' => 'description',
	  	'sort' => 1
	  );
	  
	  if ($attribute_groups) { 
		  $tabs[] = array(
		  	'heading' => $tab_attribute,
		  	'content' => 'attribute',
		  	'sort' => 3
		  );
	  }
	  
	  if ($review_status) { 
	  	  $tabs[] = array(
	  	  	'heading' => $tab_review,
	  	  	'content' => 'review',
	  	  	'sort' => 5
	  	  );
	  }
	  	  	  
	  if(is_array($config->get('product_tabs'))) {
		  foreach($config->get('product_tabs') as $tab) {
		  	if($tab['status'] == 1 || $tab['product_id'] == $product_id) {
		  		foreach($tab['tabs'] as $zakladka) {
		  			if($zakladka['status'] == 1) {
		  				$heading = false; $content = false;
		  				if(isset($zakladka[$language_id])) {
		  					$heading = $zakladka[$language_id]['name'];
		  					$content = html_entity_decode($zakladka[$language_id]['html']);
		  				}
		  				$tabs[] = array(
		  					'heading' => $heading,
		  					'content' => $content,
		  					'sort' => $zakladka['sort_order']
		  				);
		  			}
		  		}
		  	}
		  }
	  }
	  
	  usort($tabs, "cmp_by_optionNumber");
  ?>
  <div id="tabs" class="htabs">
  	<?php $i = 0; foreach($tabs as $tab) { $i++;
  		$id = 'tab_'.$i;
  		if($tab['content'] == 'description') { $id = 'tab-description'; }
  		if($tab['content'] == 'attribute') { $id = 'tab-attribute'; }
  		if($tab['content'] == 'review') { $id = 'tab-review'; }
  		echo '<a href="#'.$id.'">'.$tab['heading'].'</a>';
  	} ?>
  </div>
  <?php $i = 0; foreach($tabs as $tab) { $i++;
  	$id = 'tab_'.$i;
  	if($tab['content'] != 'description' && $tab['content'] != 'attribute' && $tab['content'] != 'review') {
  		echo '<div id="'.$id.'" class="tab-content">'.$tab['content'].'</div>';
  	}
  } ?>
  <div id="tab-description" class="tab-content" itemprop="description"><?php echo $description; ?></div>
  <?php if ($attribute_groups) { ?>
  <div id="tab-attribute" class="tab-content">
    <table class="attribute" cellspacing="0">
      <?php foreach ($attribute_groups as $attribute_group) { ?>
      <thead>
        <tr>
          <td colspan="2"><?php echo $attribute_group['name']; ?></td>
        </tr>
      </thead>
      <tbody>
        <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
        <tr>
          <td><?php echo $attribute['name']; ?></td>
          <td><?php echo $attribute['text']; ?></td>
        </tr>
        <?php } ?>
      </tbody>
      <?php } ?>
    </table>
  </div>
  <?php } ?>
  <?php if ($review_status) { ?>
  <div id="tab-review" class="tab-content">
	<form class="form-horizontal" id="form-review">
	  <div id="review"></div>
	  <h2><?php echo $text_write; ?></h2>
	  <?php if ($review_guest) { ?>
	  <div class="form-group required">
	    <div class="col-sm-12">
	      <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
	      <input type="text" name="name" value="" id="input-name" class="form-control" />
	    </div>
	  </div>
	  <div class="form-group required">
	    <div class="col-sm-12">
	         <label class="control-label"><?php echo $entry_rating; ?></label>
	        
	       <div class="rating set-rating">
	          <i class="fa fa-star" data-value="1"></i>
	          <i class="fa fa-star" data-value="2"></i>
	          <i class="fa fa-star" data-value="3"></i>
	          <i class="fa fa-star" data-value="4"></i>
	          <i class="fa fa-star" data-value="5"></i>
	      </div>
	      <script type="text/javascript">
	          $(document).ready(function() {
	            $('.set-rating i').hover(function(){
	                var rate = $(this).data('value');
	                var i = 0;
	                $('.set-rating i').each(function(){
	                    i++;
	                    if(i <= rate){
	                        $(this).addClass('active');
	                    }else{
	                        $(this).removeClass('active');
	                    }
	                })
	            })
	            
	            $('.set-rating i').mouseleave(function(){
	                var rate = $('input[name="rating"]:checked').val();
	                rate = parseInt(rate);
	                i = 0;
	                  $('.set-rating i').each(function(){
	                    i++;
	                    if(i <= rate){
	                        $(this).addClass('active');
	                    }else{
	                        $(this).removeClass('active');
	                    }
	                  })
	            })
	            
	            $('.set-rating i').click(function(){
	                $('input[name="rating"]:nth('+ ($(this).data('value')-1) +')').prop('checked', true);
	            });
	          });
	      </script>
	      <div class="hidden">
	         &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
	         <input type="radio" name="rating" value="1" />
	         &nbsp;
	         <input type="radio" name="rating" value="2" />
	         &nbsp;
	         <input type="radio" name="rating" value="3" />
	         &nbsp;
	         <input type="radio" name="rating" value="4" />
	         &nbsp;
	         <input type="radio" name="rating" value="5" />
	         &nbsp;<?php echo $entry_good; ?>
	      </div>
	   </div>
	  </div>
	  <div class="form-group required">
	    <div class="col-sm-12">
	      <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
	      <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
	      <div class="help-block"><?php //echo $text_note; ?></div>
	    </div>
	  </div>
	  <?php echo $captcha; ?>
	  <div class="buttons clearfix" style="margin-bottom: 0px">
	    <div class="pull-right">
	      <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary"><?php echo $button_continue; ?></button>
	    </div>
	  </div>
	  <?php } else { ?>
	  <?php echo $text_login; ?>
	  <?php } ?>
	</form>
  </div>
  <?php } ?>
  <?php if ($tags) { ?>
  <div class="tags_product"><b><?php echo $text_tags; ?></b>
    <?php for ($i = 0; $i < count($tags); $i++) { ?>
    <?php if ($i < (count($tags) - 1)) { ?>
    <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
    <?php } else { ?>
    <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
    <?php } ?>
    <?php } ?>
  </div>
  <?php } ?>
  
</div>

<script type="text/javascript"><!--
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
	$.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#recurring-description').html('');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			
			if (json['success']) {
				$('#recurring-description').html(json['success']);
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('#button-cart,.add-tocart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart').button('loading');
		},
		complete: function() {
			$('#button-cart').button('reset');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));
						
						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}
				
				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}
				
				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}
			
			if (json['success']) {
				$.notify({
					message: json['success'],
					target: '_blank'
				},{
					// settings
					element: 'body',
					position: null,
					type: "info",
					allow_dismiss: true,
					newest_on_top: false,
					placement: {
						from: "top",
						align: "right"
					},
					offset: 20,
					spacing: 10,
					z_index: 2031,
					delay: 1000,
					timer: 1000,
					url_target: '_blank',
					mouse_over: null,
					animate: {
						enter: 'animated fadeInDown',
						exit: 'animated fadeOutUp'
					},
					onShow: null,
					onShown: null,
					onClose: null,
					onClosed: null,
					icon_type: 'class',
					template: '<div data-notify="container" class="col-xs-11 col-sm-3 alert alert-success" role="alert">' +
						'<button type="button" aria-hidden="true" class="close" data-notify="dismiss">×</button>' +
						'<span data-notify="message"><i class="fa fa-check-circle"></i>&nbsp; {2}</span>' +
						'<div class="progress" data-notify="progressbar">' +
							'<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%;"></div>' +
						'</div>' +
						'<a href="{3}" target="{4}" data-notify="url"></a>' +
					'</div>' 
				});
				
				$('#cart_block #cart_content').load('index.php?route=common/cart/info #cart_content_ajax');
				$('#cart_block #total_price_ajax').load('index.php?route=common/cart/info #total_price');
				$('#cart_block .cart-count').load('index.php?route=common/cart/info #total_count_ajax');

			}
		},
     	error: function(xhr, ajaxOptions, thrownError) {
     	    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
     	}
	});
});

//--></script> 
<script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});

$('.time').datetimepicker({
	pickDate: false
});
		
$('button[id^=\'button-upload\']').on('click', function() {
	var node = this;
	
	$('#form-upload').remove();
	
	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');
	
	$('#form-upload input[name=\'file\']').trigger('click');
	
	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);
			
			$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$(node).button('loading');
				},
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$('.text-danger').remove();
					
					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}
					
					if (json['success']) {
						alert(json['success']);
						
						$(node).parent().find('input').attr('value', json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script> 
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
	e.preventDefault();
	
    $('#review').fadeOut('slow');
        
    $('#review').load(this.href);
    
    $('#review').fadeIn('slow');
});         

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
    $.ajax({
        url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
        type: 'post',
        dataType: 'json',
        data: $("#form-review").serialize(),
        beforeSend: function() {
            $('#button-review').button('loading');
        },
        complete: function() {
            $('#button-review').button('reset');
        },
        success: function(json) {
			$('.alert-success, .alert-danger').remove();
            
			if (json['error']) {
                $('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
            }
            
            if (json['success']) {
                $('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');
                                
                $('input[name=\'name\']').val('');
                $('textarea[name=\'text\']').val('');
                $('input[name=\'rating\']:checked').prop('checked', false);
            }
        }
    });
});
</script>

<script type="text/javascript"><!--
	$(document).ready(function() {
		
		$('.product-options li.radio').click(function(){
			$(this).addClass(function() {
				if($(this).hasClass("active")) return "";
				return "active";
			});
			
			$(this).siblings("li").removeClass("active");
			$(this).parent().find('.selected-option').html('<span class="label label-success">'+ $(this).find('img').data('original-title') +'</span>');
		})
		
		// CUSTOM BUTTON
		$(".thumb-vertical-outer .next-thumb").click(function () {
			$( ".thumb-vertical-outer .lSNext" ).trigger( "click" );
		});
		
		$(".thumb-vertical-outer .prev-thumb").click(function () {
			$( ".thumb-vertical-outer .lSPrev" ).trigger( "click" );
		});

		$(".thumb-vertical-outer .thumb-vertical").lightSlider({
			item: 4,
			autoWidth: false,
			vertical:true,
			slideMargin: 10,
			verticalHeight:420,
            pager: false,
			controls: true,
            prevHtml: '<i class="fa fa-angle-up"></i>',
            nextHtml: '<i class="fa fa-angle-down"></i>',
			responsive: [
				{
					breakpoint: 1199,
					settings: {
						verticalHeight: 320,
						item: 3,
					}
				},{
					breakpoint: 1024,
					settings: {
						verticalHeight: 235,
						item: 2,
						slideMargin: 5,
					}
				},{
					breakpoint: 768,
					settings: {
						verticalHeight: 360,
						item: 3,
					}
				},{
					breakpoint: 480,
					settings: {
						verticalHeight: 110,
						item: 1,
					}
				}
				
			]
							
        });
		
		
		$("#thumb-slider .owl2-item").each(function() {
			$(this).find("[data-index='0']").addClass('active');
		});


		$('.large-image img').elevateZoom({
	        easing : true,
	        borderSize  : 1,
	        borderColour    : "rgba(0, 0, 0, 0.1)",
	        zoomWindowWidth     : 500,
	        zoomWindowHeight    : 400,
	        gallery:'thumb-slider',
			cursor: 'pointer',
			galleryActiveClass: "active",
			borderSize:"1",
			borderColour:"rgba(0,0,0,0.1)",
			boxShadow:"rgba(0, 0, 0, 0.2) 0px 1px 16px",
			zoomWindowWidth     : 500
	    });
	});
	
	
//--></script>

<script type="text/javascript"><!--
$(document).ready(function() {     


});
//--></script> 

<script type="text/javascript">
var ajax_price = function() {
	$.ajax({
		type: 'POST',
		url: 'index.php?route=product/liveprice/index',
		data: $('.product-info input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\']:checked, .product-info input[type=\'checkbox\']:checked, .product-info select, .product-info textarea'),
		dataType: 'json',
			success: function(json) {
			if (json.success) {
				change_price('#price-special', json.new_price.special);
				change_price('#price-tax', json.new_price.tax);
				change_price('#price-old', json.new_price.price);
			}
		}
	});
}

var change_price = function(id, new_price) {
	$(id).html(new_price);
}

$('.product-info input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\'], .product-info input[type=\'checkbox\'], .product-info select, .product-info textarea, .product-info input[name=\'quantity\']').on('change', function() {
	ajax_price();
});

$("#area_wanted").keydown(function() {
	setTimeout(function () {
		if($("#area_wanted").val()!='') {
		 <?php if($area):?>
		 	var area_qty = $("#area_wanted").val()/<?php echo $area; ?>;
		 	var quantity = Math.ceil(area_qty);
		 	if(quantity)
		 		$("#quantity_wanted").val(quantity);
		 	else
		 		$("#quantity_wanted").val(1);
		 <?php endif;?>
		}
    }, 1);
})
$("#quantity_wanted").keydown(function() {
	setTimeout(function () {
		if($("#quantity_wanted").val()!='') {
		 <?php if($area):?>
		 	var area_ph = <?php echo $area; ?>;
		 	var area = area_ph * $("#quantity_wanted").val();

		 	var area = Math.ceil(area);
		 	if(area)
		 		$("#area_wanted").val(area);
		 	else
		 		$("#area_wanted").val('');
		 <?php endif;?>
		}
    }, 1);
})

</script>

<script type="text/javascript">
$.fn.tabs = function() {
	var selector = this;
	
	this.each(function() {
		var obj = $(this); 
		
		$(obj.attr('href')).hide();
		
		$(obj).click(function() {
			$(selector).removeClass('selected');
			
			$(selector).each(function(i, element) {
				$($(element).attr('href')).hide();
			});
			
			$(this).addClass('selected');
			
			$($(this).attr('href')).show();
			
			return false;
		});
	});

	$(this).show();
	
	$(this).first().click();
};
</script>

<script type="text/javascript"><!--
$('#tabs a').tabs();
//--></script> 

<style>
.product-info .price .price-old {
    vertical-align: bottom !important;
    line-height: 40px !important;
}
.add-tocart {
	cursor: pointer;
}
</style>

<?php if($theme_options->get( 'product_image_zoom' ) != 2) { 
echo '<script type="text/javascript" src="catalog/view/theme/' . $config->get('theme_' . $config->get('config_theme') . '_directory') . '/js/jquery.elevateZoom-3.0.3.min.js"></script>';
} ?>

<?php include('catalog/view/theme/'.$config->get('theme_' . $config->get('config_theme') . '_directory').'/template/new_elements/wrapper_bottom.tpl'); ?>
<?php echo $footer; ?>