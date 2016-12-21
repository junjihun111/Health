<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

#tableSuccess{
	width:70% ;
	max-width:1550px ; 
	margin:0 auto ; 
	text-align: left;
}

#dagle{
	margin-left: 55%;
	text-align: left;
}

#daglereal{
	margin-left: 72%;
	text-align: left;
	font-family: sans-serif;
}

#updatebox
{
	margin-left: 56%;
}

#writerSuccess
{
	text-align: right;
}


</style>

</head>
<link href="/HealthJJang/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="/HealthJJang/bootstrap/js/bootstrap.js"></script>


<script type="text/javascript" src="/HealthJJang/scripts/jquery.js"></script>
<body>
	<jsp:include page="/WEB-INF/view/body/boardmenu.jsp"/>
	<br><br>
	<table id="tableSuccess" class="table table-striped">
		<tr height=50>
			<td>
				<h1>${sessionScope.list.board_no} . [${sessionScope.list.board_header }] ${sessionScope.list.board_name }</h1> <span id="writerSuccess">작성자 : ${sessionScope.list.board_writer }</span>
			</td>
		</tr>	
		<tr>
			<td width=600 height=50>
				<h3>작성일시 : <fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${sessionScope.list.board_date}"/>  조회수 : ${sessionScope.list.board_count}</h3>
			</td>
		</tr>
		<tr>
			<td width=600 height=100>
				<h2>${sessionScope.list.board_content}</h2>
			</td>
		</tr>
	</table>	
	
	<!-- <table>
		<tr>
			<th colspan="2"><h2>댓글란</h2></th>
		</tr>
	

		<tr>
			<td width=100 height=10>순번</td>
			<td width=500 height=10>내용</td>
		</tr>
	
	</table> -->
	
	
		<table id="dagle" >
		<c:forEach items="${sessionScope.listjoin}" var="board" varStatus="cnt">
			<c:forEach items="${board.daglelist}" var="dagle" varStatus="cnt">
	
			<c:if test="${not empty board.daglelist}">
			<tr>
				<td width=400 height=40 colspan="2" >
					&nbsp;&nbsp; └ ${dagle.content}&nbsp;&nbsp;&nbsp;<span id="updatedaglelist${cnt.count}"><button id="board_update${cnt.count}" style="background-color: white;"><img src="gallery/수정버튼.JPG"></button></span><span id="deletedaglelist${cnt.count}"> <button id="board_delete${cnt.count}" style="background-color: white;"><img src="gallery/삭제버튼.JPG"></button></span><c:choose><c:when test="${not empty sessionScope.managerID}">
						<c:when test="${not empty sessionScope.managerPW}"><a href="deletedagle.do?page=${cnt.count}&content=${dagle.content}"><input type="button" name="deletemanager" id="deletemanager" class="btn btn-danger" value="관리자삭제" ><input type="hidden" name="content"></a></c:when></c:when>
				
				</c:choose>
				</td>
				
			</tr>
			</c:if>
			</c:forEach>
			
		</c:forEach>		
		</table>
	
	<c:if test="${not empty sessionScope.dagleupdateerror}">
	 <span id="errordagleupdate" style="color: purple;">${sessionScope.dagleupdateerror}</span>
	</c:if>	
	<br>
		
	<form action="dagleinsert.do">
		<table id="daglereal">
			<tr>
				<td colspan="2">
					댓글 : <input type="text" id="content" name="content" class="form-control" value="댓글"><br>
					작성자 : <input type="text" id="writer" name="writer" class="form-control" value="작성자"><br>
				 	비밀번호 : <input type="password" id="board_password" name="board_password" class="form-control" value="비밀번호">
				 <c:choose>
					<c:when test="${not empty sessionScope.errorcontent }">
						<br><span id="errorcontent" style="color: purple;">${sessionScope.errorcontent}</span>
					</c:when>
					
					<c:when test="${not empty sessionScope.writer }">
						<br><span id="errorwriter" style="color: purple;">${sessionScope.writer}</span>
					</c:when>
				</c:choose>
				
					<span id="dagleinsert"><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" class="btn btn-info" value="댓글 등록" ></span>
				</td>	
			</tr>
		</table>
	</form>
	
		<br>
	
		 <div id="updatebox">
		 	<button id="update" class="btn btn-info">글 수정</button>
		 	<%-- <c:if test="${empty sessionScope.error }">
		 		${sessionScope.error}
		 	</c:if> --%>
		 	
		 	<button id="delete" class="btn btn-danger">글 삭제</button>
		 
		 	<a href=updatereset.do><button id="dagleresetim" class="btn btn-warning">댓글 수정/삭제 취소</button></a>
		 	<br>
		 	<c:if test="${not empty sessionScope.error}">
		 		<span id="errormessagle" style="color: purple;">${sessionScope.error}</span>
		 	</c:if>
		 </div>
		 	
		 <br><br>
		 
		
		
		<!-- spring-mvc 경로 잘못될 가능성 존재.-->
		<script type="text/javascript">
			$(document).ready(function(){
				
				$("#update").on("click",function(){
					
				var txt ="<form action=updateajax.do name=updateBoxForm method=GET> 비밀번호 :<input type=password name=updatepassword value=수정하기위한 비밀번호> <a href=updateajax.do><button id=updateBoxForm class='btn btn-info'>수정</button></a> <input type=reset value=초기화 class='btn btn-info'> </form>";
					$("#updatebox").html(txt);
				});
			
				
				$("#delete").on("click",function(){
					var txt ="<form action=delete.do name=deleteForm> 비밀번호 : <input type=password name=updatepassword value=삭제하기위한 비밀번호> <a href=delete.do><button id=deleteBoxForm class='btn btn-danger'>삭제</button></a><input type=reset value=초기화 class='btn btn-info'> </form>";
					$("#updatebox").html(txt);	
				});
				
				
				$("#content").on("click",function(){
					$("#content").val("");
				});
				
				$("#writer").on("click",function(){
					$("#writer").val("");
				});
				
				$("#board_password").on("click",function(){
					$("#board_password").val("");
				});

			<c:forEach items="${sessionScope.listjoin}" var="board" varStatus="cnt">
					<c:forEach items="${board.daglelist}" var="dagle" varStatus="cnt">
				$("#board_update${cnt.count}").on("click",function(){
					
					
					var txt = "<form action= updatedagle.do name=updateBoxFormlist method=GET>"
								+"비밀번호: <input type=password name=updatepassword id=updatepassword><br>" 
								+"수정내용 : <input type=text name=updatecontent id=updatecontent><br>"
								+"<a href=updatedagle.do?pgaeing=${cnt.count}&board_password=${dagle.board_password}><button id=updatedagle>수정</button></a>&nbsp;&nbsp;&nbsp;"
								+"<input type=hidden name=pgaeing value=${cnt.count}>"+"<input type=hidden name=board_password value=${dagle.board_password}>"
								/* +"<input type=hidden name=updatepassword value=$(#updatepassword).val()>";
								+"<input type=hidden name=updatecontent value=$(#updatecontent).val()>"
									 */
								+"</form>";/* +"<a href=updatereset.do><button id=reset${cnt.count}>새로고침(작업취소)</button></a>" */
								
										
					$("#updatedaglelist${cnt.count}").html(txt);	
				});
				
				$("#board_delete${cnt.count}").on("click",function(){

					var txtli = "<form action = deletedageguest.do>"
							+"비밀번호: <input type=password name=updatepassworddelete id=updatepassworddelete><br>" 
							+"<a href=deletedageguest.do?pgaeingin=${cnt.count}&board_passwordre=${dagle.board_password}><button id=deletedaglegu class=btn btn-danger>삭제</button></a>&nbsp;&nbsp;&nbsp;"
							+"<input type=hidden name=pgaeingin value=${cnt.count}>"+"<input type=hidden name=board_passwordre value=${dagle.board_password}>"
							+"</form>";
						
					$("#deletedaglelist${cnt.count}").html(txtli);
				});
					
				</c:forEach>
			</c:forEach>
				
		});
		</script>
</body>
</html>