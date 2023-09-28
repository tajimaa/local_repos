<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/assets/template/header_navbar.jsp"%>
<!-- ここか下にコンテンツを書く -->

<div class="container bg-secondary" style="width: 40rem;">
  <div class="row">
    <div class="col">
      <img src="<%=request.getContextPath() %>/default_user.png" class="rounded-circle" width="120" height="120">
    </div>
    <div class="col-9">
      <h1>${bean.userName }</h1>
    </div>
  </div>
</div>

<div class="shadow card ml-5 mt-5" style="width: 20rem";>
	<div class="card">
		<ul class="list-group list-group-flush">
			
			<form action="sensi/deviceRegisterCommand" method="get">
				ユーザー名:<input type="text" class="form-control-plaintext" name="userName" readonly="readonly" value="${data.userName}">
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