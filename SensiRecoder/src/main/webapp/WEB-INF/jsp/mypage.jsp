<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/assets/template/header_navbar.jsp"%>
<!-- ここか下にコンテンツを書く -->

<div class="shadow card ml-5 mt-5" style="width: 20rem";>
	<div class="card">
		<ul class="list-group list-group-flush">
			
			<form action="sensi/deviceRegisterCommand" method="get">
				ユーザー名:<br>
				${data.userName}<br>
				マウス:<input type="text" class="form-control-plaintext" name="mouse" value="${data.mouse}">
				マウスパッド:<input type="text" class="form-control-plaintext" name="mousePad" value="${data.mousePad}">
				マウスソール:<input type="text" class="form-control-plaintext" name="mouseSole" value="${data.mouseSole}">
				モニター:<input type="text" class="form-control-plaintext" name="monitor" value="${data.monitor}">
				
				<input class="btn btn-primary btn-dark mr-2" type="submit" value="save">
			</form>
			
		</ul>
	</div>
</div>
<!-- ************************************************* -->
<%@include file="/assets/template/fotter.jsp"%>