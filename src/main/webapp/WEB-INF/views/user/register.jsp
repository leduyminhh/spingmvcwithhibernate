<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../share/header.jsp"></jsp:include>
</head>
<body>
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<div class="card">
					<div class="card-header"></div>
					<div class="card-body">
						<form name="myform" class="form-horizontal" action='register'
							method="POST" onsubmit="return validateform()">
							<fieldset>
								<div id="legend">
									<legend class="">Đăng kí</legend>
								</div>
								<div class="form-group">
									<label for="email" class="cols-sm-2 control-label">Tên
										Đăng Nhập</label>
									<div class="cols-sm-10">
										<div class="input-group">
											<span class="input-group-addon"><i
												class="fa fa-envelope fa" aria-hidden="true"></i></span> <input
												type="text" class="form-control" name="name"
												placeholder="Nhập tên tài khoản" />
										</div>
									</div>
								</div>
								
								<div class="form-group">
									<label for="password" class="cols-sm-2 control-label">Mật
										Khẩu</label>
									<div class="cols-sm-10">
										<div class="input-group">
											<span class="input-group-addon"><i
												class="fa fa-lock fa-lg" aria-hidden="true"></i></span> <input
												type="password" class="form-control" name="password"
												id="password" placeholder="Nhập mật khẩu" />
										</div>
									</div>
								</div>
								<div class="form-group">
									<label for="confirm" class="cols-sm-2 control-label">Nhập
										lại mật khẩu</label>
									<div class="cols-sm-10">
										<div class="input-group">
											<span class="input-group-addon"><i
												class="fa fa-lock fa-lg" aria-hidden="true"></i></span> <input
												type="password" class="form-control" name="repeatpassword"
												id="confirm" placeholder="Lặp lại mật khẩu" />
										</div>
									</div>
								</div>
								<div class="form-group">
									<label for="name" class="cols-sm-2 control-label">Loại:</label>
									<div class="cols-sm-10">
										<div class="input-group">
											<span class="input-group-addon"><i
												class="fa fa-user fa" aria-hidden="true"></i></span> <input
												type="text" class="form-control" name="gender" id="name"
												placeholder="Nhập vào số loại" />
										</div>
									</div>
								</div>
								<div class="control-group">
									<!-- Button -->

									<div class="form-group">
										<button class="btn btn-primary btn-lg btn-block login-button"
											name="register">Đăng kí</button>
									</div>
									<div class="form-group">
										<h6 class="text-center text-info">${result}</h6>
									</div>

								</div>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="resources/js/jquery.js"></script>
	<script src="resources//js/bootstrap.min.js"></script>
	<script src="resources/js/raphael.min.js"></script>
	<script src="resources/js/morris.min.js"></script>
	<script src="resources/js/morris-data.js"></script>
	<script>
		function validateform() {
			var name = document.myform.hoten.value;
			var password = document.myform.password.value;
			var password2 = document.myform.repeatpassword.value;

			if (name == null || name == "") {
				alert("Tên Không được để trống");
				return false;
			} else if (password.length < 6) {
				alert("Mật khẩu phải lớn hơn 6 kí tự.");
				return false;
			} else if (password != password2) {
				alert("Mật khẩu không khớp!");
				return false;
			} else {
				return true;
			}
		}
	</script>
</body>
</html>
<jsp:include page="../home/instagram.jsp"></jsp:include>
<jsp:include page="../share/footer.jsp"></jsp:include>