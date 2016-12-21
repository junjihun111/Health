<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<script>
$(function(){
    /*스크롤 탑*/
    $("div.gotop").fadeOut("slow");
    $(window).scroll(function(){
        setTimeout(scroll_top, 100);//화살표가 반응하여 생기는 시간
    });
    $(".gotop").hover(function(){
        $(this).css("background-color","#307ad5");
    }, function(){
        $(this).css("background-color","#999");
        scroll_top()
    })
    $("#gotop").click(function(){
        $("html, body").animate({ scrollTop: 0 }, 600);//화살표 클릭시 화면 스크롤 속도
            return false;
    });
})
/*스크롤 탑*/
function scroll_top(){
    if($(window).scrollTop()<=1) {
        $("#gotop").fadeOut("slow");
    }
    else {
        $("#gotop").fadeIn("slow");
    }
}
</script>

<style>
/* 스크롤탑 */
.gotop {position:fixed; _position:absolute; left:96%; top:94%; width:38px; height:38px; background-color:#777; z-index:3;
    -moz-border-radius:19px; -webkit-border-radius:19px; border-radius:19px;
}
.gotop div {z-index:4; display:block; position:relative; width:38px; height:38px; background:url("<?=$g4[theme_path]?>/images/top_arrow.png") no-repeat 7px 10px;}

/* 사이드 타이틀 */
#div100{margin-right: 55%;}
#font100{
font-size: 60px;
font-family: sans-serif;
font-weight: bold;
}
#font200{   /*노란 링크창  */
background-color: yellow;
font-size: 20px;
font-weight: bold;
}

/* 타이틀  */
#title1{font-size: 50px; color: gray; font-family: arial; font-weight: bold;}

</style>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<body>
<div id="div100">
<font id="font100">소개</font><font id="font200"><a href="main.do"><font  color="darkslategray">HOME</font></a><font >&nbsp;&nbsp;>&nbsp;&nbsp;</font>
        <a href="main4.do"><font color="darkslategray">INTRODUCE</font></a> <font>&nbsp;&nbsp;>&nbsp;&nbsp;</font>
        <a href="main4.do"><font color="darkslategray">소개</font></a> <br><br><br><br><br></font>
   </div>
   <div style="text-align:center;">
<font id="title1">STUBBORN 소개</font></div>
   <img style="text-align: center;" class="img-rounded" alt="Cinque Terre" src="gallery/k12.jpg">
   <br>
   <br>
     <div class="col-md-offset-4 col-md-4" style="font-weight: bold;">

      <h1>헬스의 시작 헬스짱!!</h1>
      <br>
      <p>동네 헬스장이라는 타이틀로 마음 편히 운동하고</p>
      <p>동네 헬스장이라는 타이틀을 깨고 모든 운동법을 공유!</p>   
      </div>
      <div style="margin-top: 15%"></div>
 
   <div id="gotop" class="gotop">
    <div></div>
    </div>
   
</body>
</html>