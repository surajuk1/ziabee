<?php echo $header; 
$theme_options = $registry->get('theme_options');
$config = $registry->get('config'); 
include('catalog/view/theme/' . $config->get('theme_' . $config->get('config_theme') . '_directory') . '/template/new_elements/wrapper_top.tpl'); ?>
<div class="margin-class">
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
  <fieldset style="background:#ddd;">
    <div class="form-group text-center">
      <label class="col-sm-2 control-label"><strong><?php echo $entry_newsletter; ?></strong></label>
      <div class="col-sm-10">
        <?php if ($newsletter) { ?>
        <label class="radio-inline">
          <input type="radio" name="newsletter" value="1" checked="checked" />
          <?php echo $text_yes; ?> </label>
        <label class="radio-inline">
          <input type="radio" name="newsletter" value="0" />
          <?php echo $text_no; ?></label>
        <?php } else { ?>
        <label class="radio-inline">
          <input type="radio" name="newsletter" value="1" />
          <?php echo $text_yes; ?> </label>
        <label class="radio-inline">
          <input type="radio" name="newsletter" value="0" checked="checked" />
          <?php echo $text_no; ?></label>
        <?php } ?>
      </div>
    </div>
  </fieldset>
  <div class="buttons clearfix">
    <div class="pull-left"><a href="<?php echo $back; ?>" class="btn btn-default"><?php echo $button_back; ?></a></div>
    <div class="pull-right">
      <input type="submit" value="<?php echo $button_continue; ?>" class="btn btn-primary" />
    </div>
  </div>
</form>
</div>
<?php include('catalog/view/theme/' . $config->get('theme_' . $config->get('config_theme') . '_directory') . '/template/new_elements/wrapper_bottom.tpl'); ?>
<?php echo $footer; ?>