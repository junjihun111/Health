<%@ page contentType="text/html;charset=UTF-8" %>
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

</style>
</head>
<body>
	<jsp:include page="/WEB-INF/view/body/boardmenu.jsp"/>
	
	<table id="tableSuccess"  class="table table-striped">
		<tr height=50>
			<td>
				<h1>${sessionScope.list.board_no} . [${sessionScope.list.board_header }] ${sessionScope.list.board_name }</h1> <span id="writerSuccess"> 작성자 : ${sessionScope.list.board_writer }</span> 
			</td>
		</tr>	
		<tr>
			<td width=600 height=50>
				<h3>작성일시 : <fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${sessionScope.list.board_date}"/> 조회수 : ${sessionScope.list.board_count}</h3>
			</td>
		</tr>
		<tr>
			<td width=600 height=100>
				<h2>${sessionScope.list.board_content}</h2>
			</td>
		</tr>
	</table>
		<br><br>
	<div id="updatebox">
		
		<a href='update.do' ><input type="submit" value="수정" class="btn btn-info"></a>
		<a href='delete.do'><input type="submit" value="삭제" class="btn btn-danger"></a>
	</div>
		<br><br>

</body>
</html>