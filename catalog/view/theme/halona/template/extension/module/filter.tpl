<div class="box box-no-advanced">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="strip-line"></div>
  <div class="box-content">
    <ul class="box-filter">
      <?php foreach ($filter_groups as $filter_group) { ?>
      <li><span id="filter-group<?php echo $filter_group['filter_group_id']; ?>"><?php echo $filter_group['name']; ?></span>
        <ul>
          <?php foreach ($filter_group['filter'] as $filter) { ?>
          <?php if (in_array($filter['filter_id'], $filter_category)) { ?>
          <li>
            <input class="styled-checkbox" type="checkbox" value="<?php echo $filter['filter_id']; ?>" id="filter<?php echo $filter['filter_id']; ?>" checked="checked" />
            <label class="filter-checkbox-class" for="filter<?php echo $filter['filter_id']; ?>"><?php echo $filter['name']; ?></label>
          </li>
          <?php } else { ?>
          <li>
            <input class="styled-checkbox" type="checkbox" value="<?php echo $filter['filter_id']; ?>" id="filter<?php echo $filter['filter_id']; ?>" />
            <label class="filter-checkbox-class" for="filter<?php echo $filter['filter_id']; ?>"><?php echo $filter['name']; ?></label>
          </li>
          <?php } ?>
          <?php } ?>
        </ul>
      </li>
      <?php } ?>
    </ul>
    <a id="button-filter" style="display:none" class="button"><?php echo $button_filter; ?></a>
  </div>
</div>
<script type="text/javascript"><!--
$('#button-filter').bind('click', function() {
	filter = [];
	
	$('.box-filter input[type=\'checkbox\']:checked').each(function(element) {
		filter.push(this.value);
	});
	
	location = '<?php echo $action; ?>&filter=' + filter.join(',');
});
//--></script> 

<style>
.styled-checkbox {
  position: absolute;
  opacity: 0;
}
.styled-checkbox + label {
  position: relative;
  cursor: pointer;
  padding: 0;
}
.styled-checkbox + label:before {
  content: '';
  margin-right: 10px;
  display: inline-block;
  vertical-align: text-top;
  width: 20px;
  height: 20px;
  background: #ebeff2;
}
.styled-checkbox:hover + label:before {
  background: #0056b3;
}
.styled-checkbox:focus + label:before {
/*  box-shadow: 0 0 0 3px rgba(0, 0, 0, 0.12);*/
}
.styled-checkbox:checked + label:before {
  background: #0056b3;
}
.styled-checkbox:disabled + label {
  color: #b8b8b8;
  cursor: auto;
}
.styled-checkbox:disabled + label:before {
  box-shadow: none;
  background: #ddd;
}
.styled-checkbox:checked + label:after {
  content: '';
  position: absolute;
  left: 5px;
  top: 12px;
  background: white;
  width: 2px;
  height: 2px;
  box-shadow: 2px 0 0 white, 4px 0 0 white, 4px -2px 0 white, 4px -4px 0 white, 4px -6px 0 white, 4px -8px 0 white;
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
}
.button, .btn {
    background: rgb(68, 91, 128) !important;
}
</style>

<script type="text/javascript">
$(document).ready(function() {

    $('.box-filter input[type=\'checkbox\']:checked').each(function(element) {
      $('html, body').animate({
          scrollTop: $(".main-content").offset().top
      }, 0);
    });

    $('.styled-checkbox').change(function() {
          filter = [];
  
          $('.box-filter input[type=\'checkbox\']:checked').each(function(element) {
            filter.push(this.value);
          });
          
          location = '<?php echo $action; ?>&filter=' + filter.join(',');
    });
});
</script>