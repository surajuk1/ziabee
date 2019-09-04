<?php echo $header; 
$theme_options = $registry->get('theme_options');
$config = $registry->get('config'); 
include('catalog/view/theme/' . $config->get('theme_' . $config->get('config_theme') . '_directory') . '/template/new_elements/wrapper_top.tpl'); ?>
<div class="margin-class">
      <p><?php echo $text_account_already; ?></p>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
        <fieldset id="account">
          <legend><?php echo $text_your_details; ?></legend>
          <div class="form-group required" style="display: <?php if(strlen($customer_groups) > 1) { ?> block <?php } else { ?> none <?php } ?>;">
            <label class="col-sm-2 control-label"><?php echo $entry_customer_group; ?></label>
            <div class="col-sm-10"><?php foreach ($customer_groups as $customer_group) { ?>
              <?php if($customer_group['customer_group_id'] == $customer_group_id) { ?>
              <div class="radio">
                <label>
                  <input type="radio" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" checked="checked" />
                  <?php echo $customer_group['name']; ?></label>
              </div>
              <?php } else { ?>
              <div class="radio">
                <label>
                  <input type="radio" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" />
                  <?php echo $customer_group['name']; ?></label>
              </div>
              <?php } ?>
              <?php } ?></div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" style="text-align:right;" for="input-firstname"><?php echo $entry_firstname; ?></label>
            <div class="col-sm-10">
              <input type="text" name="firstname" style="width: 500px;" value="<?php echo $firstname; ?>" placeholder="<?php echo $entry_firstname; ?>" id="input-firstname" class="form-control" />
              <?php if($error_firstname) { ?>
              <div class="text-danger"><?php echo $error_firstname; ?></div>
              <?php } ?> </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" style="text-align:right;" for="input-lastname"><?php echo $entry_lastname; ?></label>
            <div class="col-sm-10">
              <input type="text" name="lastname" style="width: 500px;" value="<?php echo $lastname; ?>" placeholder="<?php echo $entry_lastname; ?>" id="input-lastname" class="form-control" />
              <?php if($error_lastname) { ?>
              <div class="text-danger"><?php echo $error_lastname; ?></div>
              <?php } ?> </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" style="text-align:right;" for="input-email"><?php echo $entry_email; ?></label>
            <div class="col-sm-10">
              <input type="email" name="email" style="width: 500px;" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
              <?php if($error_email) { ?>
              <div class="text-danger"><?php echo $error_email; ?></div>
              <?php } ?> </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" style="text-align:right;" for="input-telephone"><?php echo $entry_telephone; ?></label>
            <div class="col-sm-10">
              <input type="tel" name="telephone" style="width: 500px;" value="<?php echo $telephone; ?>" placeholder="<?php echo $entry_telephone; ?>" id="input-telephone" class="form-control" />
              <?php if($error_telephone) { ?>
              <div class="text-danger"><?php echo $error_telephone; ?></div>
              <?php } ?> </div>
          </div>
          <?php foreach ($custom_fields as $custom_field) { ?>
          <?php if($custom_field['type'] == 'select') { ?>
          <div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
            <label class="col-sm-2 control-label" style="text-align:right;" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
            <div class="col-sm-10">
              <select name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                
                
                
                
                <?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
				<?php $first = $custom_field['location']; $second = $custom_field['custom_field_id']; if(!isset($register_custom_field[$first][$second])) { $register_custom_field[$first][$second] = false; } if($register_custom_field[$first][$second] && $custom_field_value['custom_field_value_id'] == $register_custom_field[$second]) { ?>
                
                
                
                
                <option value="<?php echo $custom_field_value['custom_field_value_id']; ?>" selected="selected"><?php echo $custom_field_value['name']; ?></option>
                
                
                
                
                
                <?php } else { ?>
                
                
                
                
                
                <option value="<?php echo $custom_field_value['custom_field_value_id']; ?>"><?php echo $custom_field_value['name']; ?></option>
                
                
                
                
                
                <?php } ?>
                <?php } ?>
              
              
              
              
              
              </select>
              <?php $test = $custom_field['custom_field_id']; if(!isset($error_custom_field[$test])) { $error_custom_field[$test] = false; } if($error_custom_field[$test]) { ?>
              <div class="text-danger"><?php echo $error_custom_field[$test]; ?></div>
              <?php } ?></div>
          </div>
          <?php } ?>
          <?php if($custom_field['type'] == 'radio') { ?>
          <div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
            <label class="col-sm-2 control-label" style="text-align:right;"><?php echo $custom_field['name']; ?></label>
            <div class="col-sm-10">
              <div> <?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
                <div class="radio"><?php $test = $custom_field['custom_field_id']; if(!isset($register_custom_field[$test])) { $register_custom_field[$test] = false; } if($register_custom_field[$test] && $custom_field_value['custom_field_value_id'] == $register_custom_field[$test]){ ?>
                  <label>
                    <input type="radio" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" checked="checked" />
                    <?php echo $custom_field_value['name']; ?></label>
                  <?php } else { ?>
                  <label>
                    <input type="radio" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" />
                    <?php echo $custom_field_value['name']; ?></label>
                  <?php } ?> </div>
                <?php } ?></div>
              <?php $test = $custom_field['custom_field_id']; if(!isset($error_custom_field[$test])) { $error_custom_field[$test] = false; } if($error_custom_field[$test]) { ?>
              <div class="text-danger"><?php echo $error_custom_field[$test]; ?></div>
              <?php } ?></div>
          </div>
          <?php } ?>
          <?php if($custom_field['type'] == 'checkbox') { ?>
          <div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
            <label class="col-sm-2 control-label" style="text-align:right;"><?php echo $custom_field['name']; ?></label>
            <div class="col-sm-10">
              <div> <?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
                <div class="checkbox"><?php $test = $custom_field['custom_field_id']; if(!isset($register_custom_field[$test])) { $register_custom_field[$test] = false; } if(!isset($register_custom_field[$test])) { $register_custom_field[$test] = false; } if($register_custom_field[$test] && in_array($custom_field_value['custom_field_value_id'], $register_custom_field[$test])){ ?>
                  <label>
                    <input type="checkbox" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>][]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" checked="checked" />
                    <?php echo $custom_field_value['name']; ?></label>
                  <?php } else { ?>
                  <label>
                    <input type="checkbox" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>][]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" />
                    <?php echo $custom_field_value['name']; ?></label>
                  <?php } ?> </div>
                <?php } ?> </div>
              <?php $test = $custom_field['custom_field_id']; if(!isset($error_custom_field[$test])) { $error_custom_field[$test] = false; } if($error_custom_field[$test]) { ?>
              <div class="text-danger"><?php echo $error_custom_field[$test]; ?></div>
              <?php } ?> </div>
          </div>
          <?php } ?>
          <?php if($custom_field['type'] == 'text') { ?>
          <div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
            <label class="col-sm-2 control-label" style="text-align:right;" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
            <div class="col-sm-10">
              <input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php $test = $custom_field['custom_field_id']; if(!isset($register_custom_field[$test])) { $register_custom_field[$test] = false; } if(!isset($register_custom_field[$test])) { $register_custom_field[$test] = false; } if($register_custom_field[$test]) { ?><?php echo $register_custom_field[$test]; ?><?php } else { ?><?php echo $custom_field['value']; ?><?php } ?>" placeholder="<?php echo $custom_field['name']; ?>" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
              <?php $test = $custom_field['custom_field_id']; if(!isset($error_custom_field[$test])) { $error_custom_field[$test] = false; } if($error_custom_field[$test]) { ?>
              <div class="text-danger"><?php echo $error_custom_field[$test]; ?></div>
              <?php } ?> </div>
          </div>
          <?php } ?>
          <?php if($custom_field['type'] == 'textarea') { ?>
          <div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
            <label class="col-sm-2 control-label" style="text-align:right;" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
            <div class="col-sm-10">
              <textarea name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" rows="5" placeholder="<?php echo $custom_field['name']; ?>" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control"><?php $test = $custom_field['custom_field_id']; if(!isset($register_custom_field[$test])) { $register_custom_field[$test] = false; } if($register_custom_field[$test]) { ?><?php echo $register_custom_field[$test]; ?><?php } else { ?><?php echo $custom_field['value']; ?><?php } ?></textarea>
              <?php $test = $custom_field['custom_field_id']; if(!isset($error_custom_field[$test])) { $error_custom_field[$test] = false; } if($error_custom_field[$test]) { ?>
              <div class="text-danger"><?php echo $error_custom_field[$test]; ?></div>
              <?php } ?> </div>
          </div>
          <?php } ?>
          <?php if($custom_field['type'] == 'file') { ?>
          <div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
            <label class="col-sm-2 control-label" style="text-align:right;"><?php echo $custom_field['name']; ?></label>
            <div class="col-sm-10">
              <button type="button" id="button-custom-field<?php echo $custom_field['custom_field_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
              <input type="hidden" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php $test = $custom_field['custom_field_id']; if(!isset($register_custom_field[$test])) { $register_custom_field[$test] = false; } if($register_custom_field[$test]) { ?>  <?php echo $register_custom_field[$test]; ?> <?php } ?>" />
              <?php $test = $custom_field['custom_field_id']; if(!isset($error_custom_field[$test])) { $error_custom_field[$test] = false; } if($error_custom_field[$test]) { ?>
              <div class="text-danger"><?php echo $error_custom_field[$test]; ?></div>
              <?php } ?></div>
          </div>
          <?php } ?>
          <?php if($custom_field['type'] == 'date') { ?>
          <div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
            <label class="col-sm-2 control-label" style="text-align:right;" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
            <div class="col-sm-10">
              <div class="input-group date">
                <input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php $test = $custom_field['custom_field_id']; if(!isset($register_custom_field[$test])) { $register_custom_field[$test] = false; } if($register_custom_field[$test]) { ?><?php echo $register_custom_field[$test]; ?><?php } else { ?><?php echo $custom_field['value']; ?><?php } ?>" placeholder="<?php echo $custom_field['name']; ?>" data-date-format="YYYY-MM-DD" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
              <?php $test = $custom_field['custom_field_id']; if(!isset($error_custom_field[$test])) { $error_custom_field[$test] = false; } if($error_custom_field[$test]) { ?>
              <div class="text-danger"><?php echo $error_custom_field[$test]; ?></div>
              <?php } ?> </div>
          </div>
          <?php } ?>
          <?php if($custom_field['type'] == 'time') { ?>
          <div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
            <label class="col-sm-2 control-label" style="text-align:right;" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
            <div class="col-sm-10">
              <div class="input-group time">
                <input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php $test = $custom_field['custom_field_id']; if(!isset($register_custom_field[$test])) { $register_custom_field[$test] = false; } if($register_custom_field[$test]) { ?><?php echo $register_custom_field[$test]; ?><?php } else { ?><?php echo $custom_field['value']; ?><?php } ?>" placeholder="<?php echo $custom_field['name']; ?>" data-date-format="HH:mm" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
              <?php $test = $custom_field['custom_field_id']; if(!isset($error_custom_field[$test])) { $error_custom_field[$test] = false; } if($error_custom_field[$test]) { ?>
              <div class="text-danger"><?php echo $error_custom_field[$test]; ?></div>
              <?php } ?> </div>
          </div>
          <?php } ?>
          <?php if($custom_field['type'] == 'time') { ?>
          <div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
            <label class="col-sm-2 control-label" style="text-align:right;" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
            <div class="col-sm-10">
              <div class="input-group datetime">
                <input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php $test = $custom_field['custom_field_id']; if(!isset($register_custom_field[$test])) { $register_custom_field[$test] = false; } if($register_custom_field[$test]) { ?><?php echo $register_custom_field[$test]; ?><?php } else { ?><?php echo $custom_field['value']; ?><?php } ?>" placeholder="<?php echo $custom_field['name']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
              <?php $test = $custom_field['custom_field_id']; if(!isset($error_custom_field[$test])) { $error_custom_field[$test] = false; } if($error_custom_field[$test]) { ?>
              <div class="text-danger"><?php echo $error_custom_field[$test]; ?></div>
              <?php } ?> </div>
          </div>
          <?php } ?>
          <?php } ?>
        </fieldset>
        <fieldset>
          <legend><?php echo $text_your_password; ?></legend>
          <div class="form-group required">
            <label class="col-sm-2 control-label" style="text-align:right;" for="input-password"><?php echo $entry_password; ?></label>
            <div class="col-sm-10">
              <input type="password" name="password" style="width: 500px;" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control" />
              <?php if($error_password) { ?>
              <div class="text-danger"><?php echo $error_password; ?></div>
              <?php } ?> </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" style="text-align:right;" for="input-confirm"><?php echo $entry_confirm; ?></label>
            <div class="col-sm-10">
              <input type="password" name="confirm" style="width: 500px;" value="<?php echo $confirm; ?>" placeholder="<?php echo $entry_confirm; ?>" id="input-confirm" class="form-control" />
              <?php if($error_confirm) { ?>
              <div class="text-danger"><?php echo $error_confirm; ?></div>
              <?php } ?> </div>
          </div>
        </fieldset>
        <fieldset>
          <legend><?php echo $text_newsletter; ?></legend>
          <div class="form-group">
            <label class="col-sm-2 control-label" style="text-align:right;"><?php echo $entry_newsletter; ?></label>
            <div class="col-sm-10"> <?php if($newsletter) { ?>
              <label class="radio-inline">
                <input type="radio" name="newsletter" value="1" checked="checked" />
                <?php echo $text_yes; ?></label>
              <label class="radio-inline">
                <input type="radio" name="newsletter" value="0" />
                <?php echo $text_no; ?></label>
              <?php } else { ?>
              <label class="radio-inline">
                <input type="radio" name="newsletter" value="1" />
                <?php echo $text_yes; ?></label>
              <label class="radio-inline">
                <input type="radio" name="newsletter" value="0" checked="checked" />
                <?php echo $text_no; ?></label>
              <?php } ?> </div>
          </div>
        </fieldset>
        <?php echo $captcha; ?>
        <?php if($text_agree) { ?>
        <div class="buttons">
          <div class="pull-left"><?php echo $text_agree; ?>
          	<?php if($agree) { ?>
            <input type="checkbox" name="agree" value="1" checked="checked" />
            <?php } else { ?>
            <input type="checkbox" name="agree" value="1" />
            <?php } ?>
            &nbsp;
            <input type="submit" value="<?php echo $button_continue; ?>" class="btn btn-primary" />
          </div>
        </div>
        <?php } else { ?>
        <div class="buttons">
          <div class="pull-left">
            <input type="submit" value="<?php echo $button_continue; ?>" class="btn btn-primary" />
          </div>
        </div>
        <?php } ?>
      </form>
