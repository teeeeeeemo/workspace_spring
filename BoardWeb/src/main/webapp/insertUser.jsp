<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 가입</title>
</head>

<body>
<center>
	<h1>회원가입</h1>
	<form action="insertUser.do" method="post"
		onsubmit="return input_check_func()">
		<table border="1">
			<tr>
				<th>아이디</th>
				<td><input type="text" id="id" name="id"></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" id="password" name="password"></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input type="text" id="name" name="name"></td>
			</tr>
			<tr>
				<th>role(^^)</th>
				<td><input type="text" id="role" name="role"></td>
			</tr>
		</table>
		<button>가입하기</button>
	</form>
	</center>

	<script>
    // input_check_func는 회원가입에 필요한 3가지 문항을 전부다 채워 넣었는지 check.
    // 이는 form onsubmit에 의해 발동되며 return 값이 false 일 경우 페이지의 데이터가 action= 좌표로 넘어가지 않게된다
    function input_check_func() {
        var id = document.getElementById('id').value;
        var password = document.getElementById('password').value;
        var name = document.getElementById('name').value;
        var role = document.getElementById('role').value;
        
        if(id == null || password == null || name == null || role == null ||
         id == ""   || password == ""   || name == "" || role == "") {
            alert("빈칸으로 두지 말구 다 기입해");
            return false;
        } else {
            // 모든조건이 충족되면 true를 반환한다 이는 현재 페이지의 정보를 action= 좌표로 넘긴다는것을 의미
            return true;
        }
    }    
    </script>

</body>


</html>