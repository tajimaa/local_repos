<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/assets/template/header_navbar.jsp"%>

<body>
	<c:forEach items="${data}" var="data">
		<ul class="list-group list-group-flush">
			<li class="list-group-item">ユーザー名:${data.userName}</li>
			<li class="list-group-item">マウス:${data.mouse}</li>
			<li class="list-group-item">マウスパッド:${data.mousePad}</li>
			<li class="list-group-item">マウスソール:${data.mouseSole}</li>
			<li class="list-group-item">モニター:${data.monitor}</li>
		</ul>
	</c:forEach>
</body>

<%@include file="/assets/template/fotter.jsp"%>
