<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/assets/template/header_navbar.jsp"%>
<!-- ここか下にコンテンツを書く -->

<<<<<<< Updated upstream
<div class="shadow card ml-5 mt-5" style="width: 20rem";>
	<div class="card">
		<ul class="list-group list-group-flush">
=======
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


>>>>>>> Stashed changes
			
<form action="sensi/deviceRegisterCommand" method="get">
	<div class="col-md-4">
		<div class="card my-2 mb-2">
			<div class="card-body">
				<h5 class="card-title">${data.userName}</h5>
				<div class="card-body p-4">
					<ul class="list-group list-group-flush">
						<li class="list-group-item" style="display: inline-block;">マウス:
							<input type="text" class="form-control-plaintext" name="mouse" value="${data.mouse}">
						</li>
						<li class="list-group-item" style="display: inline-block;">マウスパッド:
							<input type="text" class="form-control-plaintext" name="mouse" value="${data.mousePad}">
						</li>
						<li class="list-group-item">マウスソール:
							<input type="text" class="form-control-plaintext" name="mouse" value="${data.mouseSole}">
						</li>
						<li class="list-group-item">モニター:
							<input type="text" class="form-control-plaintext" name="mouse" value="${data.monitor}">
						</li>
					</ul>
				</div>
				<input class="btn btn-primary btn-dark mr-2" type="submit" value="save">
			</div>
		</div>
	</div>
</form>

${data.cm180}
${data.cm360}
${data.game}

<!-- ************************************************* -->
<%@include file="/assets/template/fotter.jsp"%>