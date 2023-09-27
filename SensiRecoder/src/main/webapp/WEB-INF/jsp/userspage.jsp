<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/assets/template/header_navbar.jsp"%>

	<div class="container mt-5">
		<div class="row">
			<c:forEach items="${data}" var="data" varStatus="status">
				
				<div class="col-md-4">
					<div class="card my-2 mb-2">
						<div class="card-body">
							<h5 class="card-title">${data.userName}</h5>
							<div class="card-body p-4">
								<ul class="list-group list-group-flush">
									<li class="list-group-item">マウス:${data.mouse}</li>
									<li class="list-group-item">マウスパッド:${data.mousePad}</li>
									<li class="list-group-item">マウスソール:${data.mouseSole}</li>
									<li class="list-group-item">モニター:${data.monitor}</li>
								</ul>
							</div>
						</div>
					</div>
				</div>

				<c:if test="${status.index % 3 == 2}">
					<div class="w-100"></div>
				</c:if>
			</c:forEach>
		</div>
	</div>
<%@include file="/assets/template/fotter.jsp"%>
