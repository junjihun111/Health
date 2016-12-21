<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
input[type=checkbox]
{
  /* Double-sized Checkboxes */
  -ms-transform: scale(1.5); /* IE */
  -moz-transform: scale(1.5); /* FF */
  -webkit-transform: scale(1.5); /* Safari and Chrome */
  -o-transform: scale(1.5); /* Opera */

}
</style>
<script type="text/javascript" src="/HealthJJang/scripts/jquery.js"></script>
<script>
	
$(document).ready(function(){
	$("#formDiv").hide();
	$("#colorFrom").hide();
	$("#error").hide();
	$("#sizeForm").hide();
	/* $("#categoryForm").hide(); */
	$("#productSelect").on("change",function(){
		
		
		if(this.value >= 1){
			$("#formDiv").show();
			if(this.value == 1){ /* frame = 0 이면 운동기구 
											1 이면 운동복
											2 면 영양제
									*/
				$("#category option:eq(1)").prop("selected", true);
				$("#sizeForm").hide();
				$('input[name="frame"]').val(this.value);
				$("#colorFrom").show();
			}else if(this.value == 2){
				$("#category option:eq(2)").prop("selected", true);
				$("#colorFrom").show();
				$('input[name="frame"]').val(this.value);
				
				$("#sizeForm").show();
			}else{
				$("#category option:eq(3)").prop("selected", true);
				$("#colorFrom").hide();
				$('input[name="frame"]').val(this.value);
				$("#sizeForm").hide();
			}
		}else{
			$("#formDiv").hide();
			$("#category option:eq(0)").prop("selected", true);
		}
	});
});

function error(){
	var errorMessage = "";

	if($("#productName").val() == ""){
		errorMessage = errorMessage+"<span id='nameError' style='color: red;font-size: small;'>이름을 입력하세요</span><br>";
	
	}
	if($("#image").val() == ""){
		errorMessage = errorMessage+"<span id='fileError' style='color: red;font-size: small;'>파일을 선택하세요</span><br>";
	
	}
	if($("#category option:selected").val()==0){
		errorMessage = errorMessage+"<span id='categoryError' style='color: red;font-size: small;'>카테고리를 선택하세요</span><br>";

	}
	

	if($("#category option:selected").val() == 1){
		
		if( $("#color:checked").length < 3 ){
			
			errorMessage = errorMessage+"<span id='colorError' style='color: red;font-size: small;'>3개이상 색상을 선택하세요</span><br>";
		
		}
		if($("#size:checked").length < 1){
			errorMessage = errorMessage+"<span id='sizeError' style='color: red;font-size: small;'>1개이상 사이즈를 선택하세요</span><br>";
		
		}
	}
	if($("#productSelect option:selected").val()== 2){
		if( $("#color:checked").length < 3 ){
			errorMessage = errorMessage+"<span id='colorError' style='color: red;font-size: small;'>3개이상 색상을 선택하세요</span><br>";
		
		}
	}
	if($("#comment").val() == ""){
		errorMessage = errorMessage+"<span id='exError' style='color: red;font-size: small;'>물품 설명을 입력하세요</span><br>";
		
	 }
	if($("#amount").val() == 0 || $("#amount").val == ""){
		errorMessage = errorMessage+"<span style='color: red;font-size: small;'>물품 수량을 입력하세요</span><br>";
	}
	if($("#price").val() == 0 || $("#price").val == ""){
		errorMessage = errorMessage+"<span style='color: red;font-size: small;'>물품 가격을 입력하세요</span><br>";
	}
	 if($("#price").val() <5000){
		errorMessage = errorMessage+"<span style='color: red;font-size: small;'>물품 가격을 5000원이상 입력하세요</span><br>";
	} 
	if(errorMessage == ""){
		return true;
	}else{
		$("#error").html(errorMessage);
		$("#error").show();
		return false;
	}
}



</script>
<style>
#formDiv{
width:500px; margin:0 auto;
}

#productSelectlist
{
   width: 14%;
   margin-left: 20%;
}

</style>
<br><br>
<div id="productSelectlist">
<select id="productSelect" class="form-control">
<option value="0">카테고리를 선택하세요</option>
	<c:forEach items="${requestScope.codeList}" var="code" varStatus="no">
	<option value="${no.count}">${code.explagin}</option>
	</c:forEach>
</select>
</div>
<h2>이미지 파일 업로드</h2>
<br>
<div id="error">



</div>
<div id="formDiv">
<form method="post" enctype="multipart/form-data" action="/HealthJJang/addItem.do" id="form" onsubmit="return error()" class="form-horizontal">
<div class="form-group">
<input type="hidden" value="" name="frame">
	<span class="col-xs-3"><strong>물품이름</strong></span> <input type="text" name="name" id="productName" class="form-control"><br>
<span class="col-xs-3"><strong>물품사진</strong></span> <input type="file" name="upImage" id="image" class="form-control"><br>
<span class="col-xs-3"><strong>물품설명 사진</strong></span> <input type="file" name="upImage2" class="form-control"><br>
<span class="col-xs-3"><strong>물품설명 사진2</strong></span> <input type="file" name="upImage3" class="form-control"><br>
<span class="col-xs-3"><strong></strong>물품설명 사진3 </span><input type="file" name="upImage4" class="form-control"><br>
<span class="col-xs-3"><strong></strong>물품설명 사진4</span>  <input type="file" name="upImage5" class="form-control"><br>
<div id="categoryForm">
물품코드  <select name="productCategory" id="category" class="form-control">
	<option value="0">카테고리를 선택하세요</option>
	<c:forEach items="${requestScope.codeList}" var="code">
	<option value="${code.code }">${code.explagin}</option>
	</c:forEach>
	  </select>
</div>
<br>
<div id="colorFrom" >
<span class="col-xs-3"><strong>물품색상</strong></span> <div class="col-xs-2"></div><div class="col-xs-8"><c:forEach items="${requestScope.colorList}" var="color">
<label>${color.colorName}&nbsp;<input type="checkbox" size="lager" name="color" id="color" value="${color.colorName}" ></label>
      </c:forEach></div>
</div>
<br>
<div id="sizeForm">

<span class="col-xs-3"><strong>사이즈</strong></span>
<div class="col-xs-8"><label>매우작음<input type="checkbox" style="margin-left:8px;" name="size" id="size" value="XS" class=""></label>
<label>작음<input type="checkbox" style="margin-left:8px;" name="size" id="size" value="S" class=""></label>
<label>보통<input type="checkbox" name="size" id="size" style="margin-left:8px;" value="M" class=""></label>
<label>큼<input type="checkbox" name="size" id="size" value="L" class="" style="margin-left:8px;"></label>
<label>매우큼<input type="checkbox" name="size" id="size" value="XL" class="" style="margin-left:8px;"></label></div>
</div>	  
<div>

<textarea name="comment" id="comment" cols="50" rows="5" placeholder="물품설명란" class="form-control"></textarea>
<br>물품수량<input type="number" name="amount" id="amount" style="text-align: right;" step="10" class="form-control">
<br>물품가격<input type="number" name="price" id="price" style="text-align: right;" step="1000" class="form-control">
<br> <input type="submit" value="전송" class="btn btn-default" > <input type="reset" value="초기화" class="btn btn-default">
</div>
</div>
</form>
</div>