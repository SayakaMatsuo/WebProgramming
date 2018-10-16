<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<!-- 表示領域の設定 -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>ログイン画面</title>

		<!-- BootstrapとオリジナルのCSS読み込み -->
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
		<link  rel="stylesheet" href="login.css">
		<!-- JQeryの読み込み -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
		<!-- BootstrapのJS読み込み -->
	    <script src="js/bootstrap.min.js"></script>
	</head>
	<body>
		<div class="container">
			<h3>ログイン画面</h3>
		</div>

		<!-- errMsg=エラーメッセージ もし、errMsgがnullでない時false それ以外はtrue(?) -->
    	<c:if test="${errMsg != null}" >

			<!-- class属性にalert alert-dangerを指定したdiv要素で、最重要メッセージを表示 -->
	    	<div class="alert alert-danger" role="alert">
		  		${errMsg}
			</div>
		</c:if>

		<div class="container">
			<form  action = "LoginServlet"  method = "post">

				<!--ログインIDフォーム -->
				<div class="form-group row mt-3 ml-3 pt-3">
					<label  for = "id"  class="col-sm-4 col-form-label">ログインID</label>
				<div class="col-sm-6">
					<input  type = "text" class="form-control" id = "id"  name = "user_id">
				</div>
				</div>

				<!--パスワードフォーム-->
				<div class="form-group row mt-3 ml-3 pt-3">
					<label  for = "pass"  class="col-sm-4 col-form-label">パスワード</label>
				<div class="col-sm-6">
					<input  type = "text" class="form-control" id = "pass"  name = "user_pass">
				</div>
				</div>

				<div class="button m-2 p-2">
  					<button type="submit" class="px-5">ログイン</button>
				</div>
			</form>
		</div>

	</body>
</html>
