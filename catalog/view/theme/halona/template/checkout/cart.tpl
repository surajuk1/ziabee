<?php echo $header; 
$theme_options = $registry->get('theme_options');
$config = $registry->get('config'); 
include('catalog/view/theme/' . $config->get('theme_' . $config->get('config_theme') . '_directory') . '/template/new_elements/wrapper_top.tpl'); ?>
<div class="margin-class">
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
  <div class="table-responsive cart-info">
    <table class="table table-bordered">
      <thead>
        <tr>
          <td class="text-center"><?php echo $column_image; ?></td>
          <td class="text-center hidden-xs"><?php echo $column_name; ?></td>
          <td class="text-center hidden-xs"><?php echo 'Area'; ?></td>
          <td class="text-center"><?php echo $column_quantity; ?></td>
          <td class="text-right hidden-xs"><?php echo $column_price; ?></td>
          <td class="text-right"><?php echo $column_total; ?></td>
        </tr>
      </thead>
      <tbody>
        <?php foreach ($products as $product) { ?>
        <tr>
          <td class="text-center"><?php if ($product['thumb']) { ?>
            <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
            <?php } ?>
            <div class="visible-xs"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?><div>
            </td>
          <td class="text-center hidden-xs"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
            <?php if (!$product['stock']) { ?>
            <span class="text-danger">***</span>
            <?php } ?>
            <?php if ($product['option']) { ?>
            <?php foreach ($product['option'] as $option) { ?>
            <br />
            <small><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
            <?php } ?>
            <?php } ?>
            <?php if ($product['reward']) { ?>
            <br />
            <small><?php echo $product['reward']; ?></small>
            <?php } ?>
            <?php if ($product['recurring']) { ?>
            <br />
            <span class="label label-info"><?php echo $text_recurring_item; ?></span> <small><?php echo $product['recurring']; ?></small>
            <?php } ?></td>
          <td class="text-center hidden-xs"><input class="area_cart" style="width:150px;" type="text" name="area[<?php echo $product['cart_id']; ?>]" value="<?php echo $product['total_area']; ?>" size="1" /><span style="display:none"><?php echo $product['product_area']; ?></span></td>
          <td class="text-center updelete-class">
              <input type="text" name="quantity[<?php echo $product['cart_id']; ?>]" style="width:150px;" value="<?php echo $product['quantity']; ?>" size="1" />
              &nbsp;
              <input type="image" src="catalog/view/theme/<?php echo $config->get('theme_' . $config->get('config_theme') . '_directory'); ?>/img/update.png" alt="<?php echo $button_update; ?>" title="<?php echo $button_update; ?>" />
              &nbsp;<a onclick="cart.remove('<?php echo $product['cart_id']; ?>');"><img src="catalog/view/theme/<?php echo $config->get('theme_' . $config->get('config_theme') . '_directory'); ?>/img/remove.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" /></a>
          </td>
          <td class="text-right hidden-xs"><?php echo $product['price']; ?></td>
          <td class="text-right"><?php echo $product['total']; ?></td>
        </tr>
        <?php } ?>
        <?php foreach ($vouchers as $voucher) { ?>
        <tr>
          <td></td>
          <td class="text-left"><?php echo $voucher['description']; ?></td>
          <td class="text-left"></td>
          <td class="text-left"><div class="input-group btn-block" style="max-width: 200px;">
              <input type="text" name="" value="1" size="1" disabled="disabled" class="form-control" />
              <span class="input-group-btn">
              <button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger" onclick="voucher.remove('<?php echo $voucher['key']; ?>');"><i class="fa fa-times-circle"></i></button>
              </span></div></td>
          <td class="text-right"><?php echo $voucher['amount']; ?></td>
          <td class="text-right"><?php echo $voucher['amount']; ?></td>
        </tr>
        <?php } ?>
      </tbody>
    </table>
  </div>
</form>

<?php if ($modules) { ?>
<h2><?php echo $text_next; ?></h2>
<p style="padding-bottom: 10px"><?php echo $text_next_choice; ?></p>
<div class="panel-group" id="accordion">
     <?php foreach ($modules as $module) { ?>
     <?php echo $module; ?>
     <?php } ?>
</div>
<?php } ?>

<div class="cart-total">
    <table>
      <?php foreach ($totals as $total) { ?>
      <tr>
        <td class="text-right"><strong><?php echo $total['title']; ?>:</strong></td>
        <td class="text-right"><?php echo $total['text']; ?></td>
      </tr>
      <?php } ?>
    </table>
</div>
<div class="buttons">
  <div class="pull-left"><a href="<?php echo $continue; ?>" class="btn btn-default"><?php echo $button_shopping; ?></a></div>
  <div class="pull-right"><a href="<?php echo $checkout; ?>" class="btn btn-primary"><?php echo $button_checkout; ?></a></div>
</div>
</div>
<?php include('catalog/view/theme/' . $config->get('theme_' . $config->get('config_theme') . '_directory') . '/template/new_elements/wrapper_bottom.tpl'); ?>

<script>
$('input[class=area_cart]').keyup(function() {
  var product_area = parseInt($(this).siblings('span').text());
  //var quantity_area = $(this).closest('tr').find('.updelete-class input').val();
  var total_area = $(this).val();
  var quantity_area = total_area / product_area;
  if (quantity_area == 'Infinity') {
    quantity_area = 0;
  }

  $(this).closest('tr').find('.updelete-class input').val(Math.round(quantity_area));
});

$('.updelete-class input').keyup(function() {
  var quantity_area = parseInt($(this).val());
  //var quantity_area = $(this).closest('tr').find('.updelete-class input').val();
  var product_area = parseInt($(this).closest('tr').find('.area_cart').siblings('span').text());
  var total_area = product_area * quantity_area;
  $(this).closest('tr').find('.area_cart').val(total_area);
});
</script>
<?php echo $footer; ?>