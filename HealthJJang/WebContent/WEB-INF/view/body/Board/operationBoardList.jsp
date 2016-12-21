<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/HealthJJang/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="/HealthJJang/bootstrap/js/bootstrap.js"></script>

<style type="text/css">

header{
 font-family: "맑은 고딕";

}

body{
 font-family: "맑은 고딕";
 margin:0px;
 padding:0px;
 font-size:20px;
}

#bbs td {
    padding-top: 3px;
    padding-bottom: 3px;
    border-bottom: 1px solid silver;
}

#bbs td a {
    color: #555;
    text-decoration: none;
}

#bbs td a:hover {
    color:#555;
    text-decoration: underline;
} 

#tablenotice {
	width:70% ;
	max-width:1550px ; 
	margin:0 auto ; 
	text-align: left;
}

#list{
	width:100% ;
	max-width:1550px ; 
	margin:0 auto ; 
	text-align: left;
	color: #FFBB00;
}

#insert{
	margin-left: 35%;
	
}

#namefind{
	margin-left: 60%;
}

#passwordfind{
	margin-left: 60%;
}

#listth{
	text-align: center;
}

#bodylisttd
{
	background: ;
	text-align: left;
}

#noticeday
{
	text-align: center;
}

#writer
{
	text-align: center;
}

#count
{
	text-align: center;
}

</style>
</head>
<body>
	
<script type="text/javascript" src="/HealthJJang/scripts/jquery.js"></script>

<jsp:include page="/WEB-INF/view/body/boardmenu.jsp"/>


	<caption id="list"><span id="list"><h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;공지사항</h1></span></caption>
	<br>
	<br>

<table id="tablenotice" class="table table-condensed">
			<tr>
				<th width=500 height=50 align="left"><h2>제목</h2></th>
				<th width=200 height=50 id="noticeday"><h2>공지일</h2></th>
				<th width=120 height=50 id="writer"><h2>작성자</h2></th>
				<th width=100 height=50 id="count"><h2>조회수</h2></th>
			</tr>
	
	<tbody>
		<c:forEach items="${sessionScope.operationBoardList}" var="board" varStatus="cnt">
		<tr>
			<td id="bodylisttd"><h5><a href="operationinsertList.do?page=${board.board_no }">${board.board_name}</a></h5></td>
			<td align="center"><span><h5><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${board.board_date}"/></h5></span></td>
			<td align="center"><span class="bb"><h5>${board.board_writer}</h5></span></td>
			<td align="center"><span><h5>${board.board_count}</h5></span></td>
		</tr>
	</c:forEach>
	</tbody>
</table>
<br><br>

<c:if test="${not empty sessionScope.managerID}">
	<c:if test="${not empty sessionScope.managerPW}">
			<div id="insert"><a href='operatorinsert.do'><button id="insert" class="btn btn-primary">글 등록</button></a>&nbsp;&nbsp;</div><br>
	</c:if>
</c:if>
	
	
</body>


<p>
	<!-- 첫페이지로 이동 -->
	<a href="operationBoardList.do?page=1">
		◁&nbsp;&nbsp;
	</a>
	<!--
		이전 페이지 그룹 처리.
		만약에 이전페이지 그룹이 있으면 링크처리하고 없으면 화살표만 나오도록 처리.
	 -->
 <c:choose>
 	<c:when test="${requestScope.pageBeanoperator.previousPageGroup }">
 		<a href="operationBoardList.do?page=${requestScope.pageBeanoperator.beginPage-1 }">
 			◀
 		</a>	
 		&nbsp;&nbsp;
 	</c:when>
 	<c:otherwise>
		◀&nbsp;&nbsp;
 	</c:otherwise>
 </c:choose>
<!-- 
	현재 page가 속한 page 그룹내의 페이지들 링크.
	현재 pageGroup의 시작page ~ 끝 page
 -->
 <!-- 만약에 p가 현재페이지면 링크처리를 하지 않고 p가 현재페이지가 아니라면 링크처리. -->
<c:forEach begin="${requestScope.pageBeanoperator.beginPage }" end="${requestScope.pageBeanoperator.endPage }"
			   var="p2">
	<c:choose>
		<c:when test="${p2 != requestScope.pageBeanoperator.page }">
			<a href="operationBoardList.do?page=${p2 }">
				${p2 }
			</a>
			&nbsp;&nbsp;
		</c:when>
		<c:otherwise>
			[${p2}]&nbsp;&nbsp;
		</c:otherwise>
	</c:choose>
</c:forEach>
<!-- 
	다음페이지 그룹으로 이동
	만약에 다음페이지 그룹이 있으면 링크 처리 없으면 화살표만 나오도록 처리
 -->
<c:choose>
	<c:when test="${requestScope.pageBeanoperator.nextPageGroup }">
		<a href="operationBoardList.do?page=${requestScope.pageBeanoperator.endPage+1 }">
			▶&nbsp;&nbsp;		
		</a>
	</c:when>
	<c:otherwise>
		▶&nbsp;&nbsp;
	</c:otherwise>
</c:choose>

<!-- 마지막 페이지로 이동 -->
<a href='operationBoardList.do?page=${requestScope.pageBeanoperator	.totalPage}'>
	▷
</a>	
</p>

<br><br>

</html>