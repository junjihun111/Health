
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript" src="/HealthJJang/scripts/jquery.js"></script>
<script>
$(document).ready(function(){
	var error = "${requestScope.errorMessage}";
	$(document).on("click",".button",function(){
		var code = $(this).attr("value");
		$("#list").append("<input type='hidden' name='code' value="+code+">");
	});

	if(error != ""){
		$("#list").html("<form name='myForm' id='list' action='/HealthJJang/updateCode.do' ><button class='button btn btn-success'  value='H'>배송시작 변경</button><button class='button btn btn-success'  value='I' >배송중 변경</button><button class='button btn btn-success'  value='J' >배송완료 변경</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button class='button btn btn-info' value='VG'>배송전 조회</button><button class='button btn btn-info' value='VH'>배송시작 조회</button><button class='button btn btn-info' value='VI'>배송중 조회</button><button class='button btn btn-info' value='D'>배송완료 삭제</button><br><span style='color: blue;font-size: large;'>등록된 물품이없습니다 물품을 추가하세요.</span>");
	}

	
});

</script>
<form name='myForm' id='list' action='/HealthJJang/updateCode.do' >
<button class='button btn btn-success'  value='H'>배송시작 변경</button>
<button class='button btn btn-success'  value='I' >배송중 변경</button>
<button class='button btn btn-success'  value='J' >배송완료 변경</button>
 
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <button class='button btn btn-info' value='VG'>배송전 조회</button>
 <button class='button btn btn-info' value='VH'>배송시작 조회</button>
 <button class='button btn btn-info' value='VI'>배송중 조회</button>
 <button class='button btn btn-info' value='D'>배송완료 삭제</button>
 

 

<div class="center-block">
						<c:choose>
	<c:when test="${requestScope.order == null}">
		<span style="color: blue; font-size: large;">등록된 제품이없습니다.</span>
	</c:when>
	<c:otherwise>
		
			
				<div class="row">
					<div class="container"></div>
					<div id="list" class="table-responsive">
						<table class="table table-hover" >
							<c:choose>
							<c:when test="${ empty requestScope.order}">
							<span style="color:blue;font-size: large;">물품을 담으세요</span>
							</c:when>
							<c:otherwise>
							<thead>
								<tr >
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
										<td><input type="checkbox" id="orderationNo" name="orderationNo" value="${item.orderationNo}"></td>
										</c:forEach>
									</tr>

								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
				
				</c:otherwise>
				</c:choose>
					</div>
			
</form>