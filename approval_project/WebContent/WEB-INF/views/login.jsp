<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
<script>
	
	var loginChk = '${loginMsg}';
	if(loginChk == 'idFail'){
		alert("ID CHECK");
		$("#logId").focus();
	}else if(loginChk == 'passFail'){
		alert("PW CHECK");
		$("#logPass").focus();
	}
	
	$(function(){
		
		
		
		$("#btn").click(function(){
			 	
			if($("#logId").val() == ''){
				alert('아이디를 입력하세요');
				$("#logId").focus();
			}else if($("#logPass").val() == ''){
				alert('비밀번호를 입력하세요');
				$("#logPass").focus();
			}else{
				$("#frm").attr("action","login").attr("method","post").submit();
			}
		})
	})
	
	
</script>
</head>
<body>
   	<form name = "frm" id = "frm">
		<div>
			아이디 : <input type = "text" name = "logId" id = "logId" placeholder="아이디를 입력하세요"><br>
			비밀번호 : <input type = "password" name = "logPass" id = "logPass" placeholder="비밀번호를 입력하세요"><br>
		</div>
	</form>
	<div>
		<input type = "button" name = "btn" id = "btn" value = "로그인">
	</div>
</body>
</html>