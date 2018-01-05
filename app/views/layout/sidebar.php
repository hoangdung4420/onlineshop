<div class="panel panel-primary">
	<div class="panel-heading">
		<h3 class="panel-title"></h3>
	</div>
	<div class="panel-body">
		<ul class="list-group">
		<?php 
			foreach ($data['cat'] as $value) {
	 	?>
		  <li class="list-group-item"><a hre=""><?php echo $value['name']; ?></a></li>
		  <?php } ?>
		</ul>
	</div>
</div>