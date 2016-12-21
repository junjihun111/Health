
<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/HealthJJang/scripts/jquery.js"></script>
<script>
$(document).ready(function(){
	
	$("#MemberForm").hide();
	$("#Form").hide();
	$("#yes").on("click",function(){
		$("#Form").hide();
		$("#MemberForm").show();
	});
	$("#not").on("click",function(){
		$("#MemberForm").hide();
		$("#Form").show();
	});
});
function error(){ //member 요소
  var memberNo = $("#memberNo").val();
	var phoneEnd = $("#phoneEnd").val();
	var cart = "${requestScope.cart}";
	if(cart != ""){
		$("#MemberForm").append("<input type='hidden' name='cart' value='cart'>");
	}
	var errorMessage = "";
	if(memberNo ==""){
		errorMessage = errorMessage + "<span style='color:red;font-size:small'>회원번호를 입력하세요</span><br>";
	}
	if(phoneEnd == ""){
		errorMessage = errorMessage + "<span style='color:red;font-size:small'>핸드폰번호를 입력하세요</span>";
	}
	if(errorMessage == ""){
		return true;
	}else{
		$("#errordiv").html(errorMessage);
		$("#errordiv").show();
		return false;
	}
}
function error2(){ //비회원 요소
	var password = $("#password").val();
	var orderName = $("#orderName").val();
	var errorMessage = "";
	var cart = "${requestScope.cart}";
	if(cart != ""){
		$("#Form").append("<input type='hidden' name='cart' value='cart'>");
	}
	if(password == ""){
		errorMessage = errorMessage+"<span style='color:red;font-size:small'>비밀번호를입력하세요.</span><br>";
	}
	if(orderName ==""){
		errorMessage = errorMessage+"<span style='color:red;font-size:small'>이름을입력하세요.</span>";
	}
	if(errorMessage == ""){
		
		return true;
	}else{
		$("#errordiv").html(errorMessage);
		$("#errordiv").show();
		return false;
	}
	
}
$(document).ready(function(){
	var error = "${requestScope.errorMessage1}";
	

	if(error != ""){
		$("#list").html("<span style='color: blue;font-size: large;'>등록된 물품이없습니다 물품을 추가하세요.</span>");
	}
	
});
</script>
<style>
#list{
 	text-align: center;
}
.center{
width: 400px; position: absolute; left: 50%; margin-left: -200px;
}
</style>
<div class="center">
<div id="list">
<span style="color:red;font-size:small;">헬스클럽 회원이 아닐경우 주문을 해야<br> 장바구니,주문조회가 사용가능합니다.</span>
<h2>비밀번호를 입력하세요</h2>
<strong>회원이십니까?</strong>
<div id="errordiv"></div>
<input type="radio" name="memberCheck" id="yes" >예
<input type="radio" name="memberCheck" id="not"> 아니요

<form id="MemberForm" action="/HealthJJang/memberCheck.do" onsubmit="return error();"> 
<!--<div class="form-group">
      <label class="sr-only" for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email">
    </div>  -->
<br>회원 번호 :<br> <input class="form-control" type='text' id="memberNo" name='memberNo'><br>핸드폰 뒷자리 : <input class="form-control" type='password' id="phoneEnd" name='memberPhoneEnd'><br><div style="text-align: right;">
<input class="btn btn-default"  type='submit' value='전송'>
</div>
</form>
<form id="Form" action="/HealthJJang/memberCheck.do" onsubmit="return error2();">
비밀번호를 입력하세요 : <br><input class="form-control" type='password' id='password' name='password'><br>이름 : <input type='text' class="form-control" id="orderName" name="orderName"><br>
<div style="text-align: right;">
<input class="btn btn-default"  type='submit' value='전송'>
</div>
</form>
<c:if test="${requestScope.errorMessage != null }">
<span style="font-size:small;color:red;">${requestScope.errorMessage}</span>
</c:if>
</div>
</div>