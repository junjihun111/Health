
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/HealthJJang/scripts/jquery.js"></script>
<script>
$(document).ready(function(){
	var password = "${sessionScope.member.memberNo}";
	if(password == ""){
		password = "${sessionScope.password}";
	}
	
	
	$("#deleteBtn").on("click",function(){
		
	});

});

</script>

<c:choose>
<c:when test="${sessionScope.member == null }">
${sessionScope.ordername }님 장바구니 정보입니다.
</c:when>
<c:otherwise>
${sessionScope.member.memberName}님 장바구니 정보입니다.
</c:otherwise>
</c:choose>
<c:if test="${requestScope.errorMessage != null }">
<span style="color:red;font-size:small;">${requestScope.errorMessage}</span>
</c:if>
<form action="/HealthJJang/deleteCart.do">
<button id="deleteBtn" class="btn btn-danger">물품삭제</button>
<div class="row">
<div class="container"></div>
<div class="table-responsive">
<table class="table table-hover" style="text-align: center;">
<thead>
<tr >
<th style="text-align: center;">제품 사진</th>
<th style="text-align: center;">제품 이름</th>
<th style="text-align: center;">제품 번호</th>
<th style="text-align: center;">제품 가격</th>
<th style="text-align: center;">제품 수량</th>
</tr>
</thead>
<tbody>
<c:choose>
<c:when test="${empty requestScope.cart}">
<td colspan="5"><span style="color:blue;font-size: large;">장바구니가 비어있습니다.</span></td>
</c:when>
<c:otherwise>
<c:forEach items="${requestScope.cart }" var="basket">
<label for="check">
<tr>
<td style="text-align: center;"><c:forEach items ="${basket.product }" var="item">
<img alt="물품" src="/HealthJJang/ect/${item.imageName}"></td>
<td style="text-align: center;"><span class="center-block" style="margin-top: 75px;"><a href="/HealthJJang/ViewOne.do?no=${item.productNo}">${item.productName }</a></span></td>

</c:forEach>
<td style="text-align: center;"><span class="center-block" style="margin-top: 75px;">${basket.productNo }</span></td>
<c:forEach items = "${basket.product }" var="item">
<td style="text-align: center;"><span class="center-block" style="margin-top: 75px;">${item.productPrice }</span></td>
<td style="text-align: center;"><span class="center-block" style="margin-top: 75px;">${item.productAmount }</span></td>
</c:forEach>

<td style="text-align: center;"><input type="checkbox" id="check" name="productNo" value="${basket.productNo }"></td>
</tr>
</label>

</c:forEach>
<c:choose>
<c:when test="${sessionScope.member == null }">
<input type="hidden" name="password" value="${sessionScope.password }">
</c:when>
<c:otherwise>
<input type="hidden" name="password" value="${sessionScope.member.memberNo }">
</c:otherwise>
</c:choose>
</c:otherwise>
</c:choose>
</tbody>
</table>
</div>
</div>
</form>