<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<style>

body{background-color: black}

#list{
	width:100% ;
	max-width:1550px ; 
	margin:0 auto ; 
	text-align: left;
	
}

.idcolor{
	color:black;
}

.pwcolor{
	color:black;
}

#managerId
{
	width: 15%;
	margin-left: 43%;
}

#managerPw
{
	width: 15%;
	margin-left: 43%;
}

.idID
{
	margin-right: 14.5%;
}

.idPW
{
	margin-right: 14%;
}

#linemain
{
	border: 3cm;	
}
</style>
<body>
<link href="/HealthJJang/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="/HealthJJang/bootstrap/js/bootstrap.js"></script>


<script type="text/javascript">
	$(document).ready(function(){
		$("#managerId").on("click",function(){
			$(this).val("");
		});
		
		$("#managerPw").on("click",function(){
			$(this).val("");
		});
	});
</script>

<br><br>
<br>
<caption id="list"><span id="list"><h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ADMINLOGIN</h2></span></caption>

<c:if test="${not empty requestScope.failMessage }">
				<br><span class="idcolor" style="color: purple;">${requestScope.failMessage}<br></span>
			</c:if>
			<c:if test="${not empty requestScope.failMessagepw }">
				<br><span class="idcolor" style="color: purple;">${requestScope.failMessagepw}</span><br>
</c:if>

<br>
<div id="linemain">
<form action="mainSuccess.do" name="join_form" method="post">
				<span class="idID" id="id">관리자 ID</span><br><br><span id="idinsert"><input type="text" name="managerId" id="managerId" value="ID" class="form-control"><br></span>
			
				<form:errors path="managerInfo.managerId"/>
			
			
				<span class="idPW" id="pw">관리자 PW</span><br><br><span id="pwinsert"><input type="text" name="managerPw" id="managerPw" value="PW" class="form-control"><br></span>
			
				<form:errors path="managerInfo.managerPw"/>
			
				<br>
				<input type="submit" id="id" value="로그인" class="btn btn-default">&nbsp;
			
				<input type="reset" value="초기화" class="btn btn-default">
				
</form>
</div>
	<div>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
	</div>
</body>
</html>
