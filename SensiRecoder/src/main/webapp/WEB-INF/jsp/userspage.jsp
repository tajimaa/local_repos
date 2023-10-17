<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/assets/template/header_navbar.jsp"%>
<style>
	body {
		background-color: #fef6e4;
		color: #001858;
	}
	.bg_body {
		background-color: #fef6e4
	}
	
	.bg_m {
		background: #f3d2c1;
	}
	
	.bg_bu {
		border: none;
		background: #8bd3dd;
	}
	
	.but-r {
		border: none;
		border-radius: 10px;
	}
	.b-r {
		border-radius: 0 10px 10px 0;
	}
	.b-l {
		border-radius: 10px 0 0 10px;
	}
	
	.card-border-none {
		border: none;
	}
	.f-w-4 {
		font-weight: 400;
	}
	.bg {
	  background-color: #000; /* 画像がない場合のフォールバック */
	  background-image: url("bg.jpg"); /* 画像のパスを指定 */
	  background-size: cover;
	  background-position: center center;
	  background-repeat: no-repeat;
	  width: 100%;
	  padding: 60px 30px;
	  display: flex;
	  align-items: center;
	  justify-content: center;
	}
	.ti {
		margin-top: 7em;
		margin-bottom: 7em;
	}
	.mt-7 {
		margin-top: 7em;
	}
	.mr-7 {
		margin-right: 7em;
	}
	.mx-7 {
		margin-left:7em;
		margin-right: 7em;
	}
	.px-7 {
		padding-left: 7em;
		padding-right: 7em;
	}
	.py-7 {
		padding-top: 7em;
		padding-bottom: 7em;
	}
	
	.p-7 {
		padding: 7em;
	}
	.minw {
		min-width: 450px;
	}
	
	.in:focus{
		background-color: #fef6e4;
  		outline:#fef6e4 2px solid;
	}
	
	table{
	  border-collapse:separate;
	  border-spacing: 5px;
	  width: 100%;
	}
	
	table th {
		width: 110px;
	  border-radius: 5px;
	
	  padding: 10px 0;
	}

	.inline {
		display: inline-block; 
		_display: inline;
	}

	
</style>


<div class="container text-center ti">
	<h1 class="font-weight-bold">Aim Ddevice</h1>
	<p>他ユーザーが実際に使っているAim関連のデバイスを見ることができます。</p>
</div>	
<div class="bg_m p-7 pt-3">
	<div class="float-right mr- mt-4 " style="width: 500px;">
    <div class="container mt-3">
        <form class="form-inline " action="<%=request.getContextPath() %>/sensi/searchCommand" method="get">
            <div class="form-group mr-3">
                <input type="text" class="form-control input-group-prepend card-border-none bg_body in b-l" id="InputName" name="game" placeholder="キーワードを入力">
            	<button type="submit" class="btn btn-primary b-r bg_bu form-control">送信</button>
            </div>
        </form>
    </div>

	</div>
	<div class="p-5 mt-5">
		<div class="row">
			<c:forEach items="${data}" var="data" varStatus="status">
			<div class="col-md-4 minw">
				<div class="card my-2 mb-2 bg_body but-r card_border">
					<div class="card-title px-4 mt-4 mb-0">
						<h5 class="">
							<i class="fa-solid fa-user-astronaut fa-2xl"></i>
							<span class="h3">${data.userName}</span>
						</h5>
					<div class="mt-5">
						<span class="h5"><i class="fa-solid fa-chess-rook mr-3"></i>メインゲーム</span>
					</div>
					<div class="mt-3">
						<span class="h5"><i class="fa-solid fa-computer-mouse mr-3"></i>振り向き</span>
					</div>
					</div>
					<div class="card-body p-4">
						<table>
						  <tr>
						  <th>マウス</th>
						    <td>${data.mouse}</td>
						  </tr>
						  <tr>
						  <th>マウスパッド</th>
						    <td>${data.mousePad}</td>
						  </tr>
						  <tr>
						  <th>マウスソール</th>
						    <td>${data.mouseSole}</td>
						  </tr>
						  <tr>
						  <th>モニター</th>
						    <td>${data.monitor}</td>
						  </tr>
						</table>
					</div>
				</div>
			</div>

			<c:if test="${status.index % 3 == 2}">
				<div class="w-100"></div>
			</c:if>
		</c:forEach>
		</div>
	</div>
</div>


<%@include file="/assets/template/fotter.jsp"%>
