<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css?20160824" />
<meta charset="UTF-8">
<title>Insert title here</title>


<style type="text/css">

* {padding:0;margin:0;} 

li {list-style:none;} 

a {text-decoration:none;color:#000;} 

.hoverFilter > span {display:inline-block;position:relative;}

.hoverFilter img {vertical-align:top;}

.hoverFilter:hover > span:before {content:"";position:absolute;width:100%;height:100%;background-color:WHITE}/*rgba(128,245,255,0.5)  */

.hoverFilter div {padding:10px 20px;}

.hoverFilter strong {display:block;}


#align{

width: 100%;
text-align: center;
max-width: 1550px;
margin: 0 auto;

}

#content{
margin:0 auto;
width: 2200px;
text-align: left;

}
/* img {border: none;} */


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








table, td{
padding: 10px;
border: 0px solid skyblue;
/*  border-spacing: 20px 10px; */
font-weight:bolder;
font-family:cursive; /*글씨 이쁘게 가꿔줌  */
color:;
font-size: 20px;
table-layout: fixed;
border-style: outset; /*테이블 선  */
border-collapse:collapse;
overflow: hidden;
text-overflow: ellipsis;
white-space: nowrap;
/* width: 100px; */
text-align: left;
 width: 70%;
 height: 30px;
 
 


}

caption{
height: 60px;
 font-size: 1.5em;
    font-weight: bold;
    text-align: center;
    line-height: 52px;
    border-bottom: 5px solid #FFF;
    -webkit-border-radius: 8px 8px 0 0;
    -moz-border-radius: 8px 8px 0 0;
    border-radius: 8px 8px 0 0;
    background: black ;
    border-spacing: 50px;

}

caption:before {
    content: '';
    display: block;
    height: 8px;
    -webkit-border-radius: 8px 8px 0 0;
    -moz-border-radius: 8px 8px 0 0;
    border-radius: 8px 8px 0 0;
    background-color: Lavender ;
}


a {
text-decoration: none;


}

a:hover{
text-decoration: underline;



}

image{
width: 270px;
height: 180px;
vertical-align: top;
}













#max{
max-width: 100%;
}







#a{

}





#div1{margin-right: 70%;
}
#text1{color: red;}
#text2{color: blue;}

#font1{
font-size: 60px;
font-family: sans-serif;
font-weight: bold;
}

#font2{
background-color: yellow;
font-size: 20px;
}

</style>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>

<script type="text/javascript">


$(function(){
	
$(".className").mouseover(function(e){

    e.preventDefault();

    $(this).fadeOut(600, function() {

     $(this).attr('src','IMAGE/수족냉증2.jpg');


    }).fadeIn(600);

}).mouseout(function(e){

    e.preventDefault();

    $(this).fadeOut(400, function() {

     $(this).attr('src','IMAGE/수족냉증.jpg');


    }).fadeIn(400);

});

$(".className2").mouseover(function(e){

    e.preventDefault();

    $(this).fadeOut(400, function() {

     $(this).attr('src','IMAGE/나이별운동2.jpg');


    }).fadeIn(400);

}).mouseout(function(e){

    e.preventDefault();

    $(this).fadeOut(400, function() {

     $(this).attr('src','IMAGE/나이별운동.jpg');


    }).fadeIn(400);

});

$(".className3").mouseover(function(e){

    e.preventDefault();

    $(this).fadeOut(400, function() {

     $(this).attr('src','IMAGE/신체나이2.jpg');


    }).fadeIn(400);

}).mouseout(function(e){

    e.preventDefault();

    $(this).fadeOut(400, function() {

     $(this).attr('src','IMAGE/신체나이1.jpg');


    }).fadeIn(400);

});

$(".className4").mouseover(function(e){

    e.preventDefault();

    $(this).fadeOut(400, function() {

     $(this).attr('src','IMAGE/다이어트2.jpg');


    }).fadeIn(400);

}).mouseout(function(e){

    e.preventDefault();

    $(this).fadeOut(400, function() {

     $(this).attr('src','IMAGE/다이어트1.jpg');


    }).fadeIn(400);

});

$(".className5").mouseover(function(e){

    e.preventDefault();

    $(this).fadeOut(400, function() {

     $(this).attr('src','IMAGE/다이어트4.jpg');


    }).fadeIn(400);

}).mouseout(function(e){

    e.preventDefault();

    $(this).fadeOut(400, function() {

     $(this).attr('src','IMAGE/다이어트3.jpg');


    }).fadeIn(400);

});

$(".className6").mouseover(function(e){

    e.preventDefault();

    $(this).fadeOut(400, function() {

     $(this).attr('src','IMAGE/체형별2.jpg');


    }).fadeIn(400);

}).mouseout(function(e){

    e.preventDefault();

    $(this).fadeOut(400, function() {

     $(this).attr('src','IMAGE/체형별.jpg');


    }).fadeIn(400);

});




});



