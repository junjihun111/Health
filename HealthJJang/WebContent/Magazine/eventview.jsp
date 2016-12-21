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
margin-left: 22%;
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
	<h1>사진찍고 헬스장 할인받자!</h1>
	<span>2010-05-03</span>
</div>


<hr>

 <div class="test">

<div style="text-align: center">
	<img alt="사진찍고" src="IMAGE/사진찍고.jpg" width="400" height="400"> <br>
<div id="div2">
<h2><font id="font1" >내용</font><font id="font3"> </font><font id="font2">할인받을수 있는 절호에 찬스!</font> </h2>
</div>
<div id="div2">
<h2><font id="font1">내용</font><font id="font3"> </font><font id="font2">1. 회원증을 들고 인증샷찍기 </font></h2>
</div>
<div id="div2">
<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font id="font3"> </font><font id="font2">2. SNS에 친구들한테 자랑한다 </font></h2>
</div>
<div id="div2">
<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font id="font3"> </font><font id="font2">3. 마지막으로 관장에게 보여주고 할인받는다  </font></h2>
</div>
<div id="div2">
<h2><font id="font1" >대상자</font><font id="font3"> </font><font id="font2">1. 헬스장 회원이면 누구나 가능!</font> </h2>
</div>
<div id="div2">
<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font id="font3"> </font><font id="font2">2. 중복사용은 불가능! </font></h2>
</div>
<br>
<div id="div4">
<img align="middle" alt="SNS" src="IMAGE/SNS.jpg" width="200px" height="100px">
</div>
<div id="div4">
<h2>&nbsp;&nbsp;<font id="font2">다양한 SNS를 활용하라<img alt="따봉" src="IMAGE/따봉.jpg" width="40px" height="30px"> </font></h2> 
</div>

</div>

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
