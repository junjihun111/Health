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




#div1{
margin-left: 1%;
}
#div2{ 
text-align: left;   /*내용 칸  */
margin-left: 25%;
}
#div3{
text-align: left;   
margin-left: 28%;
}
#div4{           /*sns 밑에글씨  */
text-align: left;   
margin-left: 30%;
}
#div5{
background-
}



#font1{                    /*내용1  */
background-color: skyblue;
color: white;
}
#font2{
font-size: 20px;
}
#font3{
color: white;
}



.test {
padding: 5px;
width: 1000px;
height: 1000px;
background-color:LightCyan ;
border: 2px hidden #000;
border-radius: 100px;
background-clip: border-box;
margin-left: 22%;
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
	<h1>상담받고 커피도 먹고 일석이조!</h1>
	<span>2016-12-01</span>
</div>


<hr>



<div style="text-align: center">
	<img alt="커피" src="IMAGE/커피.jpg" width="1000" height="800"> <br>
	<p>
	<p>
	<p>
	<span>요즘같은 차가운바람, 몸도 마음도 얼어버린 나<br></span>
	<span>이럴때 생각나는건 바로 따뜻한 커피 아닐까요?<br><br><br> 지금 히트짐을 방문하시면 상당만 받아도<br></span>
	<span style="color: rgb(149, 16, 21);">STUBBORN에서 직접 준비한 커피를 무료로 드릴게요!</span>
	<br>
	<br>
	<span>운동도하고 따뜻한 커피도 마시고 포근한 겨울이 되시기를 바래요~</span>
</div>
</div>
</div>
<!-- 맨위로 가기 이미지 버튼 시작 -->

<a href="#" class="jcm-top hidden-xs hidden-sm">
<i class="icon icon-close"></i></a>

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


​

</body>
</html>
