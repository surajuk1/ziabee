<?php
$theme_options = $registry->get('theme_options');
$config = $registry->get('config');
?>

<!-- Product -->
<div class="product clearfix product-hover">
	<div class="left">
		<?php if ($product['thumb']) { ?>
			<?php if($product['special'] && $theme_options->get( 'display_text_sale' ) != '0') { ?>
				<?php $text_sale = 'Sale';
				if($theme_options->get( 'sale_text', $config->get( 'config_language_id' ) ) != '') {
					$text_sale = $theme_options->get( 'sale_text', $config->get( 'config_language_id' ) );
				} ?>
				<?php if($theme_options->get( 'type_sale' ) == '1') { ?>
					<?php $product_detail = $theme_options->getDataProduct( $product['product_id'] );
					$roznica_ceny = $product_detail['price']-$product_detail['special'];
					$procent = ($roznica_ceny*100)/$product_detail['price']; ?>
					<div class="sale">-<?php echo round($procent); ?>%</div>
				<?php } else { ?>
					<div class="sale"><?php echo $text_sale; ?></div>
				<?php } ?>
			 <?php } elseif($theme_options->get( 'display_text_new' ) != '0' && $theme_options->isLatestProduct( $product['product_id'] )) { ?>
				 <div class="new"><?php if($theme_options->get( 'new_text', $config->get( 'config_language_id' ) ) != '') { echo $theme_options->get( 'new_text', $config->get( 'config_language_id' ) ); } else { echo 'New'; } ?></div>
			 <?php } ?>
			
			<div class="image <?php if($theme_options->get( 'product_image_effect' ) == '1') { echo 'image-swap-effect'; } ?>">
				<a href="<?php echo $product['href']; ?>">
					<?php if($theme_options->get( 'product_image_effect' ) == '1') {
						$nthumb = str_replace(' ', "%20", ($product['thumb']));
						$nthumb = str_replace(HTTP_SERVER, "", $nthumb);
						$image_size = getimagesize($nthumb);
						$image_swap = $theme_options->productImageSwap($product['product_id'], $image_size[0], $image_size[1]);
						if($image_swap != '') echo '<img src="' . $image_swap . '" alt="' . $product['name'] . '" class="swap-image" />';
					} ?> 
					<?php if($theme_options->get( 'lazy_loading_images' ) != '0') { ?>
					<img src="image/catalog/blank.gif" data-echo="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" class="<?php if($theme_options->get( 'product_image_effect' ) == '2') { echo 'zoom-image-effect'; } ?>" />
					<?php } else { ?>
					<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" class="<?php if($theme_options->get( 'product_image_effect' ) == '2') { echo 'zoom-image-effect'; } ?>" />
					<?php } ?>
				</a>
			</div>
		<?php } else { ?>
			<div class="image">
				<a href="<?php echo $product['href']; ?>"><img src="image/no_image.jpg" alt="<?php echo $product['name']; ?>" <?php if($theme_options->get( 'product_image_effect' ) == '2') { echo 'class="zoom-image-effect"'; } ?> /></a>
			</div>
		<?php } ?>
		<?php if($theme_options->get( 'display_specials_countdown' ) == '1' && $product['special']) { $countdown = rand(0, 5000)*rand(0, 5000); 
		          $product_detail = $theme_options->getDataProduct( $product['product_id'] );
		          $date_end = $product_detail['date_end'];
		          if($date_end != '0000-00-00' && $date_end) { ?>
               		<script>
               		$(function () {
               			var austDay = new Date();
               			austDay = new Date(<?php echo date("Y", strtotime($date_end)); ?>, <?php echo date("m", strtotime($date_end)); ?> - 1, <?php echo date("d", strtotime($date_end)); ?>);
               			$('#countdown<?php echo $countdown; ?>').countdown({until: austDay});
               		});
               		</script>
               		<div id="countdown<?php echo $countdown; ?>" class="clearfix"></div>
     		     <?php } ?>
		<?php } ?>
	</div>
	<div class="right">
		<div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
		<?php if($theme_options->get( 'product_grid_type' ) == '7') { ?>
		<?php $product_detail = $theme_options->getDataProduct( $product['product_id'] ); ?>
		<div class="brand"><?php echo $product_detail['manufacturer']; ?></div>
		<?php } ?>

		<div class="price">
			<?php if (!$product['special']) { ?>
			<?php echo $product['price']; ?>
			<?php } else { ?>
			<span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
			<?php } ?>
		</div>

		<?php if($product['price']) { ?>
		<div class="price cart-quantity">
			<div class="number-input">
			  <button onclick="this.parentNode.querySelector('input[type=number]').stepDown()" ></button>
			  <input class="quantity" min="1" name="quantity" value="1" type="number">
			  <button onclick="this.parentNode.querySelector('input[type=number]').stepUp()" class="plus"></button>
			</div>
		</div>
		<?php } ?>

		<?php if($theme_options->get( 'display_add_to_compare' ) != '0' || $theme_options->get( 'display_add_to_wishlist' ) != '0' || $theme_options->get( 'display_add_to_cart' ) != '0') { ?>
		<div class="only-hover">
		     <ul>
		          <?php if($theme_options->get( 'display_add_to_cart' ) != '0') { ?>
		               <?php $enquiry = false; if($config->get( 'product_blocks_module' ) != '') { $enquiry = $theme_options->productIsEnquiry($product['product_id']); }
		               if(is_array($enquiry)) { ?>
		               <li><a href="javascript:openPopup('<?php echo $enquiry['popup_module']; ?>', '<?php echo $product['product_id']; ?>')" data-toggle="tooltip" data-original-title="<?php echo $enquiry['block_name']; ?>"><i class="fa fa-question"></i></a></li>
		               <?php } else { ?>
		               <li class="add-to-cart"><a onclick="cartquantity('<?php echo $product['product_id']; ?>',this)" data-toggle="tooltip" data-original-title="<?php echo $button_cart; ?>"><i class="fa fa-shopping-cart"></i></a></li>
		               <?php } ?>
		          <?php } ?>
		          
		          <?php if($theme_options->get( 'quick_view' ) == 1) { ?>
		          <li class="quickview"><a href="index.php?route=product/quickview&amp;product_id=<?php echo $product['product_id']; ?>" data-toggle="tooltip" data-original-title="<?php if($theme_options->get( 'quickview_text', $config->get( 'config_language_id' ) ) != '') { echo html_entity_decode($theme_options->get( 'quickview_text', $config->get( 'config_language_id' ) )); } else { echo 'Quickview'; } ?>"><i class="fa fa-eye"></i></a></li>
		          <?php } ?>
		     
				<?php if($theme_options->get( 'display_add_to_compare' ) != '0') { ?>
				<li><a onclick="compare.add('<?php echo $product['product_id']; ?>');" data-toggle="tooltip" data-original-title="<?php if($theme_options->get( 'add_to_compare_text', $config->get( 'config_language_id' ) ) != '') { echo $theme_options->get( 'add_to_compare_text', $config->get( 'config_language_id' ) ); } else { echo 'Add to compare'; } ?>"><i class="fa fa-exchange"></i></a></li>
				<?php } ?>
				
				<?php if($theme_options->get( 'display_add_to_wishlist' ) != '0') { ?>
				<li><a onclick="wishlist.add('<?php echo $product['product_id']; ?>');" data-toggle="tooltip" data-original-title="<?php if($theme_options->get( 'add_to_wishlist_text', $config->get( 'config_language_id' ) ) != '') { echo $theme_options->get( 'add_to_wishlist_text', $config->get( 'config_language_id' ) ); } else { echo 'Add to wishlist'; } ?>"><i class="fa fa-heart-o"></i></a></li>
				<?php } ?>
			</ul>
		</div>
		<?php } ?>
	</div>
</div>

<script>
function cartquantity(product,data) {
	var quantity = $(data).closest("ul").closest("div").parent('div').find('.cart-quantity').find('.number-input').find('.quantity').val();
	cart.add(product,parseInt(quantity));
}

</script>