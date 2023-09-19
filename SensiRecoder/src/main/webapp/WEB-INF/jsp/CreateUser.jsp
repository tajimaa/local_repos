<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html lang="ja">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@100;200;300;400;500;600;700;800;900&family=Poppins:wght@200;300;400;500;600;900&display=swap" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
        integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <title>login</title>
</head>


<body class="text-center" style="font-family: 'Noto Sans JP', sans-serif">
    <a id="skippy" class="sr-only sr-only-focusable" href="#content">
        <div class="container">
            <span class="skiplink-text">Skip to main content</span>
        </div>
    </a>

    <div class="shadow mx-auto mt-5 border border-3 rounded" style="width: 27em; height: 35em;">
        <form class="form-signin p-5 " action="isloginCommand" method="post" >
            <img class="mb-4 rounded" src="./../assets/img/icon.png" alt="" width="72" height="72">
            <h1 class="h5 mb-5 mt-3">SensiRecorderアカウントを作成</h1>
            <label for="inputEmail" class="sr-only">ユーザー名</label>
            <input type="text" name="id" id="inputEmail" class="form-control mb-1" placeholder="ユーザー名" required autofocus>
            <label for="inputPassword"  class="sr-only">パスワード</label>
            <input type="password" name="password" id="inputPassword" class="form-control mb-5" placeholder="パスワード" required>
            <button class="btn btn-lg btn-primary btn-block btn-dark" type="submit">作成</button>
            <div class="text-muted mt-2 "><small>ログインは <a class="text-success font-weight-700" href="loginpage">こちら</a></small></div>
            <p class="mt-5 mb-3 text-muted">&copy; 2023 SensiRecorder</p>
        </form>
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>
</body>
</html>