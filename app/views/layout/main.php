
<!DOCTYPE html>
<html>
<head>
	<title></title>
	
    <?php
        require_once 'include/heap.php';
    ?>
</head>
<body>
	<div class="container">
        <?php //$this->renderPartier('layout/sidebar');
        require_once 'include/header.php';
        ?>
		<div class="row">
			<?php echo $content; ?>
		</div>

		<div class="panel panel-default">
			<div class="panel-body">
				<div class="col-md-5">
					<h4 class="text-success">Địa Chỉ Liên Hệ</h4>
					<?php echo nl2br($data['contact'][0]['detail']) ?>
				</div>
				<div class="col-md-2">
					<h4 class="text-success">Danh mục</h4>
					<?php foreach ($data['catParents'] as $value) { ?>
						<p><?php echo $value['name'] ?></p>
					<?php } ?>
				</div>
				<div class="col-md-1">
					<h4 class="text-success">Pages</h4>
					<p>Giới Thiệu</p>
					<p>Liên hệ</p>
				</div>
				<div class="col-md-4">
					<h4 class="text-success text-center">Mạng xã hội</h4>
					<ul class="nav navbar-nav">
						<li><a href=""><i class="fa fa-facebook fa-2x"></i></a></li>
						<li><a href=""><i class="fa fa-twitter fa-2x"></i></a></li>
						<li><a href=""><i class="fa fa-youtube fa-2x"></i></a></li>
						<li><a href=""><i class="fa fa-google-plus fa-2x"></i></a></li>
						<li><a href=""><i class="fa fa-pinterest fa-2x"></i></a></li>
						<li><a href=""><i class="fa fa-qq fa-2x"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<script src="/public/js/jquery-3.2.1.min.js"></script>
	<script src="/public/assets/bootstrap/js/bootstrap.min.js"></script>
    <?php
        require_once 'include/footer.php';
    ?>
</body>
</html>