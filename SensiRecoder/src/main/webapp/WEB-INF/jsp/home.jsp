<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head><title>Home</title></head>
<body>
	<form action="login" method="get">
		<input type="submit" value="login" >
	</form>
	<form action="createUser" method="get" >
		<input type="submit" value="createUser" >
	</form>
	<h1>最初のページだよ</h1><br>
	<form action="front" method="get"> 
	<table>
		<tr>
			<th>ゲーム</th>
			<th>感度</th>
			<th>dpi</th>
		</tr>
		<tr>
			<th><input type="text" name="game" ></th>
			<th><input type="number" name="sensi" ></th>
			<th><input type="number" name="dpi" ></th>
		</tr>
	</table>
	<input type="submit" value="start" >
	<input type="submit" value="save" >
	</form>
</body>
</html>
