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
font-family: 
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


}
#font1{                    /*내용1  */
background-color: yellow;
color: black;
font-size: 20px;
text-align: left;
}
#font2{                    /*내용2  */
background-color: black;
color: white;
font-size: 30px;
}



#font4{
font-size: 60px;
font-family: sans-serif;
font-weight: bold;
}
#font5{   /*노란 링크창  */
background-color: yellow;
font-size: 20px;
}
#div6{
margin-left: 1%;
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

<div id="div6">
<font id="font4">이벤트</font><font id="font5"><a href="main.do"><font  color="darkslategray">HOME</font></a><font >&nbsp;&nbsp;>&nbsp;&nbsp;</font>
		  <a href="event.do"><font color="darkslategray">EVENT</font></a> <font>&nbsp;&nbsp;>&nbsp;&nbsp;</font>
		  <a href="HealthInformation.do"><font color="darkslategray">HEALTH건강</font></a> <br><br><br><br><br></font>
	</div>

<hr>

<div id="div1" class="titleWrap">
	<h1>원하는 운동만 골라 할 수 있는 빅재미!</h1>
	<span>2010-12-05</span>
</div>
<hr>



<div style="text-align: center">
	<img align="middle" alt="FT3" src="IMAGE/어깨.jpg" width="500" height="400">
	<img align="middle"alt="FT3" src="IMAGE/어깨1.jpg" width="500" height="400">
</div>
<br>
<br>

<div style="text-align: center">
	<span id="font2">요즘 대세는 어깨넓은남자인거 다들 아시죠?</span>
	
</div>
<br>
<br>
<div style="text-align: center">
<span id="font2">STUBBORN에서 엄선한 가장 기본이 될 운동방법!</span>
</div>
<div style="text-align: center">

<img align="middle" alt="FT3" src="IMAGE/어깨2.jpg" width="500" height="400">
<span id="font1"><font>첫째!&nbsp;</font>다리들고 굽히기</span>
</div>
<div style="text-align: center">

<img align="middle" alt="FT3" src="IMAGE/어깨3.jpg" width="500" height="400">
<span id="font1"><font>첫째!&nbsp;</font>다리들고 굽히기</span>
</div>
<div style="text-align: center">

<img align="middle" alt="FT3" src="IMAGE/어깨4.jpg" width="500" height="400">
<span id="font1"><font>첫째!&nbsp;</font>다리들고 굽히기</span>
</div>





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
