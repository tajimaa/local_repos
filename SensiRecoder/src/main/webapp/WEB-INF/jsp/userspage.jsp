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
	.minh {
		min-height: 600px;
	}
	
	.in:focus{
		background-color: #fef6e4;
  		outline:#fef6e4 2px solid;
	}
	
	table{
	  border-collapse:separate;
	  border-spacing: 5px;
	  width: 100%;
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
	
	.bar{
    	position: relative;
    	
    }
    .bar::before {
    	content: "";  
    	position: absolute;
    	border-bottom: solid;
    	border-color: #;
    	width: 80%;
    	top:10;
	  	left: 0;
	  	z-index: -2;
    }
    .mt-15 {
    	margin-top: 150px;
    }
	.inline {
		display: inline-block; 
		_display: inline;
	}
</style>


<div class="container text-center ti miny">
	<h1 class="font-weight-bold">Aim Ddevice</h1>
	<p>他ユーザーが実際に使っているAim関連のデバイスを見ることができます。</p>
</div>	
<div class="bg_m p-7 pt-3 minh">
	<div class="float-right  mt-4 " style="width: 500px;">
	    <div class="container mt-3">
	        <form class="form-inline " action="<%=request.getContextPath() %>/sensi/searchCommand" method="get">
	            <div class="form-group mr-3 text-right">
	            	<select class="form-control card-border-none bg_body in b-l" id="mySelect" name="game">
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
	    </div>
	</div>
	
	<c:if test="${empty data}">
		<div class="card p-4 mx-auto bg_body but-r card_border mt-15 text-center">
			<h4>このゲームをプレイしているSensirecoderユーザーは見つかりませんでした。</h4>
		</div>
	</c:if>
	
	<c:if test="${!empty data}">
	<div class="p-5 mt-5">
		<div class="row">
			<c:forEach items="${data}" var="data" varStatus="status">
			<div class="col-md-4 minw">
				<div class="card my-2 mb-2 bg_body but-r card_border">
					<div class="card-title px-4 mt-4 mb-0">
						<h5 class="">
							<i class="fa-solid fa-user-astronaut fa-2xl"></i>
							<span class="h3">${data.userName}</span>
						</h5>

						<div class="mt-3">
							<table class="h5">
								<tr>
									<th style="width:200px"><i class="fa-solid fa-chess-rook "></i>メインゲーム</th>
									<td>${data.game}</td>
								</tr>
								<tr>
									<th style="width:200px"><i class="fa-solid fa-computer-mouse mr-1"></i>振り向き</th>
									<td>${data.cm180}</td>
								</tr>
							</table>
						</div>
					</div>

					<div class="card-body p-4">
						<table>
						  <tr>
						  <th>マウス</th>
						    <td>${data.mouse}</td>
						  </tr>
						  <tr>
						  <th>マウスパッド</th>
						    <td>${data.mousePad}</td>
						  </tr>
						  <tr>
						  <th>マウスソール</th>
						    <td>${data.mouseSole}</td>
						  </tr>
						  <tr>
						  <th>モニター</th>
						    <td>${data.monitor}</td>
						  </tr>
						</table>
					</div>
				</div>
			</div>

			<c:if test="${status.index % 3 == 2}">
				<div class="w-100"></div>
			</c:if>
		</c:forEach>
		</div>
	</div>
	</c:if>
	
</div>


<%@include file="/assets/template/fotter.jsp"%>
