<%@ page contentType="text/html; charset=UTF-8"%>
</head>
<!-- 부트스트랩 -->
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<style>

/* 타이틀 */
#t1{font-size: 50px; color: gray; font-family: arial; font-weight: bold;}
#tt1{ margin-bottom: 5%; text-align: center;}

/* 갤러리 이미지 */
img{width: 400px; height: 300px;  border-radius: 10px;}

/* 이미지 위치 */
#left12{  display: inline-block; position: relative; z-index: 2; margin-left: 5%; margin-bottom: 5%; 
  margin-left: 5%; }
  
/* 이미지 위치 */  
#right12{  display: inline-block; position: relative; z-index: 2; margin-left: 5%; margin-bottom: 5%; 
  margin-left: 5%;}
  
/* 이미지 기울기 */
#gallery11{display: inline-block; transform: rotate(-5deg);  margin-left: 5%; margin-bottom: 5%; 
  margin-left: 5%;}
  
/* 이미지 기울기 */
#gallery13{display: inline-block; transform: rotate(5deg);  margin-left: 5%; margin-bottom: 5%; 
  margin-left: 5%;}
 
/* 이미지 기울기 */
#left12:after{
 position: absolute;
  content: "";
  box-shadow: 0 15px 10px rgba(0,0,0, 1.5); /* 그림자효과 */
  transform: rotate(3deg); /* 회전효과 */
  right: 5px;
  left: auto;
  top: auto;
  bottom: 15px;
  z-index: -1;
  width: 50%;
  height: 20%;
}/* 이미지 기울기 */
#right12:after{
 position: absolute;
  content: "";
  box-shadow: 0 15px 10px rgba(0,0,0, 1.5); /* 그림자효과 */
  transform: rotate(3deg); /* 회전효과 */
  right: 5px;
  left: auto;
  top: auto;
  bottom: 15px;
  z-index: -1;
  width: 50%;
  height: 20%;
}

/* 밑에 글자 */
#f1{color: gray; font-weight: bold; font-size: 30px;}


/* 스크롤탑 */
.gotop {position:fixed; _position:absolute; left:96%; top:94%; width:38px; height:38px; background-color:#777; z-index:3;
   -moz-border-radius:19px; -webkit-border-radius:19px; border-radius:19px;
}
.gotop div {z-index:4; display:block; position:relative; width:38px; height:38px; background:url("<?=$g4[theme_path]?>/images/top_arrow.png") no-repeat 7px 10px;}


/* 사이드 타이틀 */
#div1{margin-right: 55%;
}
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
</style>
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
<body>
<div id="div1">
<font id="font100">갤러리</font><font id="font200"><a href="main.do"><font  color="darkslategray">HOME</font></a><font >&nbsp;&nbsp;>&nbsp;&nbsp;</font>
        <a href="main2.do"><font color="darkslategray">FACILITY</font></a> <font>&nbsp;&nbsp;>&nbsp;&nbsp;</font>
        <a href="main2.do"><font color="darkslategray">갤러리</font></a> <br><br><br><br><br></font>
   </div>
<div id="gallery">
<div id="tt1">
<font id="t1">STUBBORN 갤러리</font>
</div>
<div id="gallery11">
<div id="right12"><img src="gallery/1.jpg" class="img-thumbnail" alt="Cinque Terre" align="right"></div>
</div>
<div id="gallery13">
<div id="left12"><img src="gallery/2.jpg" class="img-thumbnail" alt="Cinque Terre" align="left"></div>
</div>
<br>
<div id="gallery13">
<div id="right12"><img src="gallery/4.jpg" class="img-thumbnail" alt="Cinque Terre" align="right"></div>
</div>
<div id="gallery11">
<div id="left12"><img src="gallery/5.jpg" class="img-thumbnail" alt="Cinque Terre" align="left"></div>
</div>
<div style="margin-top: 5%" ></div>
<font id="f1">찜질 and 샤워장 시설을 갖추고 있습니다.</font>
</div>


<br>
<div id="gotop" class="gotop">
    <div></div>
    </div>
</body>
</html>