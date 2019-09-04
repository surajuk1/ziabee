<?php echo $header; ?><?php echo $column_left; ?>
<div id="content"><div class="container-fluid">
	<div class="page-header">
	    <h1>MegaMenu Manager Links</h1>
	    <ul class="breadcrumb">
		     <?php foreach ($breadcrumbs as $breadcrumb) { ?>
		      <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
		      <?php } ?>
	    </ul>
	  </div>
     <link rel="stylesheet" type="text/css" href="view/stylesheet/css/colorpicker.css" />
     <script type="text/javascript" src="view/javascript/jquery/colorpicker.js"></script>
    <link href='https://fonts.googleapis.com/css?family=Poppins:700,600,500,400,300' rel='stylesheet' type='text/css'>
    
	<?php if ($error_warning) { ?>
		<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
		  <button type="button" class="close" data-dismiss="alert">&times;</button>
		</div>
	  <?php } else { ?>
	  <?php if ($success) { ?>
	  <div class="alert alert-success"><i class="fa fa-exclamation-circle"></i> <?php echo $success; ?>
	    <button type="button" class="close" data-dismiss="alert">&times;</button>
	  </div>
	  <?php } } ?>
	
	<!-- Camera slider -->
	<div class="set-size" id="megamenu-manager-links">	
	     <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">	
	          <?php if(isset($link_id)) { ?>
	          <input type="hidden" name="link_id" value="<?php echo $link_id; ?>">
	          <?php } ?>
	          
			<!-- Content -->
			<div class="content">
				<div>
					<div class="bg-tabs clearfix">
						<div class="tab-content">
                                   <h4>Link settings <?php if(isset($link_id)) { echo '(ID: ' . $link_id . ')'; } ?></h4>
                                   
                                   <!-- Input -->
                                   <div class="input clearfix">
                                   	<p style="width: 200px">Link name:</p>
                                   	<div class="list-language">
                                   	     <?php foreach ($languages as $language) { ?>
                                   	     <div class="language">
                                   	     	<?php $language_id = $language['language_id']; ?>
                                   	     	<img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
                                   	     	<input type="text" name="name[<?php echo $language_id; ?>]" <?php if(isset($name[$language_id])) { echo 'value="'.$name[$language_id].'"'; } ?>>
                                   	     </div>
                                   	     <?php } ?>
                                   	</div>
                                   </div>
                                   
                                   <!-- Input -->
                                   <div class="input clearfix">
                                   	<p style="width: 200px">Url:</p>
                                   	<input type="text" name="url" id="url" value="<?php if(isset($url)) echo $url; ?>">
                                   </div>
                                   
                                   <!-- Input -->
                                   <div class="input clearfix">
                                   	<p style="width: 200px">Label:</p>
                                   	<div class="list-language">
                                   	     <?php foreach ($languages as $language) { ?>
                                   	     <div class="language">
                                   	     	<?php $language_id = $language['language_id']; ?>
                                   	     	<img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
                                   	     	<input type="text" name="label[<?php echo $language_id; ?>]" <?php if(isset($label[$language_id])) { echo 'value="'.$label[$language_id].'"'; } ?>>
                                   	     </div>
                                   	     <?php } ?>
                                   	</div>
                                   </div>
                                   
                                   <!-- Input -->
                                   <div class="input clearfix color_input">
                                   	<p style="width: 200px">Label text color:</p>
                                   	<input type="text" name="label_text" id="label_text" value="<?php if(isset($label_text)) echo $label_text; ?>">
                                    <span class="color_selected" <?php if(isset($label_text)) { echo 'style="background: ' . $label_text . '"'; } ?>></span>
                                   </div>
                                   
                                   <script type="text/javascript">
                                   
                                   $(document).ready(function() {
                                   
                                   	$('#label_text').ColorPicker({
                                   		onChange: function (hsb, hex, rgb, el) {
                                   			$(el).val("#" +hex);
                                            $(el).next('.color_selected').css("background", "#" + hex);
                                   		},
                                   		onShow: function (colpkr) {
                                   			$(colpkr).show();
                                   			return false;
                                   		},
                                   		onHide: function (colpkr) {
                                   			$(colpkr).hide();
                                   			return false;
                                   		}
                                   	});
                                   });
                                   </script>
                                   
                                   <!-- Input -->
                                   <div class="input clearfix color_input">
                                   	<p style="width: 200px">Label background color:</p>
                                   	<input type="text" name="label_background" id="label_background"  value="<?php if(isset($label_background)) echo $label_background; ?>">
                                    <span class="color_selected" <?php if(isset($label_background)) { echo 'style="background: ' . $label_background . '"'; } ?>></span>
                                   </div>
                                   
                                   <script type="text/javascript">
                                   
                                   $(document).ready(function() {
                                   
                                   	$('#label_background').ColorPicker({
                                   		onChange: function (hsb, hex, rgb, el) {
                                   			$(el).val("#" +hex);
                                   			$(el).next('.color_selected').css("background", "#" + hex);
                                   		},
                                   		onShow: function (colpkr) {
                                   			$(colpkr).show();
                                   			return false;
                                   		},
                                   		onHide: function (colpkr) {
                                   			$(colpkr).hide();
                                   			return false;
                                   		}
                                   	});
                                   });
                                   </script>
                                   
                                   <!-- Input -->
                                   <div class="input clearfix">
                                   	<p style="width: 200px">Image<br><span style="color:#dedede;font-size:10px">Display only on submenu visible</span></p>
                                   	<div class="own_image clearfix">
                                   		<input type="hidden" name="image" value="<?php echo $image; ?>" id="input-image" />
                                   		
                                   		<?php if($image == '') { ?>
                                   			<a href="" id="thumb-image" class="img-thumbnail img-edit" data-toggle="image"><img src="<?php echo $placeholder; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
                                   		<?php } else { ?>
                                   			<a href="" id="thumb-image" class="img-thumbnail img-edit" data-toggle="image"><img src="../image/<?php echo $image; ?>" data-placeholder="<?php echo $placeholder; ?>" alt="" /></a>
                                   		<?php } ?>
                                   	</div>
                                   </div>
						</div>
					</div>
					
					<div>
						<?php if(isset($link_id)) { ?>
						<!-- Buttons -->
						<div class="buttons"><input type="submit" name="button-save" class="button-save" value=""></div>
						<?php } else { ?>
						<div class="buttons"><input type="submit" name="button-add" class="button-save" value=""></div>
						<?php } ?>
					</div>
				</div>
			</div>
		</form>		
	</div>
</div>

<?php echo $footer; ?>