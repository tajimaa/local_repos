<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head><title>Home</title></head>
<body>
	<form action="loginpage" method="get">
		<input type="submit" value="login" >
	</form>
	<form action="registpage" method="get" >
		<input type="submit" value="createUser" >
	</form>
	<h1>最初のページだよ</h1><br>
	<form action="app/calcCommand" method="get"> 
	<table>
		<tr>
			<th>ゲーム</th>
			<th>感度</th>
			<th>dpi</th>
		</tr>
		<tr>
			<th><input type="text" name="game" ></th>
			<th><input type="number" step="0.001" name="sensi" ></th>
			<th><input type="number" name="dpi" ></th>
		</tr>
	</table>
	<input type="submit" value="start" >
	<input type="submit" value="save" >
	</form>
	<c:if test="${!empty data}">
  		cm180: ${data.cm180}
		cm360: ${data.cm360}
	</c:if>
	
</body>
</html>
