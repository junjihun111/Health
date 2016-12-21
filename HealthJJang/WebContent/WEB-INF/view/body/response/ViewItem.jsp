<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
/* table 스타일 처리  */

table, td, th {
	border: 1px solid gray;
}

table {
	border-collapse: collapse;
	width: 650px
}

th, td {
	padding: 5px;
}

#image {
	height: 50px;
	width: 50px;
}
a:link {text-decoration: none; color: blue;}
a:visited {text-decoration: none; color: blue;}
a:active {text-decoration: none; color: blue;}
a:hover {text-decoration: underline; color: red;}

</style>
<script type="text/javascript" src="/HealthJJang/scripts/jquery.js"></script>
<script>
$(document).ready(function(){
	var error = "${requestScope.errorMessage}";
	$(".hide").hide();

	if(error != ""){
		$("#list").html("<span style='color: blue;font-size: large;'>등록된 물품이없습니다 물품을 추가하세요.</span>");
	}
	$(".target").on("click",function(){
		
		location.href="/HealthJJang/ViewOne.do?no="+$(this).children().eq(1).text();
		
	});
});
</script>
<h2>물품 리스트</h2>
<div class="container"></div>
<div id="list" class="table-responsive">


<table class="table table-hover" >
	<tbody>
		<c:forEach items="${requestScope.result.list}" var="item">
			<tr class="target" >
				<td  id="image" height="150px"><img alt="물품 ${item.productName}"
					src="/HealthJJang/ect/${item.imageName}"></td>
				<td class ="hide"style="text-align: center;"><span class="center-block" style="margin-top: 75px;">${item.productNo}</span></td>
				<td style="text-align: center;"><span class="center-block" style="margin-top: 75px;"><a style="color: black;" href="/HealthJJang/ViewOne.do?no=${item.productNo}">${item.productName }</a></span></td>
				<td style="text-align: right;" ><span class="center-block" style="margin-top: 75px;"> ${item.productPrice}원</span></td>
			</tr>
			<input type="hidden" class="hidden" value="${item.productNo}">
		</c:forEach>
	</tbody>
</table>
<p>
<a href="/HealthJJang/ViewList.do?page1=1&&code=${requestScope.result.code}">◁</a>&nbsp;&nbsp;
	<c:choose>
		<c:when test="${requestScope.result.pageBean.previousPageGroup}">
			<a
				href="/HealthJJang/ViewList.do?page1=${requestScope.result.pageBean.beginPage -1}&&code=${requestScope.result.code}">
				◀ </a>
		</c:when>
		<c:otherwise>◀</c:otherwise>
	</c:choose>
	<c:forEach begin="${requestScope.result.pageBean.beginPage}"
		end="${requestScope.result.pageBean.endPage}" var="page">
		
		<c:choose>
			<c:when test="${page == requestScope.result.pageBean.page}">
[${page}]
</c:when>
			<c:otherwise>
				<a href="/HealthJJang/ViewList.do?page1=${page}&&code=${requestScope.result.code}"> ${page}</a>
			</c:otherwise>
		</c:choose>
		&nbsp;&nbsp;
	</c:forEach>
	<c:choose>
	<c:when test="${requestScope.result.pageBean.nextPageGroup }">
		<a href="/HealthJJang/ViewList.do?page1=${requestScope.result.pageBean.endPage + 1}&&code=${requestScope.result.code}">
		▶
		</a>&nbsp;&nbsp;
	</c:when>
	<c:otherwise>▶&nbsp;&nbsp;</c:otherwise>
</c:choose>

<%--마지막 페이지로 이동 --%>
<a href="/HealthJJang/ViewList.do?page1=${requestScope.result.pageBean.totalPage}&&code=${requestScope.result.code}">▷</a>

</div>