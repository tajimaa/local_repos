<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="utf-8">

<!-- icon -->
<script src="https://kit.fontawesome.com/c82cac4dcf.js"
	crossorigin="anonymous"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@100;200;300;400;500;600;700;800;900&family=Poppins:wght@200;300;400;500;600;900&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
	
<title>振り向き計算</title>
</head>
<body style="font-family: 'Noto Sans JP', sans-serif">
	<div class="loading">
        <div class="loading-wrap">
            <i class="fas fa-spinners fa-3x fa-spin"></i>
        </div>
    </div>
	<!-- ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓ヘッダーナビゲーション↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓ -->
	<nav
		class="shadow-sm navbar navbar-expand-lg navbar-light bg-light p-3">
		<nav class="navbar navbar-light">
			<a class="navbar-brand text-dark font-weight-bold ml-lg-4" href="#">
				<i class="fa-solid fa-crosshairs fa-xl"></i> SensiRecorder
			</a>
		</nav>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse text-dark"
			id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item ml-lg-5 active "><a
					class="nav-link text-dark" href="#">振り向き計算 <span
						class="sr-only">(current)</span></a></li>
				<li class="nav-item ml-lg-5"><a class="nav-link text-dark"
					href="#">他ユーザーのデバイス</a></li>
				<li class="nav-item ml-lg-5"><a class="nav-link text-dark"
					href="myInfoCommand">マイページ</a></li>
			</ul>
			<c:if test="${!empty bean}">
				<ul class="navbar-nav">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle " href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> <i
							class="fa-solid fa-circle-user fa-lg"></i> ${bean.userName }
					</a>
						<div class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="myInfoCommand">マイページ</a> <a
								class="dropdown-item" href="loginpage">ログアウト</a>
						</div></li>
				</ul>
			</c:if>
			<c:if test="${empty bean}">
				<div class="navbar-nav mr-5">
					<span><a href="loginpage"
						class="mr-2 nav-item nav-link text-dark">ログイン</a></span>
					<button href="registpage" type="button" class="btn btn-dark">新規登録</button>
				</div>
			</c:if>
		</div>
	</nav>