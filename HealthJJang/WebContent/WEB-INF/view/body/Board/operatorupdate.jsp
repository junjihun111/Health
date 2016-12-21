<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
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

#insertbox
{
	width: 10%;
	margin-left: 360px;
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

#passwordtext
{
	width:10%;	 
	margin-right: 57%;
	text-align: left;
}

</style>
</head>
<body>

<script type="text/javascript" src="/HealthJJang/scripts/jquery.js"></script>

<script type="text/javascript">
   
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
   
</script>


<jsp:include page="/WEB-INF/view/body/boardmenu.jsp"/>
   <form action="operatorupdateSuccess.do" name="join_form">

<select id="headeroperator" name="headeroperator" class="form-control"><!-- onchange 는 select 의 선택값이 변경될때 마다 발생하는 이벤트 처리자. -->
      <option>공지사항</option><br><br>
</select>
  
<br><br>  
<span id=nameswitch><input type="text" id="name" name="name" value="${sessionScope.list.board_name }" class="form-control"></span><br>
<span id="writerswitch"><input type="text" id="wrtier" name="writer" value="${sessionScope.list.board_writer }" class="form-control"><br></span>


<textarea name="content" id="content" cols="100" rows="5" class="form-control">${sessionScope.list.board_content}</textarea>
<br><br>
<span id="passwordtext">비밀번호 :</span><br>
<input type="password" id="password" name="password" value="${sessionScope.list.board_password}" class="form-control">
      
      <br><br>
      
     
 	  
 	  <div id="insertbox">
      	<input type="submit" value="수정" class="btn btn-success">  <input type="reset" value="초기화" class="btn btn-success">
      	<br><br>
      </div>
      
      
</form>

</body>
</html>