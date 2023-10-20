<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/assets/template/header_navbar.jsp"%>

<style>
	body {
		background-color: #fef6e4;
		color: #001858;
	}
	.bg_body {
		background-color: #fef6e4
	}
	
	.bg_m {
		background: #f3d2c1;
	}
	
	.bg_bu {
		border: none;
		background: #8bd3dd;
	}
	::hover {
		background: #689ea6;
	}
	
	.but-r {
		border: none;
		border-radius: 10px;
	}
	.b-r {
		border-radius: 0 10px 10px 0;
	}
	.b-l {
		border-radius: 10px 0 0 10px;
	}
	
	.card-border-none {
		border: none;
	}
	.f-w-4 {
		font-weight: 400;
	}
	.bg {
	  background-color: #000; /* 画像がない場合のフォールバック */
	  background-image: url("bg.jpg"); /* 画像のパスを指定 */
	  background-size: cover;
	  background-position: center center;
	  background-repeat: no-repeat;
	  width: 100%;
	  padding: 60px 30px;
	  display: flex;
	  align-items: center;
	  justify-content: center;
	}
	.ti {
		margin-top: 7em;
		margin-bottom: 7em;
	}
	.dt {
		margin-top: 3em;
		margin-bottom: 3em;
	}
	.mt-7 {
		margin-top: 7em;
	}
	.mr-7 {
		margin-right: 7em;
	}
	.mx-7 {
		margin-left:7em;
		margin-right: 7em;
	}
	.px-7 {
		padding-left: 7em;
		padding-right: 7em;
	}
	.py-7 {
		padding-top: 7em;
		padding-bottom: 7em;
	}
	
	.p-7 {
		padding: 7em;
	}
	.minw {
		min-width: 450px;
	}
	
	table {
		border-radius: 10px;
	}
	
	table th {
		width: 110px;
	  border-radius: 5px;
	
	  padding: 10px 0;
	}

	.inline {
		display: inline-block; 
		_display: inline;
	}
	.bt-pos {
		position: relative;
		top: 30px;
		left: 80px;
	}
	
	.border {
		border-radius: 10px;
		border: none;
		border: 10px;
	}
	
	.inp {
		text-align: right;
	}

</style>
<!-- ここか下にコンテンツを書く -->

<div class="container text-center ti">
	<h1 class="font-weight-bold">MyPage</h1>
	<p>今までに登録した感度の閲覧やデバイスの変更ができます。</p>
</div>	

<div class="bg_m p-7 pt-3">
	<div class="container">
		<div class="row">
		<form action="sensi/deviceRegisterCommand" method="get">	
			<div class="col" style="min-width: 350px;">
				<div class="card my-2 mb-2 bg_body but-r card_border">
					<div class="container text-center dt">
						<h3 class="font-weight-bold"><i class="fa-solid fa-user-astronaut fa-xl"></i>${data[0].userName }</h3>
							<div class="card-body p-4">
								<table class="custom-list">
									<tr><th>マウス</th></tr>
									<tr><td><input type="text" class="form-control-plaintext" name="mouse" value="${data[0].mouse}"></td></tr>
									<tr><th>マウスパッド</th></tr>
									<tr><td><input type="text" class="form-control-plaintext" name="mousePad" value="${data[0].mousePad}"></td></tr>
									<tr><th>マウスソール</th></tr>
									<tr><td><input type="text" class="form-control-plaintext" name="mouseSole" value="${data[0].mouseSole}"></td></tr>
									<tr><th>モニター</th></tr>
									<tr><td><input type="text" class="form-control-plaintext" name="monitor" value="${data[0].monitor}"></td></tr>
								</table>
								<input class="btn btn-primary mr-2 bt-pos bg_bu" type="submit" value="save">
							</div>
						</div>
				</div>
			</div>
		</form>
			<div class="col-sm-8 border mt-2 border-0" style="min-width: 100px; background: #fef6e4;">
				<div class="container text-center dt">
						<h3 class="font-weight-bold">History</h3>
					</div>
						<form class="form-inline" action="<%=request.getContextPath() %>/sensi/searchHistoryCommand" method="get">
							<div class="form-group mr-3">
						            	<select class="form-control  bg_body in b-l" id="mySelect" name="game">
											<option value="default">デフォルト</option>
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
						            	<button type="submit" class="btn btn-primary b-r bg_bu form-control">検索</button>
						            </div>
						</form>
						<table class="table" style="border-top: none;">
							<tr>
								<th>ゲーム</th>
								<th>感度</th>
								<th>dpi</th>
								<th>振り向き180°</th>
								<th>振り向き360°</th>
								<th>登録日</th>
							</tr>
							<c:forEach items="${data}" var="data" varStatus="status">
								<tr>
									<td>${data.game}</td>
									<td>${data.sensitivity}</td>
									<td>${data.dpi}</td>
									<td>${data.cm180}</td>
									<td>${data.cm360}</td>
									<td>${data.registered}</td>
								</tr>
							</c:forEach>
						</table>
					
			</div>
		</div>
	</div>
</div>

	


<%@include file="/assets/template/fotter.jsp"%>