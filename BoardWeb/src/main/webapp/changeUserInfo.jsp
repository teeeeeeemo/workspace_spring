<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h1>회원정보 변경</h1>
		<a href="getBoardList.do">그냥 변경 안할래</a> <br><br>
		<form action="changeUserInfo.do" method="post"
			onsubmit="return input_check_func()">
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="orange">현재 비밀번호</td>
					<td><input type="password" id="password" name="password" value=""></td>
				</tr>
				<tr>
					<td bgcolor="orange">새 비밀번호</td>
					<td><input type="password" id="newPassword" name="newPassword" value=""></td>
				</tr>
				<tr>
					<td bgcolor="orange">새 비밀번호 확인</td>
					<td><input type="password" id="newPasswordCheck" name="newPasswordCheck" value=""></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="비밀번호 변경" /></td>
				</tr>
			</table>
		</form>
		
		<h2>${userName }아, 혹시 너 탈퇴할거니 ? ${userId }말이야  </h2>
		
		<a href="deleteUser.do?id=${userId }">탈!퇴!하!기!</a>
		
		
	</center>
	<script>
    // input_check_func는 비번 변경 3가지 문항을 전부다 채워 넣었는지 check 해준다
    // 이는 form onsubmit에 의해 발동되며 return 값이 false 일 경우 페이지의 데이터가 action= 좌표로 넘어가지 않게된다
    function input_check_func() {
        var password = document.getElementById('password').value;
        var newPassword = document.getElementById('newPassword').value;
        var newPasswordCheck = document.getElementById('newPasswordCheck').value;
        
        if(password == null || newPassword == null || newPasswordCheck == null ||
        		password == "" || newPassword == ""   || newPasswordCheck == "") {
            alert("다 입력해야지 바부야");
            return false;
        } 
        // 새로운 비밀번호와 새로운 비밀번호 확인 input에 적은 값이 다르다면 경고창을 띄우고 false를 반환해서 action을 막는다
        else if ( newPassword != newPasswordCheck ) {
            alert("새 비번 두개 다 똑같이 입력해야지!!!!");
            return false;
        } else {
            // input들이 공백인지, 새 비밀번호와 새 비밀번호 확인 유무가 통과되면 action=좌표 로 이동한다
            // 여기서 현재 비밀번호가 맞는지 안맞는지는 확인안한다 조금 어렵더라고
            return true;
        }
    }    
    </script>

</body>

</html>