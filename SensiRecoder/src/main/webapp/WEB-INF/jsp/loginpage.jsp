<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <form action="app/isloginCommand" method="post">
        <table>
            <tr>
                <td>ID</td>
            </tr>
            <tr>
                <td><input type="text" name="id"></td>
            </tr>
            <tr>
                <td>パスワード</td>
            </tr>
            <tr>
                <td><input type="password" name="password"></td>
            </tr>
            <tr>
                <td><input type="submit" value="login"></td>
            </tr>
        </table>
    </form>
</body>
</html>
