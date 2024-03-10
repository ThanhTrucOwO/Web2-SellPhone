<!DOCTYPE html>
<html>
<head>
	<title>Đăng ký</title>
	<link rel="stylesheet" type="text/css" href="../../templates/front/common/login.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<style>
		.container{
			width: 475px;
		}
		.sign-up-container
		{
			width : 100%;
			opacity: 100%;
		}
	</style>
<link rel="shortcut icon" type="image/png" href="<?php echo SITE_URL . 'doan/userfiles/favicon-32x32.png'; ?>"/>
</head>
<body>

<div class="container" id="container">
	<div class="form-container sign-up-container">
		<form name="register" action="register.php" method = "POST">
			<h1>Tạo tài khoản</h1>
			<?php if (isset($error) && $error == true): ?>
				<span style="color: red;">Username hoặc email đã được sử dụng !</span>
			<?php endif; ?>
			<?php if (isset($error) && $error == false): ?>
				<span style="color: red;">Tạo tài khoản thành công ! Hãy đăng nhập !</span>
			<?php endif; ?>
			<div class="social-container">
				<a href="#" class="social"><i class="fa fa-facebook"></i></a>
				<a href="#" class="social"><i class="fa fa-google"></i></a>
				<a href="#" class="social"><i class="fa fa-linkedin"></i></a>
			</div>
			<span>hoặc sử dụng tài khoản email của bạn để đăng ký</span>
			<input type="text" name="fullname" placeholder="Họ và tên">
			<input type="email" name="email" placeholder="Email">
			<input type="text" name="username" placeholder="Tài khoản">
			<input type="password" name="password" placeholder="Mật khẩu">
			<a href="login.php">Đăng nhập</a>

			<button>Đăng ký</button>
		</form>
	</div>
</div>

</body>
</html>