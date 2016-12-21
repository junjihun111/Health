<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

#tablelist {
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
	background: #BDBDBD;
	text-align: center;
}

#bodylisttd
{
	background: #BDBDBD;
	text-align: center;
}

</style>
</head>
<body>
<link href="/HealthJJang/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="/HealthJJang/bootstrap/js/bootstrap.js"></script>

<script type="text/javascript" src="/HealthJJang/scripts/jquery.js"></script>

<jsp:include page="/WEB-INF/view/body/boardmenu.jsp"/>

<caption id="list"><span id="list"><h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;BOARD</h2></span></caption>
<br>
<br>
<table id="tablelist" class="table table-striped">
			<tr id="aa" align="center">
				<th width=70 height=50 id="listth" align="center"><h2></h2></th>
				<th width=500 height=50 align="center"><h2>제목</h2></th>
				<th width=200 height=50 align="center"><h2>&nbsp;&nbsp;&nbsp;&nbsp;게시일</h2></th>
				<th width=150 height=50 align="center"><h2>조회수</h2></th>
				<th width=150 height=50 align="center"><h2>작성자</h2></th>
			</tr>

	<tbody>
		<c:forEach items="${sessionScope.BoardList}" var="board" varStatus="cnt">
		<tr>
			<td id="bodylisttd" height="30"><h5>${board.board_no}</h5></td>
			<td><h5><a href="insertList.do?page=${board.board_no }">${board.board_name}</a></h5></td>
			<td align="center"><h5><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${board.board_date}"/></h5></td>
			<td align="center"><h5>${board.board_count}</h5></td>
			<td align="center"><h5>${board.board_writer}</h5></td>
		</tr>
	</c:forEach>
	</tbody>
</table>
<br>
	<span id="insert"><a href='insert.do'><button id="insert" class="btn btn-primary">글 등록</button></a>&nbsp;&nbsp;</span>
	<!-- 관리자 전용메뉴 <a href='Board/delete.do'>글 삭제</a>&nbsp;&nbsp; -->
</body>

<div id="paging">
<p>
	<!-- 첫페이지로 이동 -->
	<a href="BoardList.do?page=1">
		◁&nbsp;&nbsp;
	</a>
	<!--
		이전 페이지 그룹 처리.
		만약에 이전페이지 그룹이 있으면 링크처리하고 없으면 화살표만 나오도록 처리.
	 -->
 <c:choose>
 	<c:when test="${requestScope.pageBean.previousPageGroup }">
 		<a href="BoardList.do?page=${requestScope.pageBean.beginPage-1 }">
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
<c:forEach begin="${requestScope.pageBean.beginPage }" end="${requestScope.pageBean.endPage }"
			   var="p">
	<c:choose>
		<c:when test="${p != requestScope.pageBean.page }">
			<a href="BoardList.do?page=${p }">
				${p }
			</a>
			&nbsp;&nbsp;
		</c:when>
		<c:otherwise>
			[${p}]&nbsp;&nbsp;
		</c:otherwise>
	</c:choose>
</c:forEach>
<!-- 
	다음페이지 그룹으로 이동
	만약에 다음페이지 그룹이 있으면 링크 처리 없으면 화살표만 나오도록 처리
 -->
<c:choose>
	<c:when test="${requestScope.pageBean.nextPageGroup }">
		<a href="BoardList.do?page=${requestScope.pageBean.endPage+1 }">
			▶&nbsp;&nbsp;		
		</a>
	</c:when>
	<c:otherwise>
		▶&nbsp;&nbsp;
	</c:otherwise>
</c:choose>

<!-- 마지막 페이지로 이동 -->
<a href='BoardList.do?page=${requestScope.pageBean.totalPage}'>
	▷
</a>	
</p>
</div>

<form action="namefind.do" id="namefind" class="form-inline">
	<div class="form-group"> 
	<input type="hidden" name="page" value="1">
	<label for="namefind">제목으로찾기</label><input type="text" id="Boardnamefind" name="Boardnamefind" class="form-control ":focus:disabled>
	
	<input TYPE="image" src="gallery/find.JPG" name="Submit" value="submit" align="absmiddle">
	
	</div>
</form>
<br>
<form action="passwordfind.do" id="passwordfind" class="form-inline">
	<div class="form-group">
	<input type="hidden" name="page" value="1" src="">
	<label for="writerfind">작성자로 찾기</label> <input type="text" id="Boardpasswordfind" name="Boardpasswordfind" class="form-control ":focus:disabled>
	

	<input TYPE="image" src="gallery/find.JPG" name="Submit" value="submit" align="absmiddle">
	
	</div>
</form>
<br>

</html>