</div>
<script type="text/javascript"><!--
// Sort the custom fields
$('#account .form-group[data-sort]').detach().each(function() {
	if ($(this).attr('data-sort') >= 0 && $(this).attr('data-sort') <= $('#account .form-group').length) {
		$('#account .form-group').eq($(this).attr('data-sort')).before(this);
	}

	if ($(this).attr('data-sort') > $('#account .form-group').length) {
		$('#account .form-group:last').after(this);
	}

	if ($(this).attr('data-sort') == $('#account .form-group').length) {
		$('#account .form-group:last').after(this);
	}

	if ($(this).attr('data-sort') < -$('#account .form-group').length) {
		$('#account .form-group:first').before(this);
	}
});

$('input[name=\'customer_group_id\']').on('change', function() {
	$.ajax({
		url: 'index.php?route=account/register/customfield&customer_group_id=' + this.value,
		dataType: 'json',
		success: function(json) {
			$('.custom-field').hide();
			$('.custom-field').removeClass('required');

			for (i = 0; i < json.length; i++) {
				custom_field = json[i];

				$('#custom-field' + custom_field['custom_field_id']).show();

				if (custom_field['required']) {
					$('#custom-field' + custom_field['custom_field_id']).addClass('required');
				}
			}
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('input[name=\'customer_group_id\']:checked').trigger('change');
//--></script> 
<script type="text/javascript"><!--
$('button[id^=\'button-custom-field\']').on('click', function() {
	var element = this;

	$('#form-upload').remove();

	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}

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
					$(element).button('loading');
				},
				complete: function() {
					$(element).button('reset');
				},
				success: function(json) {
					$(element).parent().find('.text-danger').remove();

					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}

					if (json['success']) {
						alert(json['success']);

						$(element).parent().find('input').val(json['code']);
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
$('.date').datetimepicker({
	language: '<?php echo $datepicker; ?>',
	pickTime: false
});

$('.time').datetimepicker({
	language: '<?php echo $datepicker; ?>',
	pickDate: false
});

$('.datetime').datetimepicker({
	language: '<?php echo $datepicker; ?>',
	pickDate: true,
	pickTime: true
});
//--></script> 

<?php include('catalog/view/theme/' . $config->get('theme_' . $config->get('config_theme') . '_directory') . '/template/new_elements/wrapper_bottom.tpl'); ?>
<?php echo $footer; ?>