<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
<script src="//cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
<style type="text/css">

.section {
	
	
}

#title {
	font-weight: bold;
	padding: 10px;
}

#info {
	font-size: 13px;
	border-bottom: 1px dotted gray;
	padding-top: 15px;
	padding-right: 5px;
	padding-bottom: 10px;
	text-align: right;
}

#content {
	min-height: 300px; /*최소 높이 300px*/
	height: auto; /*자동으로 늘어나기*/
	padding: 10px;
}
</style>
<script type="text/javascript" src="/HealthJJang/scripts/jquery.js"></script>
<script>

var errorMessage = "";
	var code = "${requestScope.result.item.productCode}";
	var error = "${requestScope.Oerror}";
	/* $(window).load(function(){
	    alert('ojtiger.com');
	}); */
	function errors(){
		var amount = "${requestScope.result.item.productAmount}";
		
		
		if(amount <=0){
			alert(amount)
			errorMessage = errorMessage+"<span style='color: red;font-size: small;'>품절되었습니다.</span><br>";
		
		}
		
		if($("#memberCheckYes").is(":checked")){
			if($("#phoneNo").val() == ""){
				errorMessage = errorMessage+"<span style='color: red;font-size: small;'>비밀번호를 입력하세요</span><br>";
			}	
			if($("#No").val() == ""){
				errorMessage = errorMessage+"<span style='color: red;font-size: small;'>회원번호를 입력하세요</span><br>";
			}
			
				
			
		}
		if(errorMessage == ""){
			return true;
		}
		
		$("#error").html(errorMessage);
		$("#error").show();
		errorMessage = "";
		return false;
		
	}
	
	$(document).ready(function(){
		
		    
		
		    
		var message = "${requestScope.message}";
		if(message !=""){
			alert(message);
		}
	 	$("#colorForm").hide();
	 	$("#sizeForm").hide();
		$("#memberCheckForm").hide();
		$("#error").hide();
		$("#shoppingbasket").on("click",function(){
			
		$("#orderForm").attr("action","/HealthJJang/addShoppingCart.do");
		
		});
			
		
		if(error != ""){
			errorMessage = errorMessage+"<span style='color: red;font-size: small;'>"+error+"</span><br>";
			$("#error").html(errorMessage);
			$("#error").show();
			errorMessage = "";
		}
		
		var price = "${requestScope.result.item.productPrice}";
		
		var no = "${requestScope.result.item.productNo}";
		
		
		var hidden = $("#hidden").html();
	
		
		$("#memberCheckYes").on("click",function(){
				$("#memberCheckForm").show();
			
			
			
			
		});
		$("#memberCheckNo").on("click",function(){
			$("#memberCheckForm").hide();
		});
	
		if(code == "D"){//P_01 = 운동기구 02 운동복 03 영양제
			$("#colorForm").show();
 		}else if(code == "E"){
 			$("#colorForm").show();
 			$("#sizeForm").show();
 		}
		$("#amount").on("keyup",function(){
			var amount = this.value;
			var pAmount = "${requestScope.result.item.productAmount}";
			var price = "${requestScope.result.item.productPrice}";
			var maxSum = pAmount*price;
			
			
			if(this.value==""||this.value=="0"){
				alert("수량을 1개 이상 선택하세요");
				this.value = 1;
				amount = 1;
			}
			
			if(amount*price > maxSum){
				alert("최대 주문가능 수량은"+pAmount+"개 입니다.");
				$("#price").text(price*1+" 원");
				this.value = 1;
			}else{
				$("#price").text(price*amount+" 원");
			
			}
			
			
			
		});
		$("#amount").on("click",function(){
			var amount = this.value;
			var pAmount = "${requestScope.result.item.productAmount}";
			var price = "${requestScope.result.item.productPrice}";
			var maxSum = pAmount*price;
			
			if(this.value==""||this.value=="0"){
				alert("수량을 1개 이상 선택하세요");
				this.value = 1;
				amount = 1;
			}
			
			if(amount*price > maxSum){
				alert("최대 주문가능 수량은"+pAmount+"개 입니다.");
				$("#price").text(price*1+" 원");
				this.value = 1;
			}else{
				$("#price").text(price*amount+" 원");
				
			}
		});
			
		
		
 	});
	window.onload = function(){
	
	    var val = $("#value").text();
		$("#hidden").append("<input type='hidden' name='price' value="+val+">");
		}
	
	
