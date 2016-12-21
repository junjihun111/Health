<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="/HealthJJang/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="/HealthJJang/bootstrap/js/bootstrap.js"></script>

<style type="text/css">
	#tableSuccess{
	width:70% ;
	max-width:1550px ; 
	margin:0 auto ; 
	text-align: left;
}

#updatebox
{
	margin-left: 56%;
}


#writerSuccess
{
	text-align: right;
}

</style>
</head>
<script type="text/javascript" src="/HealthJJang/scripts/jquery.js"></script>
<body>
	<jsp:include page="/WEB-INF/view/body/boardmenu.jsp"/>
	<table class="table table-striped" id="tableSuccess">
		<tr height=50>
			<td>
				<h1>[${sessionScope.list.board_header }] ${sessionScope.list.board_name }</h1> <span id="writerSuccess">작성자 : ${sessionScope.list.board_writer }</span>
			</td>
		</tr>	
		<tr>
			<td width=500 height=50>
				<h3>작성일시 : <fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${sessionScope.list.board_date}"/>  조회수 : ${sessionScope.list.board_count}</h3>
			</td>
		</tr>
		<tr>
			<td width=600 height=100>
				<h2>${sessionScope.list.board_content}</h2>
			</td>
		</tr>
	</table>
		<br>
		
		<div id="updatebox">
			<c:if test="${not empty sessionScope.managerID}">
				<c:if test="${not empty sessionScope.managerPW}">
				<br>
					<a href="operatorupdate.do"><button id="update" class="btn btn-info">수정</button></a>
					<a href="operatordelete.do?page=${sessionScope.list.board_no} }"><button id="delete" class="btn btn-warning">삭제</button></a><br><br>
					
				</c:if>
			</c:if>
			
		 	<br><br>
			<br><br>
		</div>
		
		
</body>
</html>