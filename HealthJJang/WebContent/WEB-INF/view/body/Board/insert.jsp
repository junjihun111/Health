<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
	
	#headerinsertlist{
		width: 10%;
		color: black;
		background: white;
		margin-left: 380px;
	
	}
	
	#insertbox
	{
		width: 10%;
		margin-left: 380px;
	}
	#passwordinsert
	{
		width: 10%;
		margin-left: 380px;
	}
	
	#wrtierinsert
	{
		width: 60%;
		
		margin-left: 380px;
	}
	
	#nameinsert
	{
		width:60%;	 
		margin-left: 380px;
	}
	
	#textareainsert
	{
		width:60%;	
		margin-left: 380px; 
	}
	
	#listinsert
	{
		width:100% ;
		max-width:1550px ; 
		margin:0 auto ; 
		text-align: left;
	}
	
</style>

</head>
<body>

<link href="/HealthJJang/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="/HealthJJang/bootstrap/js/bootstrap.js"></script>


<jsp:include page="/WEB-INF/view/body/boardmenu.jsp"/>
<br>
<script type="text/javascript" src="/HealthJJang/scripts/jquery.js"></script>

	<script type="text/javascript">
	


   $(document).ready(function(){
       $("#headerinsertlist").on("change", function(){
         var idx = this.selectedIndex;
         if(idx==0)
         {
            alert("말머리를 선택해주세요.");
         } 
      });
   
      $("#nameinsert").on("click",function(){
         $(this).val("");
         if($("#name").val(""))
         {
             alert("제목을 입력해주세요");
         }
      });
      
      $("#wrtierinsert").on("click",function(){
          $(this).val("");
          if($("#wrtier").val(""))
          {
              alert("작성자을 입력해주세요");
          }
       });
      
      $("#password").on("click",function(){
         $(this).val("");
         if($("#password").val(""))
         {
             alert("비밀번호를 입력해주세요");  
         }
      });
      
    /*  var i=0
  		window.document.onkeydown = protectKey;
  		function down() {
       	   window.footer_cart.scrollBy(0,31)
       	   return;
  		}
  		function up() {
        	  window.footer_cart.scrollBy(0,-31)
         	 return;
  		}

  		function protectKey()
  		{
        	  //새로고침을 막는 스크립트.. F5 번키..
          	if(event.keyCode == 116)
          	{
                  event.keyCode = 0;
                  return false;
          	}
          	//CTRL + N 즉 새로 고침을 막는 스크립트....
          	else if ((event.keyCode == 78) && (event.ctrlKey == true))
          	{
                  event.keyCode = 0;
                  return false;
          	}

  		} */
   });
 
</script>

<caption id="listinsert"><span id="listinsert"><h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;글 등록</h2></span></caption>
<br><br><br>

<form action="insertSuccess.do" name="join_form">

<select name="headerinsertlist" id="headerinsertlist" class="form-control"><!-- onchange 는 select 의 선택값이 변경될때 마다 발생하는 이벤트 처리자. -->
     	<option>말머리</option>
     	<c:forEach items="${sessionScope.select}" var="name">
         	
           <option>${name.CODEOPTION}</option>
      </c:forEach>
</select><br><br><span id=nameswitch><input type="text" id="nameinsert" name="nameinsert" value="제목" class="form-control"></span> <br>
<span id="writerswitch"><input type="text" id="wrtierinsert" name="wrtierinsert" value="작성자" class="form-control"><br></span>

<textarea name="textareainsert" cols="100" rows="5" id="textareainsert" class="form-control"></textarea>
<br><br>
	<input type="password" id="passwordinsert" name="passwordinsert" value="비밀번호" class="form-control">
      
      <br><br>
      <!-- <input type="submit"  value="등록"> -->
      
      
      <div id="insertbox">
      	<a href='insertSuccess.do'><button id="check" class="btn btn-success">등록</button></a> <input type="reset" value="초기화" class="btn btn-danger">
      	<input type="hidden" name="password" value="password">
      	<br><br><br><br>
      	<c:if test="${not empty requestScope.errorinsert }">
      		${requestScope.errorinsert}
      	</c:if>
      </div>
      
</form>

</body>
</html>