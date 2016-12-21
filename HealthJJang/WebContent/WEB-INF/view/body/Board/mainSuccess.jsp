<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

#Success
{
	font-family : fantasy;
 	margin:0px;
 	padding:0px;
 	font-size:18px;
}

#outerborder{
	width:70% ;
	height: 500px;
	max-width:1550px ; 
	margin:0 auto ; 
	text-align: left;

}

#tables{
	height: 400px;
	max-width:1550px ; 
	margin:0 auto ; 
	text-align: center;
}


</style>
</head>

<body>


<c:if test="${sessionScope.managerID !=null}">
	<c:if test="${sessionScope.managerPW != null}">
 	</c:if>
</c:if> 
<br>
<br>
<span id="Success"><h1>관리자 전용 화면 <br> 로그인 성공</h1></span>


<br>

<div id="outerborder"  style="{border: 3px solid #000000, border-radius}">

<h1 style="color: gray;">&nbsp;&nbsp;&nbsp;*빠른메뉴</h1>  
<span id="logouttext" style="color: gray;"><h3>(로그아웃은 STUBBON메뉴 밑에 있습니다.)</h3></span>

<table id="tables">
   

<tr>

 <td><h3 style="font-family: sans-serif;">메인</h3><a href="main.do" class="hoverFilter"><span><img class="className" src="IMAGE/메인.JPG" width="350"  height="300"></span></a></td>
 <td><h3 style="font-family: sans-serif;">게시판</h3><a href='BoardList.do?page=1' class="hoverFilter"><span><img class="className2" src="IMAGE/게시판.JPG" width="350"  height="300"></span></a></td>
 <td><h3 style="font-family: sans-serif;">물품등록</h3><a href="/HealthJJang/addItemController.do" class="hoverFilter"><span><img class="className3" src="IMAGE/물품 등록.JPG" width="350" height="300"></span></a></td>
</tr>

</table>

<br>

<br><br><br>

</div>
<br><br>
</body>
</html>