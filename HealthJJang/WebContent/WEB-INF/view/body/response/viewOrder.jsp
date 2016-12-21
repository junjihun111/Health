
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript" src="/HealthJJang/scripts/jquery.js"></script>
<script>
	function logout() {
		location.href = "/HealthJJang/logout.do";
	}
	
	$(document).ready(function(){
		var message = "${requestScope.order == [] }";
		alert(message);
		$(".target").on(
				"click",
				function() {
					
					location.href = "/HealthJJang/ViewOneOrder.do?no="
							+ $(this).children().eq(0).text();

				});
	});
	
</script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<c:choose>
	<c:when test="${requestScope.order == null}">
		<span style="color: blue; font-size: large;">등록된 제품이없습니다.</span>
	</c:when>
	<c:otherwise>
		<c:choose>
			<c:when test="${sessionScope.member == null}">
				<div class="row">
					<div class="container"></div>
					${sessionScope.ordername} 님의 주문 목록입니다.
					<div id="list" class="table-responsive">
						<table class="table table-hover" style="text-align: center;">
							<c:choose>
							<c:when test="${ empty requestScope.order}">
							<span style="color:blue;font-size: large;">물품을 담으세요</span>
							</c:when>
							<c:otherwise>
							<thead>
								<tr>
									<td>주문번호</td>
									<td>제품사진</td>
									<td>제품이름</td>
									<td>수량</td>
									<td>주문상태</td>
								</tr>
							</thead>
							</c:otherwise>
							</c:choose>
							<tbody>
								<c:forEach items="${requestScope.order}" var="item">
									<tr class="target">
										<td style="text-align: center;"><span
											class="center-block" style="margin-top: 75px;">${item.orderationNo}</span></td>

										<c:forEach items="${item.orderation}" var="inItem">
											<td style="text-align: center;"><img
												alt="물품 ${inItem.productName}" height="150px;"
												src="/HealthJJang/ect/${inItem.imageName}"></td>
											<td style="text-align: center;"><span
												class="center-block" style="margin-top: 75px;"><a
													href="/HealthJJang/ViewOneOrder.do?no=${item.orderationNo}">${inItem.productName }</a></span></td>
										</c:forEach>
										<td style="text-align: center;"><span
											class="center-block" style="margin-top: 75px;">${item.ordererCount }</span></td>
										<c:forEach items="${item.orderation}" var="inItem">
											<c:choose>
												<c:when test="${inItem.code =='G' }">
													<td style="text-align: center;"><span
														class="center-block" style="margin-top: 75px;">배송전</span></td>
												</c:when>
												<c:when test="${inItem.code =='H' }">
													<td style="text-align: center;"><span
														class="center-block" style="margin-top: 75px;">배송시작</span></td>
												</c:when>
												<c:when test="${inItem.code =='I' }">
													<td style="text-align: center;"><span
														class="center-block" style="margin-top: 75px;">배송중</span></td>
												</c:when>
												<c:when test="${inItem.code =='J' }">
													<td style="text-align: center;"><span
														class="center-block" style="margin-top: 75px;">배송완료</span></td>
												</c:when>
											</c:choose>

										</c:forEach>
									</tr>

								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</c:when>
			<c:otherwise>
				<div class="row">
					<div class="container"></div>
				
					${sessionScope.member.memberName } 님의 주문 목록입니다.
					<div id="list" class="table-responsive">
						<table class="table table-hover">
							<thead>
								<tr>
									<td>주문번호</td>
									<td>제품사진</td>
									<td>제품이름</td>
									<td>수량</td>
									<td>주문상태</td>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${requestScope.order}" var="item">
									<tr class="target">
										<td>${item.orderationNo}</td>

										<c:forEach items="${item.orderation}" var="inItem">
											<td><img height="150px" alt="물품 ${inItem.productName}"
												src="/HealthJJang/ect/${inItem.imageName}"></td>
											<td style="text-align: center;"><span
												class="center-block" style="margin-top: 75px;"><a
													href="/HealthJJang/ViewOneOrder.do?no=${item.orderationNo}">${inItem.productName }</a></span></td>
										</c:forEach>
										<td style="text-align: center;"><span
											class="center-block" style="margin-top: 75px;">${item.ordererCount }</span></td>
										<c:forEach items="${item.orderation}" var="inItem">
											<c:choose>
												<c:when test="${inItem.code =='G' }">
													<td style="text-align: center;"><span
														class="center-block" style="margin-top: 75px;">배송전</span></td>
												</c:when>
												<c:when test="${inItem.code =='H' }">
													<td style="text-align: center;"><span
														class="center-block" style="margin-top: 75px;">배송시작</span></td>
												</c:when>
												<c:when test="${inItem.code =='I' }">
													<td style="text-align: center;"><span
														class="center-block" style="margin-top: 75px;">배송중</span></td>
												</c:when>
												<c:when test="${inItem.code =='J' }">
													<td style="text-align: center;"><span
														class="center-block" style="margin-top: 75px;">배송완료</span></td>
												</c:when>
											</c:choose>

										</c:forEach>
									</tr>

								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</c:otherwise>
		</c:choose>

	</c:otherwise>
</c:choose>

<button onclick="logout()"  class="btn btn-danger">로그아웃</button>

