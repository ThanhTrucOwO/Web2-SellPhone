<!DOCTYPE html>
<html>
<head>
	<title>Đăng nhập</title>
	<link rel="stylesheet" type="text/css" href="../../templates/front/common/login.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<style>
		.container{
			width: 475px;
		}
		.sign-in-container
		{
			width : 100%;
		}
	</style>
<link rel="shortcut icon" type="image/png" href="<?php echo SITE_URL . 'doan/userfiles/favicon-32x32.png'; ?>"/>
</head>
<body>

<div class="container" id="container">
	<div class="form-container sign-in-container">
		<form name="login" action="" method="POST">
		<?php if (isset($error) && $error == true): ?>
			<p style="color: red;">Sai Tài khoản hoặc Mật khẩu!</p>
		<?php endif; ?>
			<h1>Đăng nhập</h1>
			<div class="social-container">
			<a href="#" class="social"><i class="fa fa-facebook"></i></a>
			<a href="#" class="social"><i class="fa fa-google"></i></a>
			<a href="#" class="social"><i class="fa fa-linkedin"></i></a>
		</div>
		<span>hoặc sử dụng tài khoản của bạn</span>
		<input type="text" name="username" placeholder="Tài khoản">
		<input type="password" name="password" placeholder="Mật khẩu">
		<a href="register.php">Đăng ký</a>

		<button>Đăng nhập</button>
		</form>
	</div>
</div>

</body>
</html>