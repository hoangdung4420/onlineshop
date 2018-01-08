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
			<div class="col-sm-4">
				<?php //$this->renderPartier('layout/sidebar');
					require_once 'include/sidebar.php';
				?>

			</div>
			<div class="col-sm-8">
				<?php echo $content; ?>
			</div>
		</div>

		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Footter</h3>
			</div>
			<div class="panel-body">
				Copyright 2017
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