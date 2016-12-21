<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>

<style type="text/css">

a.jcm-top:hover{
background-color:#000
}

#align{
width: 100%;
text-align: center;
}

#content{
margin:0 auto;
width: 1750px;
text-align: left;
}

#img
{
width: 200px;
height: 200px;
} 


aside{
text-align: center;
}

a#MOVE_TOP_BTN {
    position: fixed;
    right: 2%;
    bottom: 50px;
    display: none;
    z-index: 999;
}

/* 맨위로가기 버튼 */
a.jcm-top {
    position: fixed;
    right: 15px;
    bottom: 15px;
    border-radius: 5px;
    color: #ffffff;
    text-align: center;
    width: 45px;
    height: 45px;
    font-size: 40px;
    /*background-color: rgba(50,50,50,0.5);*/
    background-color:#323232; opacity:0.5; filter:alpha(opacity=50); /*ie8 호환을 위한코드 위와 동일한 것임 호환필요없으면 한줄로 rgba적으면됨*/
    z-index: 999;
    display: none;
}
a.jcm-top:hover{background-color:#000}


#div1{    /*타이틀제목 뛰어쓰기  */
margin-left: 1%;
}
#font1{                    /*내용1  */
background-color: yellow;
color: black;
font-size: 30px;
}
#font2{                    /*내용2  */
background-color: black;
color: white;
font-size: 30px;
}

</style>

<script type="text/javascript">




</script>







<meta charset="UTF-8">
<title>Insert title here</title>

<!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<!--부트스트랩  -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
</head>

<body>

 


<div id="align">
<div id="content">

<hr>

<div id="div1" class="titleWrap">
	<h1>확실한 체형만들기 이벤트</h1>
	<span>2010-05-03</span>
</div>
<hr>


<div style="text-align: center">
	<img alt="FT3" src="IMAGE/FT3.jpg" width="800" height="600"> <br>

<font id=font1>당신에 체형에 아직도 만족하십니까? 이젠 바꿔야 합니다 </font><p>
<font id=font2>스터번에서 시작하는 단기간 고속 운동프로젝트 빅이벤트  지금바로 문의하세요! </font>
</div>
<img align="middle" alt="선착순" src="IMAGE/선착순.jpg"><span style="font-size: 30pt">50명 한정이니 만큼 지금 바로 신청하세요!</span>

</div>
</div>



<!-- 맨위로 가기 이미지 버튼 시작 -->

<a href="#" class="jcm-top hidden-xs hidden-sm">
<i class="icon icon-angle-up"></i></a>

<script>

$( document ).ready( function() {

$( window ).scroll( function() {

if ( $( this ).scrollTop() > 200 ) {

$( '.jcm-top' ).fadeIn();

} else {

$( '.jcm-top' ).fadeOut();

}

} );

$( '.jcm-top' ).click( function() {

$( 'html, body' ).animate( { scrollTop : 0 }, 400 );

return false;

} );

} );

</script>

<!-- 맨위로 가기 이미지 버튼 끝 -->




</body>
</html>
