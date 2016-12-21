<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script>
$(function() {
	
	$('#accordion').accordion({
		header:".ui-accordion-header",
		collapsible: true
	});
});



</script>

<style type="text/css">
#font1{
background-color: skyblue;
color: white;
font-size: 20px;
text-align: center;
margin-left: 30%;
text-overflow: ellipsis;
white-space: nowrap;
width: auto;
}



#div1{
background-color:LightCyan ;
border: 2px hidden #000;
border-radius: 100px;
}
#font2{
margin: 0 auto;
max-width: 1550px;
width: 50%;
text-align: center;
}
#font3{
margin: 0 auto;
max-width: 1550px;
width: 50%;
box-sizing: border-box;
}
#p1{
font-size: 25px;
}
#p2{
font-size: 25px;
}
#p3{
font-size: 25px;
}
#p4{
font-size: 25px;
}
#p5{
font-size: 25px;
}
#title{
}


	#accordion {
			background: #FFFFCC;
			margin: 1px;
padding: 5px;
border: 0px;
width: 810px;
height: 310px;
overflow: auto;
resize: both;
margin-left: 30%;
margin-right: 75%;
text-align: center;
background-color: white;
color: white;
width: 100%;
max-width: 800px;

height: 670px;
margin: 0 auto;
border-radius: 50px;

		}
		.ui-accordion-group {
			background: #FFFFCC;
			border-bottom: 1px solid #d3d3d3;
		}
		.ui-accordion-header {
			/*resets*/margin: 0; padding: 0; border: 0; outline: 1px; line-height: 1.3; text-decoration: none; font-size: 100%; list-style: none;
			cursor: pointer;
		}
		.ui-accordion-header a {
			/*resets*/margin: 0; padding: 0; border: 0; outline: 1px; line-height: 1.3; text-decoration: none; font-size: 100%; list-style: none;
			display: block;
			font-size: 12px;
			padding: .5em .5em .5em 1.7em;
			color: #555555;
			background: white;
			line-height: 1.3;
		}
		.ui-accordion-content {
			background: #FFFFCC;
			color: #222222;
			font-size: 1em;
		}
</style>

<!--부트스트랩  -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
</head>
<body>


<h1 id="title1" align="center">자주찾는질문<font size="5px">FAQ</font></h1>


<div id="accordion">
		<div class="ui-accordion-group">
			<h3 align="left" class="ui-accordion-header"><a href="#"><font color="navy" size="6px">[등록방법/이용료]&nbsp;</font><font color="black" size="4px">헬스장등록방법과 이용료가 궁금해요!</font></a></h3>
			<div align="left" class="ui-accordion-content">
				<UL>
					<LI>백기사 이야기
					<LI>건담무쌍
					<LI>킬존
					<LI>갓오브워
				</UL>
			</div>
		</div>
		<div class="ui-accordion-group">
			<h3 align="left" class="ui-accordion-header"><a href="#"><font color="navy" size="6px">[헬스장위치]&nbsp;</font><font color="black" size="4px">정확한 주소와 위치를 알수 있을까요?</font></a></h3>
			<div align="left" class="ui-accordion-content">
				<UL>
					<LI>기어어브워
					<LI>스타오션4
					<LI>피파09
					<LI>헤일로3
				</UL>				
			</div>
		</div>
		<div class="ui-accordion-group">
			<h3 align="left" class="ui-accordion-header"><a href="#"><font color="navy" size="6px">[보충제구입문의]&nbsp;</font><font color="black" size="4px">구입가능한 보충제는 어떤게 있나요?</font></a></h3>
			<div align="left" class="ui-accordion-content">
				<UL>
					<LI>Wiifit
					<LI>마리오갤럭시
					<LI>기타히어로
					<LI>동물의숲
				</UL>
			</div>
		</div>
		<div class="ui-accordion-group">
			<h3 align="left" class="ui-accordion-header"><a href="#"><font color="navy" size="6px">[운동기구구입/스포츠용품]&nbsp;</font><font color="black" size="4px">스포츠용품 구매도 가능할까요?</font></a></h3>
			<div align="left" class="ui-accordion-content">
				<UL>
					<LI>기어어브워
					<LI>스타오션4
					<LI>피파09
					<LI>헤일로3
				</UL>				
			</div>
		</div>
		<div class="ui-accordion-group">
			<h3 align="left" class="ui-accordion-header"><a href="#"><font color="navy" size="6px">[샤워실구비 및 찜질방여부]&nbsp;</font><font color="black" size="4px">샤워실과 찜질방은 있나요?</font></a></h3>
			<div align="left" class="ui-accordion-content">
				<UL>
					<LI>기어어브워
					<LI>스타오션4
					<LI>피파09
					<LI>헤일로3
				</UL>				
			</div>
		</div>
	</div>


</body>
</html>