</script>
</head>

<body>





<div align="center" id="align">
<div align="center" id="content">

<div  style="text-align:center" >
<div id=div2>

<br>
<br>
<br>
<div id="div1">
<font id="font1">건강</font><font id="font2"><a href="main.do"><font color="darkslategray">HOME</font></a><font>&nbsp;&nbsp;>&nbsp;&nbsp;</font>
		  <a href="event.do"><font  color="darkslategray">EVENT</font></a> <font>&nbsp;&nbsp;>&nbsp;&nbsp;</font>
		  <a href="HealthInformation.do"><font color="darkslategray">HEALTH건강</font></a> <br><br><br><br><br></font>
	</div>

 <table style= "margin:0 ,  auto;">


 <caption><font color="white">HEALTH Tip</font> 
</caption>

<tr>

 <td>  <a href="HealthInformationview.do" class="hoverFilter"><span><img class="className" src="IMAGE/수족냉증.jpg" width="400" height="300"></span></a></td>
 <td>  <a href="HealthInformationview2.do" class="hoverFilter"><span><img class="className2" src="IMAGE/나이별운동.jpg" width="400" height="300"></span></a></td>
 <td>  <a href="HealthInformationview3.do" class="hoverFilter"><span><img class="className3" src="IMAGE/신체나이1.jpg" width="400" height="300"></span></a></td>
</tr>
 <tr>
  <td><a href="HealthInformationview.do" style="border:5px  #ccc;padding-bottom:3px;"><font color="maroon">수족냉증에 유익한 정보</font></a><p><font size="3px">2010-03-12</font></td>
  <td><a href="HealthInformationview2.do" style="border:5px  #ccc;padding-bottom:3px;"><font color="maroon">나이별 추천 운동방법</font></a><p><font size="3px">2011-03-12</font></td>
  <td><a href="HealthInformationview3.do" style="border:5px  #ccc;padding-bottom:10px;"><font color="maroon">신체나이 자가 테스트</font></a><p><font size="3px">1960-05-16</font></td>

 </tr>


</table>




 <div    style="text-align:center">
<table   style="margin:0, auto;">


<tr>
  <td>  <a href="HealthInformationview4.do" class="hoverFilter"><span><img class="className4" src="IMAGE/다이어트1.jpg" width="400" height="300"></span></a></td>
  <td>  <a href="HealthInformationview5.do" class="hoverFilter"><span><img class="className5" src="IMAGE/다이어트3.jpg" width="400" height="300"></span></a> </td>
  <td>  <a href="HealthInformationview6.do" class="hoverFilter"><span><img class="className6" src="IMAGE/체형별.jpg" width="400" height="300"></span></a> </td>

</tr>
  <tr>
  <td><a href="HealthInformationview4" style="border:5px  #ccc;padding-bottom:10px;"><font color="maroon">다이어트에 도움되는 음식</font></a><p><font size="3px">1979-12-12</font></td>
  <td><a href="HealthInformationview5.do" style="border:5px  #ccc;padding-bottom:10px;"><font color="maroon">연예인들에 특별 다이어트 식단</font></a><p><font size="3px">1950-06-25</font></td>
  <td><a href="HealthInformationview6.do" style="border:5px  #ccc;padding-bottom:10px;"><font color="maroon">체형별 기초대사량 높이기</font></a><p><font size="3px">1960-05-16</font></td>

 </tr>

 
 
</table>
</div>
</div>
</div>
</div>
</div>


<br><br><br><br><br>
</body>
</html>
