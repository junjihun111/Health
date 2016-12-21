<%@ page  contentType="text/html; charset=UTF-8" %>
</head>
<style>
/* 타이틀 */
#t1{font-size: 50px; color: gray; font-family: arial; font-weight: bold;}
#t2{text-align: center; margin-bottom: 5%;}

/* 지도위치 */
#t3{text-align: center; margin-top: 5%;}

/* 버스 번호폰트 */
#id2{font-weight: bolder; margin-left: 1%}

/* 버스정보 위치 */
#div1{margin-bottom: 1%}

/* 벽산 글자 위치 및 폰트 */
#div2{margin-bottom: 3%; font-size: 15px; font-weight: bold;}

/* 스크롤탑 */
.gotop {position:fixed; _position:absolute; left:96%; top:94%; width:38px; height:38px; background-color:#777; z-index:3;
    -moz-border-radius:19px;   -webkit-border-radius:19px; border-radius:19px;
}
.gotop div {z-index:4; display:block; position:relative; width:38px; height:38px; background:url("<?=$g4[theme_path]?>/images/top_arrow.png") no-repeat 7px 10px;}

/* 사이드 타이틀 */
#div100{margin-right: 55%;
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
<body>
<div id="div100">
<font id="font100">오시는 길</font><font id="font200"><a href="main.do"><font  color="darkslategray">HOME</font></a><font >&nbsp;&nbsp;>&nbsp;&nbsp;</font>
        <a href="main4.do"><font color="darkslategray">INTRODUCE</font></a> <font>&nbsp;&nbsp;>&nbsp;&nbsp;</font>
        <a href="main3.do"><font color="darkslategray">오시는 길</font></a> <br><br><br><br><br></font>
   </div>
<div id="t2">
   <font id="t1">STUBBORN 오시는 길</font></div>
<div id="t3">
  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1541.6281832358527!2d126.99456797761187!3d37.30455161874582!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b5d27400c1953%3A0x9fb6c2058881ae6b!2z6rK96riw64-EIOyImOybkOyLnCDsnqXslYjqtawg7KCV7J6QMeuPmSA0MTc!5e0!3m2!1sko!2skr!4v1482140382216" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe></div>
    
   <h2>주변 버스정류장 정보</h2>
   <div id="div1">
   <button type="button" class="btn btn-success">일반</button><font id="id2">   5번</font>&nbsp;&nbsp;&nbsp;
   <button type="button" class="btn btn-success">일반</button><font id="id2">   63번</font>&nbsp;&nbsp;&nbsp;
   <button type="button" class="btn btn-success">일반</button><font id="id2">   63-3번</font>&nbsp;&nbsp;&nbsp;
   <button type="button" class="btn btn-success">일반</button><font id="id2">   65번</font>&nbsp;&nbsp;&nbsp;
   <button type="button" class="btn btn-success">일반</button><font id="id2">   301번</font>
   </div>
   <br>
   <div id="div2">벽산블루밍아파트에서 하차</div>
   
   <div style="margin-bottom: 2%; color:red" >
※수원시 장안구 만석로 159번길 71. 202호※
</div>

<div id="gotop" class="gotop">
    <div></div>
    </div>
</body>
</html>