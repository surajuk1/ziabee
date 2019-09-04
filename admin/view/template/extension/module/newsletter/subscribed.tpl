<?php echo $header; ?><?php echo $column_left; ?>
<div id="content"><div class="container-fluid">
	<div class="page-header">
	    <h1>Newsletter</h1>
	    <ul class="breadcrumb">
		     <?php foreach ($breadcrumbs as $breadcrumb) { ?>
		      <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
		      <?php } ?>
	    </ul>
	  </div>
    
    <link href='https://fonts.googleapis.com/css?family=Poppins:700,600,500,400,300' rel='stylesheet' type='text/css'>
    
	<?php if ($error_warning) { ?>
		<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
		  <button type="button" class="close" data-dismiss="alert">&times;</button>
		</div>
	<?php } elseif ($success) {  ?>
		<div class="alert alert-success"><i class="fa fa-exclamation-circle"></i> <?php echo $success; ?>
			<button type="button" class="close" data-dismiss="alert">&times;</button>
		</div>
	<?php } ?>

	<!-- Newsletter -->
	<div class="set-size" id="newsletter">		
		<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
			<!-- Content -->
			<div class="content">
				<div>
					<div class="bg-tabs clearfix">
						<div id="tabs">
                            <a href="<?php echo $placement; ?>" id="placement"><span>Module<br> placement</span></a>
							<a href="<?php echo $settings; ?>" id="existing"><span>Translation<br> text</span></a>
							<a href="<?php echo $list_subscribed; ?>" id="subscribed" class="active"><span>List<br> subscribers</span></a>
							<a href="<?php echo $send_mail; ?>" id="existing"><span>Send<br> mail</span></a>
						</div>

						<div class="tab-content2">
							<h4>List subscribers</h4>
							<table id="module-placement">
								<thead>
									<tr>
										<td class="first" style="width:500px">Email</td>
										<td>Customer</td>
										<td>Delete</td>
									</tr>
								</thead>
								<tbody>
									<?php foreach($subscribed as $subscriber) { ?>
									<tr>
										<td class="first"><?php echo $subscriber['email']; ?></td>
										<td><?php echo $subscriber['customer']; ?></td>
										<td><a href="<?php echo $list_subscribed.'&delete=true&email=' . $subscriber['email']; ?>" onclick="return confirm('Are you sure you want to delete?')">Delete</a></td>
									</tr>
									<?php } ?>
								</tbody>
							</table>
							
							<div class="clearfix">
							  <div class="text-left" style="width: 50%;float: left"><?php echo $pagination; ?></div>
							  <div class="text-right" style="width: 50%;float: right;padding-top: 6px"><?php echo $results; ?></div>
							</div>
						</div>
					</div>
					
					<div>
						<!-- Buttons -->
						<div class="buttons"><input type="submit" name="button-save" class="button-save" value=""></div>
					</div>
				</div>
			</div>		
		</form>
	</div>
</div>
<?php echo $footer; ?>