
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/HealthJJang/scripts/jquery.js"></script>
<script>
$(document).ready(function(){
	
	$("#deleteBtn").on("click",function(){
		var no ="${requestScope.orderation.orderationNo}";
		location.href="/HealthJJang/deleteOrderation.do?orderationNo="+no;
		
	});
	$("#update").on("click",function(){
		var no ="${requestScope.orderation.orderationNo}";
		location.href="/HealthJJang/updateOrderation.do?orderationNo="+no;
		
	});
	
	
});
</script>
<style>
table {
    width: 100%;
    height:100%;
    border-collapse: collapse;
  }
  th, td {
    border: 1px solid #bcbcbc;
    text-align: center;
    padding: 5px;
  }
</style>
<div class="container"></div>
<div id="list" class="table-responsive">

<table class="table table-hover">
	<thead>
		<c:choose>
		<c:when test="${requestScope.orderation != '' }">
		<tr >
			<th >제품사진</th>
			<th>제품이름</th>
			<th>주문자이름</th>
			<th>연락처</th>
			<th>주소</th>
			<th>우편번호</th>
			
			<th>가격</th>
			<th>수량</th>
			<th>주문상태</th>
			<c:if test="${requestScope.amount != null }">
			<th>제품 총개수</th>
			</c:if>
		</tr>
		</c:when>
		<c:when test="${requestScope.ordertaion == null }">
		<span style="color:blue;font-size: large;">물품을 담으세요</span>
		
		</c:when>
		</c:choose>
		
	</thead>
	<tbody>
		<tr>
			<td style="text-align: center;"><img alt="물품 ${requestScope.orderation.productName}"
		src="/HealthJJang/ect/${requestScope.orderation.imageName}"></td>
			<td style="text-align: center;"><span class="center-block" style="margin-top: 75px;">${requestScope.orderation.productName}</span></td>
			<td style="text-align: center;"><span class="center-block" style="margin-top: 75px;">${requestScope.orderation.buyerName }</span></td>
			<td style="text-align: center;"><span class="center-block" style="margin-top: 75px;">${requestScope.orderation.phone1} - ${requestScope.orderation.phone2} - ${requestScope.orderation.phone3}</span></td>
			<td style="text-align: center;"><span class="center-block" style="margin-top: 75px;">${requestScope.orderation.orderationAddress}</span></td>
			<td style="text-align: center;"><span class="center-block" style="margin-top: 75px;">${requestScope.orderation.postalNumber }</span></td>
			<td style="text-align: center;"><span class="center-block" style="margin-top: 75px;">${requestScope.orderation.orderationPrice }원</span></td>
			<td style="text-align: center;"><span class="center-block" style="margin-top: 75px;">${requestScope.orderation. productAmount}개</span></td>
			<td style="text-align: center;"><span class="center-block" style="margin-top: 75px;"><c:choose><c:when test="${requestScope.orderation.code =='G' }"> 배송전</c:when>
			<c:when test="${requestScope.orderation.code == 'H' }">배송시작</c:when>
			<c:when test="${requestScope.orderation.code == 'I' }">배송중</c:when>
			<c:when test="${requestScope.orderation.code == 'J' }">배송완료</c:when>
			</c:choose>
			</span>
			</td>
			<c:if test="${requestScope.amount != null }">
			<td style="text-align: center;">${requestScope.amount }</td>
			</c:if>
		</tr>

	</tbody>
</table >
</div>
<br>

<button id="update">수정</button>
&nbsp;&nbsp;&nbsp;<button id="deleteBtn">삭제</button>

