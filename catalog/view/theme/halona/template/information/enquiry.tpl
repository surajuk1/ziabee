<?php echo $header; 
$theme_options = $registry->get('theme_options');
$config = $registry->get('config'); 
include('catalog/view/theme/' . $config->get('theme_' . $config->get('config_theme') . '_directory') . '/template/new_elements/wrapper_top.tpl'); ?>

<div class="row margin-class">
	<div class="col-sm-<?php if($theme_options->get( 'custom_block', 'contact_page', $config->get( 'config_language_id' ), 'status' ) == 1) { echo 9; } else { echo 12; } ?>">

<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
  <fieldset>
    <legend style="text-decoration: underline"><?php echo $text_enquiry; ?></legend>
    <div class="form-group required">
      <label class="col-sm-2 control-label" style="text-align:center;" for="input-name"><?php echo $entry_name; ?></label>
      <div class="col-sm-10">
        <input type="text" name="name" style="width:500px;" value="<?php echo $name; ?>" id="input-name" class="form-control" />
        <?php if ($error_name) { ?>
        <div class="text-danger"><?php echo $error_name; ?></div>
        <?php } ?>
      </div>
    </div>
    <div class="form-group required">
      <label class="col-sm-2 control-label" style="text-align:center;" for="input-email"><?php echo $entry_email; ?></label>
      <div class="col-sm-10">
        <input type="text" name="email" style="width:500px;" value="<?php echo $email; ?>" id="input-email" class="form-control" />
        <?php if ($error_email) { ?>
        <div class="text-danger"><?php echo $error_email; ?></div>
        <?php } ?>
      </div>
    </div>
    <div class="form-group required">
      <label class="col-sm-2 control-label" style="text-align:center;" for="input-phone"><?php echo $entry_phone; ?></label>
      <div class="col-sm-10">
        <input type="text" name="phone" style="width:500px;" value="<?php echo $phone; ?>" id="input-phone" class="form-control" />
        <?php if ($error_phone) { ?>
        <div class="text-danger"><?php echo $error_phone; ?></div>
        <?php } ?>
      </div>
    </div>
    <div class="form-group">
      <label class="col-sm-2 control-label" style="text-align:center;" for="input-quantity"><?php echo $entry_pname; ?></label>
      <div class="col-sm-10">
        <input type="text" name="pname" style="width:500px;" value="<?php echo $pname; ?>" id="input-pname" class="form-control" />
        <?php if ($error_pname) { ?>
        <div class="text-danger"><?php echo $error_pname; ?></div>
        <?php } ?>
      </div>
    </div>
    <div class="form-group">
      <label class="col-sm-2 control-label" style="text-align:center;" for="input-quantity"><?php echo $entry_quantity; ?></label>
      <div class="col-sm-10">
        <input type="number" name="quantity" style="width:500px;" value="<?php echo $quantity; ?>" id="input-quantity" class="form-control" />
        <?php if ($error_quantity) { ?>
        <div class="text-danger"><?php echo $error_quantity; ?></div>
        <?php } ?>
      </div>
    </div>
    <div class="form-group required">
      <label class="col-sm-2 control-label" style="text-align:center;" for="input-image"><?php echo $entry_image; ?></label>
      <div class="col-sm-10">
      <input id="uploadFile" placeholder="Choose File" disabled="disabled" />
      <div class="fileUpload btn btn-primary">
          <span>Upload</span>
          <input id="uploadBtn" name="uploadBtn" type="file" class="upload" />
      </div>
      </span>
        <?php if ($error_image1) { ?>
        <div class="text-danger"><?php echo $error_image1; ?></div>
        <?php } ?>
      </div>
    </div>
    <div class="form-group">
      <label class="col-sm-2 control-label" style="text-align:center;" for="input-imagend"><?php echo $entry_imagend; ?></label>
      <div class="col-sm-10">
      <input id="uploadFilend" placeholder="Choose File" disabled="disabled" />
      <div class="fileUpload btn btn-primary">
          <span>Upload</span>
          <input id="uploadBtnnd" name="uploadBtnnd" type="file" class="upload" />
      </div>
      </span>
        <?php if ($error_imagend) { ?>
        <div class="text-danger"><?php echo $error_imagend; ?></div>
        <?php } ?>
      </div>
    </div>
    <div class="form-group required">
      <label class="col-sm-2 control-label" style="text-align:center;" for="input-enquiry"><?php echo $entry_enquiry; ?></label>
      <div class="col-sm-10">
        <textarea name="enquiry" rows="6" style="width:500px;" id="input-enquiry" class="form-control"><?php echo $enquiry; ?></textarea>
        <?php if ($error_enquiry) { ?>
        <div class="text-danger"><?php echo $error_enquiry; ?></div>
        <?php } ?>
      </div>
    </div>
    <?php echo $captcha; ?>
  </fieldset>
  <div class="buttons">
    <div class="pull-left">
      <input class="btn btn-primary" type="submit" value="<?php echo $button_submit; ?>" />
    </div>
  </div>
</form>
	
  </div>
  	
  <?php if($theme_options->get( 'custom_block', 'contact_page', $config->get( 'config_language_id' ), 'status' ) == 1) { ?>
  <div class="col-sm-3">
  	<div class="product-block">
  		<?php if($theme_options->get( 'custom_block', 'contact_page', $config->get( 'config_language_id' ), 'heading' ) != '') { ?>
  		<h4 class="title-block"><?php echo $theme_options->get( 'custom_block', 'contact_page', $config->get( 'config_language_id' ), 'heading' ); ?></h4>
  		<div class="strip-line"></div>
  		<?php } ?>
  		<div class="block-content">
  			<?php echo html_entity_decode($theme_options->get( 'custom_block', 'contact_page', $config->get( 'config_language_id' ), 'text' )); ?>
  		</div>
  	</div>
  </div>
  <?php } ?>
</div>

<script>
document.getElementById("uploadBtn").onchange = function () {
    document.getElementById("uploadFile").value = this.value;
};
document.getElementById("uploadBtnnd").onchange = function () {
    document.getElementById("uploadFilend").value = this.value;
};
</script>
  
<?php include('catalog/view/theme/' . $config->get('theme_' . $config->get('config_theme') . '_directory') . '/template/new_elements/wrapper_bottom.tpl'); ?>
<?php echo $footer; ?>