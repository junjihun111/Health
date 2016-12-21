<%@ page  contentType="text/html; charset=UTF-8" %>
</head>

<!-- 부트스트랩 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   
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
  /* 타이틀 */
   #title1{font-size: 50px; color: gray; font-family: arial; font-weight: bold;}
   
  /* 빨간 글씨 */
   #title3{color: red; text-align: center; font-weight:500;}
  
  /* 이미지 왼쪽 공간 */
   #image1{margin-left: 30%}



/* 사이드 타이틀 */
#div1{margin-right: 55%;}
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

/* 스크롤탑 */
.gotop {position:fixed; _position:absolute; left:96%; top:94%; width:38px; height:38px; background-color:#777; z-index:3;
    -moz-border-radius:19px;-webkit-border-radius:19px; border-radius:19px;}
.gotop div {z-index:4; display:block; position:relative; width:38px; height:38px; background:url("<?=$g4[theme_path]?>/images/top_arrow.png") no-repeat 7px 10px;}

</style>

<body>
<!-- 사이드 타이틀 -->
<div id="div1">
<font id="font100">가이드</font><font id="font200"><a href="main.do"><font  color="darkslategray">HOME</font></a><font >&nbsp;&nbsp;>&nbsp;&nbsp;</font>
        <a href="main4.do"><font color="darkslategray">INTRODUCE</font></a> <font>&nbsp;&nbsp;>&nbsp;&nbsp;</font>
        <a href="main1.do"><font color="darkslategray">가이드</font></a> <br><br><br></font>
   </div>
   
   <!-- 타이틀 -->
<font id="title1">STUBBORN 가이드</font>

<!-- 이미지 -->
<div id="image1">
<img width="400" height="400" src="gallery/ii3.jpg" class="img-rounded" alt="Cinque Terre" align="left">
</div>

<!-- 이미지옆 글씨 -->
<div class="container">
  <h2 style="text-align: left; margin-left: 820px;">이용시간</h2>
  <p style="text-align: left; margin-left: 820px;">평일 A.M 8:00 ~ P.M 10:00</p> 
  <p style="text-align: left; margin-left: 820px;">주말 A.M 9:00 ~ P.M 6:00</p>
  
  <br>
  
    <h2 style="text-align: left; margin-left: 820px;">휴관일</h2>
  <p style="text-align: left; margin-left: 820px;">매주 첫번째 일요일</p> 
  
  <br>
  
    <h2 style="text-align: left; margin-left: 820px;">연락처</h2>
  <p style="text-align: left; margin-left: 820px;">전화 031-246-0101</p> 
  <p style="text-align: left; margin-left: 820px;">카톡 Health</p>           
</div>


<br>
<br>
<!-- 빨간 글씨 -->
<div id="title3">문의 주시면 친절하게 설명해 드리겠습니다.</div><br>
<div id="title3">편한 운동과 더 많은 운동 정보를 위해 항상 최선을 다하겠습니다.</div>

<br>

<!-- 스크롤탑 -->
<div id="gotop" class="gotop">
    <div></div>
    </div>
</body>

</html>