<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@100;200;300;400;500;600;700;800;900&family=Poppins:wght@200;300;400;500;600;900&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
		integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
	<link rel="stylesheet" href="style.css">

</head>

<body>
	<!-- ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓ヘッダーナビゲーション↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓ -->
	<nav class="shadow-sm navbar navbar-expand-lg px-5 p-2">
		<nav class="navbar navbar-light">
			<a class="navbar-brand text-dark font-weight-bold ml-lg-4" href="#">SensiRecorder</a>
		</nav>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse text-dark" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item ml-lg-5 active ">
					<a class="nav-link text-dark" href="#">振り向き計算 <span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item ml-lg-5">
					<a class="nav-link text-dark" href="#">他ユーザーのデバイス</a>
				</li>
				<li class="nav-item ml-lg-5">
					<a class="nav-link text-dark" href="#">マイページ</a>
				</li>
			</ul>

			<div class="navbar-nav mr-5">
				<span><a href="#" class="mr-2 nav-item nav-link text-dark">ログイン</a></span>
				<button type="button" class="btn btn-dark">新規登録</button>
			</div>
		</div>
	</nav>
<!-- ここか下にコンテンツを書く -->


<form class="form-inline">
<div>
  マウス
  <label class="sr-only" for="inlineFormInputName2">マウス</label>
  <input type="text" name="mouse" class="form-control mb-2 mr-sm-2" id="inlineFormInputName2" placeholder="">
</div>
<div> 
  マウスパッド 
  <label class="sr-only" for="inlineFormInputName2">マウスパッド</label>
  <input type="text" name="mousepad" class="form-control mb-2 mr-sm-2" id="inlineFormInputName2" placeholder="">
</div>  
<div>  
  マウスソール
  <label class="sr-only" for="inlineFormInputName2">マウスソール</label>
  <input type="text" name="mousesole" class="form-control mb-2 mr-sm-2" id="inlineFormInputName2" placeholder="">
</div>
<div> 
  モニター     
  <label class="sr-only" for="inlineFormInputName2">モニター</label>
  <input type="text" name="moniter" class="form-control mb-2 mr-sm-2" id="inlineFormInputName2" placeholder="">
</div> 
  <button type="submit" class="btn btn-primary mb-2">登録</button>
</form>


<!-- ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓フッター↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓ -->
	<footer class="footer has-cards fixed-bottom">
    <div class="container">
      <hr>
      <div class="row align-items-center justify-content-md-between">
        <div class="col-md-6">
          <div class="copyright">
            &copy; 2023 <a href="" target="_blank">SensiRecorder</a>.
          </div>
        </div>
        <div class="col-md-6">
          <ul class="nav nav-footer justify-content-end">
            <li class="nav-item">
              <a href="" class="nav-link" target="_blank">tanaka</a>
            </li>
            <li class="nav-item">
              <a href="" class="nav-link" target="_blank">kakuei</a>
            </li>
            <li class="nav-item">
              <a href="" class="nav-link" target="_blank">saigou</a>
            </li>
            <li class="nav-item">
              <a href="" class="nav-link" target="_blank">takamori</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </footer>
</body>
</html>