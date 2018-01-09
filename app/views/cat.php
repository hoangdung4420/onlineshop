<div class="panel panel-danger">
	<div class="panel-heading">
		<h3 class="panel-title"><span class="glyphicon glyphicon-book"></span> <?php echo $data['oItem']['name']; ?></h3>
	</div>
	<div class="panel-body">
		<?php 
			$i =1;
			if(count($data['arCatBooks'] > 0)){
			foreach ($data['arCatBooks'] as $value) {
				$id = $value['id_book']; 
		 ?>
		<div class="col-md-3 book">
			<a href=""><img src="/app/views/public/images/<?php echo $value['picture'] ?>" alt="" class="img-responsive" /></a>
			<h4 class="text-primary text-center title-book"><a href=""><?php echo $value['name'] ?></a></h4>
			<h4 class="text-center"><?php echo $value['unit_price'] ?> $</h4>
			<p class="btn btn-danger btn-block"><span class="glyphicon glyphicon-shopping-cart"></span> Thêm vào giỏ hàng</p>
		</div>

		<?php 
			if($i % 4 == 0) {
				echo '<div class="clearfix"></div>';
			}
			$i ++;

			}}else{
				echo '<h3 class="text-success">Sách của danh mục này đang được cập nhật.</h3>';
			} ?>
	</div>
</div>
