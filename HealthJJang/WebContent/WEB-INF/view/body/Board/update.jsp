<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
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
   });
   

  
   
   
</script>


<jsp:include page="/WEB-INF/view/body/boardmenu.jsp"/>
<form action="updateSuccess.do" name="join_form">

<select id="headerinsertlist" name="headerinsertlist" class="form-control"><!-- onchange 는 select 의 선택값이 변경될때 마다 발생하는 이벤트 처리자. -->
      <option>${sessionScope.list.board_header}</option>
      <c:forEach items="${sessionScope.select}" var="name">
            <option>${name.CODEOPTION}</option>
      </c:forEach>
</select><br><br><span id=nameswitch><input type="text" id="nameinsert" name="nameinsert" class="form-control" value="${sessionScope.list.board_name }"></span><br>
<span id="writerswitch"><input type="text" id="wrtierinsert" name="wrtierinsert" class="form-control" value="${sessionScope.list.board_writer }"><br></span>


<textarea name="textareainsert" id="textareainsert" cols="100" rows="5" class="form-control">${sessionScope.list.board_content}</textarea>
<br>
<input type="password" id="passwordinsert" name="passwordinsert" value="${sessionScope.list.board_password}" class="form-control">
      
      <br><br>
      
     
 	  
 	  <div id="insertbox">
      	<input type="submit" value="수정" class="btn btn-success">  <input type="reset" value="초기화" class="btn btn-success">
      	<br><br>
      	<c:if test="${not empty requestScope.errorupdate }">
      		<span id="errorupdate" style="color: purple;"> ${requestScope.errorupdate}</span>
      	</c:if>
      </div>   
      
      
      
</form>

</body>
</html>