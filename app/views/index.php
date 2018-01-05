<div class="panel panel-success">
	<div class="panel-heading">
		<h3 class="panel-title">Content</h3>
	</div>
	<div class="panel-body">
		<?php 
				foreach ($data['book'] as $key => $value) {
					$id = $value['id_book']; 
		 ?>
		<div class="col-sm-3">
			<a href=""><img src="public/images/<?php echo $value['picture'] ?>" alt="" class="img-responsive" /></a>
			<h5><?php echo $value['name'] ?></h5>
		</div>

		<?php } ?>
	</div>
</div>