<div class="panel panel-danger">
	<div class="panel-heading">
		<h3 class="panel-title"><span class="glyphicon glyphicon-book"></span> Sách mới</h3>
	</div>
	<div class="panel-body">
		<?php 

			$i =1;

			foreach ($data['arNewBooks'] as $value) {
				$id = $value['id_book']; 
		 ?>
		<div class="col-md-3 book">
			<a href=""><img src="app/views/public/images/<?php echo $value['picture'] ?>" alt="" class="img-responsive" /></a>
			<h4 class="text-primary text-center"><a href=""><?php echo $value['name'] ?></a></h4>
			<h4 class="text-center"><?php echo $value['unit_price'] ?> $</h4>
			<p class="btn btn-danger btn-block"><span class="glyphicon glyphicon-shopping-cart"></span> Thêm vào giỏ hàng</p>
		</div>

		<?php 
			if($i % 4 == 0) {
				echo '<div class="clearfix"></div>';
			}
			$i ++;

			} ?>
	</div>
</div>
<?php foreach ($data['arCatBooks'] as $key => $value) { ?>
<div class="panel panel-success">
	<div class="panel-heading">
		<h3 class="panel-title"><span class="glyphicon glyphicon-book"></span> <?php echo $key ?></h3>
	</div>
	<div class="panel-body">
		<div class="rows">
			<div class="col-md-5 book book-big">
				<?php
				 $oItem = $value[0];
				 unset($value[0]);
				 ?>
				 <div>
				 	<a href=""><img src="app/views/public/images/<?php echo $oItem['picture'] ?>" alt="" class="img-responsive" /></a>
					<h4 class="text-primary text-center"><a href=""><?php echo $oItem['name'] ?></a></h4>
					<h4 class="text-center"><?php echo $oItem['unit_price'] ?> $</h4>
					<p class="btn btn-danger btn-block danger"><span class="glyphicon glyphicon-shopping-cart"></span> Thêm vào giỏ hàng</p>
				 </div>
			</div>
			<div class="col-md-7">
				<?php 
					$i =1;
					foreach ($value as $val) {
							$id = $val['id_book']; 
				 ?>
				<div class="col-md-4 col-sm-6 book">
					<a href="" ><img src="app/views/public/images/<?php echo $val['picture'] ?>" alt="" class="img-responsive" /></a>
					<h4 class="text-primary text-center"><a href=""><?php echo $val['name'] ?></a></h4>
					<h4 class="text-center"><?php echo $val['unit_price'] ?> $</h4>
					<p class="btn btn-danger btn-block"><span class="glyphicon glyphicon-shopping-cart"></span> Thêm vào giỏ hàng</p>
				</div>

				<?php 
					if($i % 3 == 0) {
						echo '<div class="clearfix"></div>';
					}
					$i ++;

					} ?>
			</div>
		</div>
	</div>
</div>
<?php } ?>