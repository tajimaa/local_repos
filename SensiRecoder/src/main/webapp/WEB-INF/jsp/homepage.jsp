<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/assets/template/header_navbar.jsp"%>

<!-- ここか下にコンテンツを書く -->

<div class="mt-5">
	<div class="card mx-auto " style="width:1000px; border-radius: 15px;overflow:hidden;">
  <div class="row no-gutters" >
    <div class="col-md-6 p-4" style="background: linear-gradient(-225deg, #2CD8D5 0%, #C5C1FF 56%, #FFBAC3 100%);">
      	<div class="card-title text-center">
      		<img class="rounded" src="<%=request.getContextPath() %>/icon.png" width="72" height="72">
      	</div>
      	<h4>SensiRecorder</h4>
      	<p>振り向き計算ができるツールです。</p>
      	<p>対応ゲーム</p>
    </div>
    <div class="col-md-6">
      <div class="card-body">
        <h5 class="card-title text-center mb-3">振り向き計算</h5>
		<form class="row g-3 mb-0" action="calcCommand" method="get">
			<div class="col-12 form-group">
				<label for="exampleFormControlSelect1">ゲームタイトル</label> <select
					class="form-control" id="mySelect" name="game">
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
					type="number" step="0.001" name="sensi" value="1"
					class="form-control" id="textbox1">
			</div>
			<div class="col-md-6">
				<label for="inputText4" class="form-label">dpi</label> <input
					type="number" step="100" name="dpi" value="800"
					class="form-control" id="textbox2">
			</div>

			<div class="col-md-12 mt-5 text-right">
				<input class="btn btn-primary btn-dark" type="submit" value="save">
			</div>
		</form>
		結果
		<div id="chatlog"></div>
		<form class="row g-3 mb-0">
			<div class="col-md-6">
				<label for="inputText4" class="form-label">振り向き180℃</label> <input
					type="text" step="0.001" name="sensi" class="form-control"
					id="textbox10" readonly>
			</div>
			<div class="col-md-6">
				<label for="inputText4" class="form-label">振り向き360℃</label> <input
					type="text" step="100" name="dpi" class="form-control"
					id="textbox20" readonly>
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

        if(value !== null) {
       		console.log(value);
        	ws.send("sensi=" + value);
        }
    });

    $("#textbox2").on('input', function () {
        var value = $("#textbox2").val();
        if(value !== null) {
        	console.log(value);
        	ws.send("dpi=" + value);
        }
    });

    $("#mySelect").on('change', function () {
        var selectedValue = $("#mySelect").val();
        if(selectedValue !== null) {
        	console.log(selectedValue);
        	ws.send("game=" + selectedValue);
        }
    });

    $(window).on('beforeunload', function () {
        ws.close();
    });
})
</script>

<%@include file="/assets/template/fotter.jsp"%>