<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="/HealthJJang/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="/HealthJJang/bootstrap/js/bootstrap.js"></script>

<style type="text/css">

#headeroperator{
	width: 10%;
	color: black;
	background: white;
	margin-left: 380px;
}

#listinsert
{
	width:100% ;
	max-width:1550px ; 
	margin:0 auto ; 
	text-align: left;
}

#insertbox
{
	width: 10%;
	margin-left: 380px;
}

#content
{
	width:60%;	
	margin-left: 380px; 
}

#password
{
	width: 10%;
	margin-left: 380px;
}

#name
{
	width:60%;	 
	margin-left: 380px;
}

#wrtier
{
	width:60%;	 
	margin-left: 380px;
}


	

</style>
</head>



<body>
<jsp:include page="/WEB-INF/view/body/boardmenu.jsp"/>
<br>
<script type="text/javascript" src="/HealthJJang/scripts/jquery.js"></script>

<script type="text/javascript">
   $(document).ready(function(){
	  
       $("#header").on("change", function(){
         var idx = this.selectedIndex;
         if(idx==0)
         {
            alert("말머리를 선택해주세요.");
         } 
      });
   
      $("#name").on("click",function(){
         $(this).val("");
         if($("#name").val(""))
         {
             alert("제목을 입력해주세요");
         }
      });
      
      $("#password").on("click",function(){
         $(this).val("");
         if($("#password").val(""))
         {
             alert("비밀번호를 입력해주세요");  
         }
      });
      
      $("#writer").on("click",function(){
          $(this).val("");
          if($("#writer").val(""))
          {
              alert("비밀번호를 입력해주세요");  
          }
       });
      
      
   });
 
</script>

<caption id="listinsert"><span id="listinsert"><h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;글 등록</h2></span></caption>
<br><br><br>

<form action="operatorinsertSuccess.do" name="join_form" method="get" >

<select name="header" id="headeroperator" class="form-control"><!-- onchange 는 select 의 선택값이 변경될때 마다 발생하는 이벤트 처리자. -->
      <option>공지사항 등록</option>
</select>
   
<input type="text" id="name" name="name" value="공지사항제목" class="form-control">    
<input type="text" id="wrtier" name="writer" value="작성자" class="form-control"><br>

<br>	
<textarea name="content" cols="100" rows="5" id="content" class="form-control"></textarea>
<br><br>
<input type="password" id="password" name="password" value="비밀번호" class="form-control">
      
      <br><br>
      <!-- <input type="submit"  value="등록"> -->
      
      
      <div id="insertbox">
      	<a href='operatorinsertSuccess.do'><button id="check" class="btn btn-success">등록</button></a> <input type="reset" value="초기화" class="btn btn-danger">
      	<input type="hidden" name="password" value="password">
      	<br><br>
      	<c:if test="${not empty requestScope.errorinsert }">
      		<span id="errorinsert" style="color: purple;">${requestScope.errorinsert}</span>
      	</c:if>
      </div>
      
</form>

</body>
</html>