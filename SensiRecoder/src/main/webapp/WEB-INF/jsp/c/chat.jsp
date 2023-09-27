<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/assets/template/header_navbar.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>WebSocketServer Sample</title>
<meta charset="utf-8" />
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<!-- <script src="script.js"></script> -->
</head>
<body>
	<div class="p-4">
		<input type="text" id="message" />
		<button id="send">送信</button>

	<div id="chatlog"></div>
		


	</div>







</body>
<script>
	$(function() {
		var ws = new WebSocket("ws://172.19.4.110:8080/SensiRecoder/Chat");

		ws.onopen = function() {
			$("#log").prepend("&lt;onopen&gt; " + "<br/>");
		}

		ws.onmessage = function(event) {
		    // 受信したメッセージを<p>タグで表示
		    var mes = event.data;
		    var mm = mes.split("=");
		    
		    $("#chatlog").prepend("<p>"+ mm[0]+"</p>"+"<div class=\"d-flex flex-row justify-content-start mb-4\"><div class=\"p-3 ms-3\" style=\"border-radius: 15px; background-color: rgba(57, 192, 237, .2);\"><p class=\"small mb-0\">" + mm[1] + "</p></div></div>");
		}

		ws.onerror = function() {
			$("#log").prepend("&lt;onerror&gt; " + "<br/>");
		}

		ws.onclose = function() {
			$("#log").prepend("&lt;onclose&gt; " + "<br/>");
		}

		$("#send").click(function() {
			var message = $("#message").val();
			ws.send(message);
			$("#message").val("");
		});

		$(window).unload(function() {
			ws.onclose();
		});
	});
</script>
</html>