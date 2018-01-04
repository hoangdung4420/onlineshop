<?php
	// Kiểm tra nếu người dùng đã ân nút đăng nhập thì mới xử lý
            if ($_SERVER["REQUEST_METHOD"]=='POST')
            {
		// lấy thông tin người dùng
		$username = $_POST["tendangnhap"];
		$password = $_POST["matkhau"];
		//làm sạch thông tin, xóa bỏ các tag html, ký tự đặc biệt 
		//mà người dùng cố tình thêm vào để tấn công theo phương thức sql injection
		$username = strip_tags($username);
		$username = addslashes($username);
		$password = strip_tags($password);
		$password = addslashes($password);
		if ($username == "" || $password =="") 
                    {
			echo "<script>alert('Tên đăng nhập hoặc mật khẩu bạn không được để trống!')</script>";
                    }
                else
                    {
			$sql = "select * from khachhang where tendangnhap ='$username' and matkhau ='$password' ";
           
			$rows=$db->query($sql);
                        $rs = $rows->fetch();
			if (!empty($rs))
                            {
				//tiến hành lưu tên đăng nhập vào session để tiện xử lý sau này
                                $_SESSION['login_member']='ok';
				$_SESSION['tendangnhap'] = $username;
                                // Thực thi hành động sau khi lưu thông tin vào session

                                header('Location: index.php');
                             }
                            else
                            {
                                echo "<script>alert('Tên đăng nhập hoặc mật khẩu không đúng !')</script>";
                            }
                            
                    }
                    }
?>