</script>
<section style="width:1000px; text-align: center;">

	<form name="orderForm" style="text-align: center;" id="orderForm" action="/HealthJJang/OrderForm.do?code=${requestScope.result.item.productCode}&&productNo=${requestScope.result.item.productNo}" onsubmit="return errors()">
	<div id="hidden">
	<input type="hidden" name="productNo" value="${requestScope.result.item.productNo}">
	<input type="hidden" name="code" value="${requestScope.result.item.productCode }">
	<input type="hidden" name="productName" value="${requestScope.result.item.productName}">
	</div>
	<table class="table">
	<tr>
	<td><img alt="물품 ${requestScope.result.item.productName}"
		src="/HealthJJang/ect/${requestScope.result.item.imageName}"></td>
	<td>${requestScope.result.item.productName}<br></td>
	<%-- <fmt:parseNumber value="${requestScope.result.item.productPrice*0.8}" integerOnly="true"></fmt:parseNumber> --%>
	</tr>
	<tr>

	<td rowspan="5"><button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo">물품 설명</button>
  
  <div id="demo" class="collapse">
		<p>${requestScope.result.item.productExplain }</p>
  
   <c:if test="${requestScope.result.item.imageComment != null}">

  
   <img width="600px;" alt="물품 ${requestScope.result.item.productName}"
		src="/HealthJJang/ect/${requestScope.result.item.imageComment}">
	
		</c:if>
<c:if test="${requestScope.result.item.imageComment2 != null}">
   <img width="600px;" alt="물품 ${requestScope.result.item.productName}"
		src="/HealthJJang/ect/${requestScope.result.item.imageComment2}">
		<br>
		</c:if>
	<c:if test="${requestScope.result.item.imageComment3 != null}">
   <img width="600px;" alt="물품 ${requestScope.result.item.productName}"
		src="/HealthJJang/ect/${requestScope.result.item.imageComment3}">
		
		</c:if>
		<br>
		<c:if test="${requestScope.result.item.imageComment4 != null}">
   <img width="600px;" alt="물품 ${requestScope.result.item.productName}"
		src="/HealthJJang/ect/${requestScope.result.item.imageComment4}">
		</c:if>
		</div>
		
		
  </td>
	<td><section id="price" class="section" style="padding: 10px;"><span id="value">${requestScope.result.item.productPrice}</span>원</section>
	<br>
		</td>
		</tr>
		<tr>
<td width="150px;">	
	 <c:choose>
	 <c:when test="${sessionScope.member.memberNo ==null }">
	 회원이십니까? <br> 
	 <input
		type="radio" id="memberCheckYes" name="memberCheck" value="yes" >예 &nbsp; <input
		type="radio" id="memberCheckNo" name="memberCheck" value="no">아니요 <br>
		<div id="memberCheckForm">
		 
		회원 카드번호 : <input type="text" name="memberNumber" id="No" size="7" ><br>
		회원 핸드폰 뒷자리번호 : <input type="password" name="phoneEnd" id="phoneNo"  onkeypress="if (event.keyCode<48|| event.keyCode>57)  event.returnValue=false;" 
             size="4" style='IME-MODE:disabled;'>
		</div>
		</c:when>
		<c:otherwise>
		회원 카드번호 : <input type="text" name="memberNumber" id="No" readonly="readonly" value="${sessionScope.member.memberNo }" style="background: #A4A4A4;" >
	     핸드폰 뒷자리번호 : <input type="text" name="phoneEnd" id="phoneNo" readonly="readonly" value="${sessionScope.member.memberPhoneEnd }" style="background: #A4A4A4;">
		</c:otherwise>
		</c:choose>
		물품수량<input type="number" id="amount" name="amount" min="1" value="1" step="1" style="width: 30px;height: 30px;">개
	<div id="colorForm">
		물품색상
		<select>
		<c:forEach items="${requestScope.result.colorList}" var="color">
			<option>${color.colorName}</option>
      </c:forEach>
      </select>
	</div>
	<div id="sizeForm">
		사이즈 <select> 
			<option>XS</option>
			<option>S</option>
			<option>M</option>
			<option>L</option>
			<option>XL</option>
			</select>
	</div>
	<input style="margin-top: 10px;" type="submit" value="구매" class="btn btn-info"> <button style="margin-top: 10px;" class="btn btn-info" id="shoppingbasket" >장바구니</button>
	</td>
	</tr>
	<tr>
	
	
<c:if test="${sessionScope.admin !=null }">
<a href="/HealthJJang/updateProductForm.do?tproductNo=${requestScope.result.item.productNo }">수정하기</a>
<a href="/HealthJJang/deleteProduct.do?tProductNo=${requestScope.result.item.productNo }&code=${requestScope.result.item.productCode}">삭제하기</a>
</c:if>

</tr>

</table>
</form>
</section>

<div id="error">

</div>

<%-- 	<article id="content">${requestScope.notice.content }</article>
 --%>
<%-- <p>

<a href="${initParam.rootPath }/controller?command=noticeModifyForm&no=${requestScope.notice.no}&page=${param.page}">공지사항수정</a>&nbsp;&nbsp;&nbsp;
<a href="${initParam.rootPath }/controller?command=noticeRemove&no=${requestScope.notice.no}&page=${param.page}">공지사항삭제</a>
</p> --%>
