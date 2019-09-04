<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-download" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary save-class-button"><i class="fa fa-save"></i></button>
      </div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($success) { ?>
      <div class="alert alert-success"><i class="fa fa-check-circle"></i><?php echo $success;?><button type="button" class="close" data-dismiss="alert">&times;</button></div>
    <?php } ?>
    <?php if (!empty($error_msg)) { ?>
      <div class="alert alert-danger">
        <?php foreach($error_msg as $row => $message) { ?>
        <?php echo $message;?>
        <?php echo "<br>";?>
        <?php } ?>
        <button type="button" class="close" data-dismiss="alert">&times;</button>
      </div>
    <?php } ?>
    <?php if ($error_status==1) { ?>
    <div class="alert alert-danger">
      <?php foreach($msg as $row => $message) { ?>
      <?php echo "Row:".$row." ".$message;?>
      <?php echo "<br>";?>
      <?php } ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } elseif ($error_status==2) {?>
    <div class="alert alert-success">
      Excel Upload Successfully
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } elseif ($error_status==3) {?>
    <div class="alert alert-success">
      Excel Upload Successfully
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <div class="alert alert-danger">
      <?php foreach($msg as $row => $message) { ?>
      <?php echo "Row:".$row." ".$message;?>
      <?php echo "<br>";?>
      <?php } ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_form; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-download" class="form-horizontal">

          <div class="form-group required">
            <label class="col-sm-2 control-label"><?php echo $entry_group; ?></label>
            <div class="col-sm-10">
                <input type="text" name="category" value="<?php echo $category; ?>" placeholder="<?php echo $column_gopname; ?>" id="input-category" class="form-control" />
                <input type="hidden" name="category_id" value="<?php echo $category_id; ?>" />
                <?php if ($error_category) { ?>
                  <div class="text-danger"><?php echo $error_category; ?></div>
                <?php } ?>
            </div>
          </div>

          <div class="form-group required">
            <label class="col-sm-2 control-label"><?php echo $entry_import_behavior; ?></label>
            <div class="col-sm-10">
                <select name="import_behavior" id="import_behavior" class="form-control">
                  <option value="">--Select--</option>
                  <option <?php if($import_behavior_status==1){ echo 'selected=selected';}?> value="1">Existing Product</option>
                  <option <?php if($import_behavior_status==2){ echo 'selected=selected';}?> value="2">New Product</option>
                </select>
                <?php if ($error_import_behavior) { ?>
                  <div class="text-danger"><?php echo $error_import_behavior; ?></div>
                <?php } ?>
            </div>
          </div>

          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-filename"><span data-toggle="tooltip" title="<?php echo $help_filename; ?>"><?php echo $entry_filename; ?></span></label>
            <div class="col-sm-10">
              <div class="input-group">
                <input type="text" name="filename" value="<?php echo $filename; ?>" placeholder="<?php echo $entry_filename; ?>" id="input-filename" class="form-control" />
                <span class="input-group-btn">
                <button type="button" id="button-upload" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
                </span> </div>
              <?php if ($error_filename) { ?>
              <div class="text-danger"><?php echo $error_filename; ?></div>
              <?php } ?>
              <!-- <div><a href="<?php echo $sample_xls; ?>">Download Sample Import File Template</a></div> -->
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
<script type="text/javascript"><!--
$('#button-upload').on('click', function() {
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
        url: 'index.php?route=catalog/import/upload&user_token=<?php echo $user_token; ?>',
        type: 'post',   
        dataType: 'json',
        data: new FormData($('#form-upload')[0]),
        cache: false,
        contentType: false,
        processData: false,   
        beforeSend: function() {
          $('#button-upload').button('loading');
        },
        complete: function() {
          $('#button-upload').button('reset');
        },  
        success: function(json) {
          if (json['error']) {
            alert(json['error']);
          }
                
          if (json['success']) {
            alert(json['success']);
            
            $('input[name=\'filename\']').val(json['filename']);
            $('input[name=\'mask\']').val(json['mask']);
          }
        },      
        error: function(xhr, ajaxOptions, thrownError) {
          alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
      });
    }
  }, 500);
});

$('input[name=\'category\']').autocomplete({
  'source': function(request, response) {
    $.ajax({
      url: 'index.php?route=catalog/category/autocomplete&user_token=<?php echo $user_token; ?>&filter_name=' +  encodeURIComponent(request),
      dataType: 'json',
      success: function(json) {
        response($.map(json, function(item) {
          return {
            label: item['name'],
            value: item['category_id']
          }
        }));
      }
    });
  },
  'select': function(item) {
    $('input[name=\'category\']').val(item['label']);
    $('input[name=\'category_id\']').val(item['value']);
  }
});

//--></script></div> 
<?php echo $footer; ?>
