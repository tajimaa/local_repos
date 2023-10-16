<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/assets/template/header_navbar.jsp"%>
<!-- ここか下にコンテンツを書く -->

<div class="container">
	<div class="row">
	<form action="sensi/deviceRegisterCommand" method="get">
		<div class="col" style="min-width:30px">
			<div class="card my-2 mb-2">
					<div class="card-body p-4">
						<ul class="list-group list-group-flush">
							<li class="list-group-item" style="display: inline-block;">マウス:
								<input type="text" class="form-control-plaintext" name="mouse" value="${data[0].mouse}">
							</li>
							<li class="list-group-item" style="display: inline-block;">マウスパッド:
								<input type="text" class="form-control-plaintext" name="mousePad" value="${data[0].mousePad}">
							</li>
							<li class="list-group-item">マウスソール:
								<input type="text" class="form-control-plaintext" name="mouseSole" value="${data[0].mouseSole}">
							</li>
							<li class="list-group-item">モニター:
								<input type="text" class="form-control-plaintext" name="monitor" value="${data[0].monitor}">
							</li>
						</ul>
					</div>
					<input class="btn btn-primary btn-dark mr-2" type="submit" value="save">
			</div>
		</div>
	</form>
	<div class="col-sm-8" style="min-width: 100px;">
		<table class="table" >
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


	


<%@include file="/assets/template/fotter.jsp"%>