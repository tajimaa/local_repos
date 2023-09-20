<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
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
	<!-- ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓ヘッダーナビゲーション↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓ -->
	<nav class="shadow-sm navbar navbar-expand-lg navbar-light bg-light p-3">
		<nav class="navbar navbar-light">
			<a class="navbar-brand text-dark font-weight-bold ml-lg-4" href="#">SensiRecorder</a>
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
					href="#">マイページ</a></li>
			</ul>
			<c:if test="${!empty bean}">
				<ul class="navbar-nav">
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle " href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
							${bean.userName } 
						</a>
						<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="myInfoCommand">マイページ</a> 
							<a class="dropdown-item" href="loginpage">ログアウト</a>
						</div>
					</li>
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
	
	<!-- ここか下にコンテンツを書く -->

	<div class="shadow card mx-auto mt-5" style="width: 40rem;">
		<div class="card-body p-4">
			<h5 class="card-title text-center mb-3">振り向き計算</h5>
			<form class="row g-3 mb-0" action="calcCommand" method="get">
				<div class="col-12 form-group">
					<label for="exampleFormControlSelect1">ゲームタイトル</label> <select
						class="form-control" id="exampleFormControlSelect1" name="game">
						<option value="1v1.LOL">1v1.LOL</option>
						<option value="7_Days_to_Die">7_Days_to_Die</option>
						<option value="Alliance_of_Valiant_Arms_(AVA)">Alliance_of_Valiant_Arms_(AVA)</option>
						<option value="Apex_Aim_Trainer">Apex_Aim_Trainer</option>
						<option value="Apex_Legends">Apex_Legends</option>
						<option value="ARK_Survival_Evolved">ARK_Survival_Evolved</option>
						<option value="Arma_3">Arma_3</option>
						<option value="Back_4_Blood">Back_4_Blood</option>
						<option value="Banana_Shooter">Banana_Shooter</option>
						<option value="Battalion_1944">Battalion_1944</option>
						<option value="BattleBit_Remastered">BattleBit_Remastered</option>
						<option value="Battlefield_2042">Battlefield_2042</option>
						<option value="Battlefield_1">Battlefield_1</option>
						<option value="Battlefield_4">Battlefield_4</option>
						<option value="Battlefield_V">Battlefield_V</option>
						<option value="Black_Desert_Online_(黒い砂漠)">Black_Desert_Online_(黒い砂漠)</option>
						<option value="Block_N_Load">Block_N_Load</option>
						<option value="Bloodhunt_(Vampire_The_Masquerade)">Bloodhunt_(Vampire_The_Masquerade)</option>
						<option value="Borderlands_2">Borderlands_2</option>
						<option value="Borderlands_3">Borderlands_3</option>
						<option value="Boundary">Boundary</option>
						<option value="Call_of_Duty_BO4">Call_of_Duty_BO4</option>
						<option value="Call_of_Duty_BOCW">Call_of_Duty_BOCW</option>
						<option value="Call_of_Duty_Modern_Warfare_II">Call_of_Duty_Modern_Warfare_II</option>
						<option value="Call_of_Duty_Vanguard">Call_of_Duty_Vanguard</option>
						<option value="Counter-Strike_Global_Offensive_(CSGO)">Counter-Strike_Global_Offensive_(CSGO)</option>
						<option value="Cyberpunk_2077">Cyberpunk_2077</option>
						<option value="Dark_and_Darker">Dark_and_Darker</option>
						<option value="Unturned">Unturned</option>
						<option value="Valheim">Valheim</option>
						<option value="Valorant">Valorant</option>
						<option value="Warframe">Warframe</option>
						<option value="Warlander">Warlander</option>
						<option value="War_Thunder">War_Thunder</option>
						<option value="World_War_3">World_War_3</option>
					</select>
				</div>

				<div class="col-md-6">
					<label for="inputText4" class="form-label">ゲーム内感度</label> <input
						type="number" step="0.001" name="sensi" class="form-control"
						id="inputText4">
				</div>
				<div class="col-md-6">
					<label for="inputText4" class="form-label">dpi</label> <input
						type="number" step="100" name="dpi" class="form-control"
						id="inputText">
				</div>

				<div class="col-md-12 mt-5 text-right">
					<input class="btn btn-primary btn-dark mr-2" type="submit"
						value="start"> <input class="btn btn-primary btn-dark"
						type="submit" value="save">
				</div>
			</form>
		</div>
		<div class="card-footer pb-4">
			結果
			<c:if test="${!empty data}">
				<form class="row g-3 mb-0">
					<div class="col-md-6">
						<label for="inputText4" class="form-label">振り向き180℃</label> <input
							type="text" step="0.001" name="sensi" class="form-control"
							value="${data.cm180}cm" id="readOnlyTextBox" readonly>
					</div>
					<div class="col-md-6">
						<label for="inputText4" class="form-label">振り向き360℃</label> <input
							type="text" step="100" name="dpi" class="form-control"
							value="${data.cm360}cm" id="readOnlyTextBox" readonly>
					</div>
					<div class="col-md-6">
						<label for="inputText4" class="form-label">eDPI</label> <input
							type="text" step="100" name="dpi" class="form-control"
							id="readOnlyTextBox" readonly>
					</div>
				</form>
			</c:if>

			<c:if test="${empty data}">
				<form class="row g-3 mb-0">
					<div class="col-md-6">
						<label for="inputText4" class="form-label">振り向き180℃</label> <input
							type="text" step="0.001" name="sensi" class="form-control" id="readOnlyTextBox" readonly>
					</div>
					<div class="col-md-6">
						<label for="inputText4" class="form-label">振り向き360℃</label> <input
							type="text" step="100" name="dpi" class="form-control"
							id="readOnlyTextBox" readonly>
					</div>
				</form>
			</c:if>
		</div>
	</div>
	
	
	<!-- ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓フッター↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓ -->
	<div style="margin-bottom: 10em;">
    </div>
	<footer class="footer has-cards">
		<div class="container">
			<hr>
			<div class="row align-items-center justify-content-md-between">
				<div class="col-md-6">
					<div class="copyright">
						&copy; 2023 <a href="" target="_blank">SensiRecorder</a>.
					</div>
				</div>
				<div class="col-md-6">
					<ul class="nav nav-footer justify-content-end">
						<li class="nav-item"><a href="" class="nav-link"
							target="_blank">tanaka</a></li>
						<li class="nav-item"><a href="" class="nav-link"
							target="_blank">kakuei</a></li>
						<li class="nav-item"><a href="" class="nav-link"
							target="_blank">saigou</a></li>
						<li class="nav-item"><a href="" class="nav-link"
							target="_blank">takamori</a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>