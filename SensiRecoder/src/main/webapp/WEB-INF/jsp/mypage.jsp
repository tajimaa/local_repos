<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/assets/template/header_navbar.jsp"%>
<!-- ここか下にコンテンツを書く -->

<form action="sensi/deviceRegisterCommand" method="get">
	<div class="col-md-4">
		<div class="card my-2 mb-2">
			<div class="card-body">
				
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
	</div>
</form>

<c:forEach items="${data}" var="data" varStatus="status">
	<div class="col-md-4">
		<div class="card my-2 mb-2">
			<div class="card-body">
    			<h5 class="card-title">${data.userName}</h5>
				<div class="card-body p-4">
					<ul class="list-group list-group-flush">
						<li class="list-group-item">ゲーム:${data.game}</li>
						<li class="list-group-item">感度:${data.sensitivity}</li>
						<li class="list-group-item">dpi:${data.dpi}</li>
						<li class="list-group-item">cm180:${data.cm180}</li>
						<li class="list-group-item">cm360:${data.cm360}
					</ul>
				</div>
			</div>
		</div>
	</div>
</c:forEach>

<%@include file="/assets/template/fotter.jsp"%>