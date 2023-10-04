<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/assets/template/header_navbar.jsp" %>
<style>
	body {
		background-color: #fef6e4;
		color: #001858;
	}
	.in {
		background-color: #fef6e4;
	}
	
	.in:focus{
		background-color: #fef6e4;
  		outline:#fef6e4 2px solid;
	}

	.button {
		border: none;
		outline: none;
		background: transparent;
	}
	.read_only {
		background-color: #f3d2c1;
	}
	.main_bg {
		background-color: #fef6e4;
	}

	.main_container {
		width: 1100px;
		border-radius: 15px;
		border-width: 5px;
		overflow: hidden;

	}
	
	.inline {
		display: inline-block; 
		_display: inline;
	}

	.card_border {
		border-color: #001858;
		border-radius: 10px;
		border-width: 4px;
	}

	.input_border {
		border-color: #001858;
	}
	
	.width-10 {
		width: 1100;
	}

	.m-a {
		margin-left: auto;
		margin-right: auto;
	}

	.bg-blue {
		background-color: #8bd3dd;
	}


	.f-w-7 {
		font-weight: 700;
	}
	.f-w-4 {
		font-weight: 400;
	}
	
	.scroll-box {
      width: 400px;
      height: 250px;
      
      overflow: auto;
    }
    
    .gradient{
    	background: linear-gradient(rgba(0,0,0,0),rgba(139, 211, 221, 1));
   		width: 400px;
    	height: 250px;
	}
	
	.transparent {
	  position: relative;  /* 基準位置とする */
	}
	.transparent::before {
	  content: "";         /* 疑似要素に必須 */
	  width: 90%;         /* 幅いっぱい */
	  height: 50%;        /* 高さいっぱい */
	  display: block;      /* 高さを指定するためにブロック要素にする */
	  background: linear-gradient(rgba(255,255,255,0) 0, #fef6e4 95%); /* 徐々に透明にする */
	  position: absolute;  /*  */
	  bottom: 0;
	  left: 0;
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
    
    .btn-pink {
    	width: 100px;
    	background: #f582ae;
    	border-color: #f582ae;
    	color: #001858;
    	
    }
    .btn-pink:hover{
    	box-shadow: 0px 10px 10px -1px rgba(0,0,0,0.1);
    	background: #f582ae;
    	border-color: #f582ae;
    	color: #001858;
    	
    }
    
    
</style>
<!-- ここか下にコンテンツを書く -->


<div class="mt-5 p-5 width-10 m-a">
	<div class="container">
		<div class="row">
			<div class="col-6">
				<h1 class="f-w-7">Turning calculation</h1>
				<p>振り向き計算ができるツールです。</p>
				<p>ゲームタイトル、ゲーム感度とdpiを入力すると180度、360度のcmが計算できます。</p>
				<p>対応ゲーム</p>
				<div class="transparent">
				<div class=" inline scroll-box  ">
					<ul>
					  <li>1v1.LOL</li>
					  <li>7_Days_to_Die</li>
					  <li>Alliance_of_Valiant_Arms_(AVA)</li>
					  <li>Apex_Aim_Trainer</li>
					  <li>Apex_Legends</li>
					  <li>ARK_Survival_Evolved</li>
					  <li>Arma_3</li>
					  <li>Back_4_Blood</li>
					  <li>Banana_Shooter</li>
					  <li>Battalion_1944</li>
					  <li>BattleBit_Remastered</li>
					  <li>Battlefield_2042</li>
					  <li>Battlefield_1</li>
					  <li>Battlefield_4</li>
					  <li>Battlefield_V</li>
					  <li>Black_Desert_Online_(黒い砂漠)</li>
					  <li>Block_N_Load</li>
					  <li>Bloodhunt_(Vampire_The_Masquerade)</li>
					  <li>Borderlands_2</li>
					  <li>Borderlands_3</li>
					  <li>Boundary</li>
					  <li>Call_of_Duty_BO4</li>
					  <li>Call_of_Duty_BOCW</li>
					  <li>Call_of_Duty_Modern_Warfare_II</li>
					  <li>Call_of_Duty_Vanguard</li>
					  <li>Counter-Strike_Global_Offensive_(CSGO)</li>
					  <li>Cyberpunk_2077</li>
					  <li>Dark_and_Darker</li>
					  <li>Unturned</li>
					  <li>Valheim</li>
					  <li>Valorant</li>
					  <li>Warframe</li>
					  <li>Warlander</li>
					  <li>War_Thunder</li>
					  <li>World_War_3</li>
					  <div class="bar"><div>
					  <br><br>
					  <!-- 他のゲーム名を追加 -->
					</ul>
				</div>
				</div>
			</div>
			<div class="col-6">
				<div class="card p-4 card_border bg-blue">
					<h4 class="card-title text-center mb-4 font-weight-bold">振り向き計算</h4>
					<form class="row g-3 mb-0" action="calcCommand" method="get">
						<div class="col-12 form-group font-weight-bold">
							<label for="exampleFormControlSelect1 font-weight-bold">ゲームタイトル</label>
							<select class="form-control main_bg" id="mySelect" name="game">
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
						<div class="col-md-6 font-weight-bold">
							<label for="inputText4" class="form-label ">ゲーム内感度</label>
							<input type="number" step="0.001" name="sensi" value="1" class="form-control main_bg in"
								id="textbox1">
						</div>
						
						<div class="col-md-6 font-weight-bold">
							<label for="inputText4" class="form-label ">dpi</label>
							<input type="number" step="100" name="dpi" value="800" class="form-control main_bg in"
								id="textbox2">
						</div>

						<div class="col-md-12 mt-5 text-right">
							<input class="btn btn-primary btn-pink" type="submit" value="save">
						</div>
					</form>
					結果
					<div id="chatlog"></div>
					<form class="row g-3 mb-0">
						<div class="col-md-6">
							<label for="inputText4" class="form-label font-weight-bold">振り向き180℃</label> 
							<input type="text" step="0.001" name="sensi" class="form-control read_only" id="textbox10" readonly>
						</div>
						<div class="col-md-6">
							<label for="inputText4" class="form-label font-weight-bold">振り向き360℃</label> 
							<input type="text" step="100" name="dpi" class="form-control read_only" id="textbox20" readonly>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>




<script>
	$(function () {
		var ws = new WebSocket("ws://localhost:8080/SensiRecoder/WebSocketServer");

		ws.onopen = function () {
			$("#log").prepend("&lt;onopen&gt; " + "<br/>");
		}

		ws.onmessage = function (message) {
			var broadcastMessage = message.data;
			var mm = broadcastMessage.split(",");
			console.log(mm[0]);
			$("#chatlog1 p:last").remove();
			$("#chatlog2 p:last").remove();

			var textbox1 = document.getElementById("textbox10");
			textbox1.value = mm[0] + "cm";
			var textbox2 = document.getElementById("textbox20");
			textbox2.value = mm[1] + "cm";
		}
		ws.onerror = function () {
			$("#log").prepend("&lt;onerror&gt; " + "<br/>");
		}

		ws.onclose = function () {
			$("#log").prepend("&lt;onclose&gt; " + "<br/>");
		}

		$("#textbox1").on('input', function () {
			var value = $("#textbox1").val();

			if (value !== null) {
				console.log(value);
				ws.send("sensi=" + value);
			}
		});

		$("#textbox2").on('input', function () {
			var value = $("#textbox2").val();
			if (value !== null) {
				console.log(value);
				ws.send("dpi=" + value);
			}
		});

		$("#mySelect").on('change', function () {
			var selectedValue = $("#mySelect").val();
			if (selectedValue !== null) {
				console.log(selectedValue);
				ws.send("game=" + selectedValue);
			}
		});

		$(window).on('beforeunload', function () {
			ws.close();
		});
	})
</script>

<%@include file="/assets/template/fotter.jsp" %>