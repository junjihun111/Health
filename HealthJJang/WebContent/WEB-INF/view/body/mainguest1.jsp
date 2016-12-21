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
    <script>
      $( document ).ready( function() {
        $(".kht1")
          .mouseover( function() { 
            $(this).attr( 'src', 'gallery/ii5.jpg' );
          } )
          .mouseout( function() {
            $(this).attr( 'src', 'gallery/ii9.jpg' );
          } );
        
        $(".kht2")
        .mouseover( function() { 
          $(this).attr( 'src', 'gallery/ii7.jpg' );
        } )
        .mouseout( function() {
          $(this).attr( 'src', 'gallery/ii8.jpg' );
        } );
        
        $(".kht3")
        .mouseover( function() { 
          $(this).attr( 'src', 'gallery/ii7.jpg' );
        } )
        .mouseout( function() {
          $(this).attr( 'src', 'gallery/ii8.jpg' );
        } );
        
        $(".kht4")
        .mouseover( function() { 
          $(this).attr( 'src', 'gallery/ii7.jpg' );
        } )
        .mouseout( function() {
          $(this).attr( 'src', 'gallery/ii8.jpg' );
        } );
      } );
    </script>
<style>
.gotop {position:fixed; _position:absolute; left:96%; top:94%; width:38px; height:38px; background-color:#777; z-index:3;
    -moz-border-radius:19px;
    -webkit-border-radius:19px;
    border-radius:19px;
}
.gotop div {z-index:4; display:block; position:relative; width:38px; height:38px; background:url("<?=$g4[theme_path]?>/images/top_arrow.png") no-repeat 7px 10px;}
/* 폰트 */
@font-face{
   font-family:'NanumGothic';
   src: url(font/NanumFont_TTF_ALL/NanumGothic.ttf) format('truetype');
}
body{
font-family: NanumGothic;
 color: #615D5D;
}

   
   /* 소개내용 및 소개타이틀 설정 */
#F2{font-size:25px; font-weight:800; font-family:arial; font-weight: bold; color: black; 
}
    
#F3{font-size:20px; font:400; font-family:arial; color: black; 
}

body{background-color: #ffffff;}

.idcolor{
   color:white;
}

.pwcolor{
   color:white;
}
#font123{font-weight: bold; font-size: 35px;}

#div123{margin-right: 300px; text-align: left; margin-left: 45% }

#font456{font-weight: bold; font-size: 35px;}

#div456{margin-right: 300px; text-align: right; }

#eventtable
{
   margin-left: 300px;
   min-width: 500px;
   height: 400px;

}


#eventnoticetable
{
   margin-left: 300px;
   min-width: 500px;
   height: 400px;
}

#noticeboard
{
	margin-left: 70%;
	
}


</style>


<body>
<br>
<br>
      <font id="F2"><h1>헬스의 시작 헬스짱!!</h1></font><br>
      <br>
      <div id="F3">
      <h2 style="color: gray;">동네 헬스장이라는 타이틀로 마음 편히 운동하고</h2>
      <h2 style="color: gray;">동네 헬스장이라는 타이틀을 깨고 모든 운동법을 공유!</h2></div><br>
      <br>
      <iframe src='http://serviceapi.rmcnmv.naver.com/flash/outKeyPlayer.nhn?vid=C7F9697447E217BB16A16506568EF4AA041F&outKey=V1299696b2662ea338492e300a9b7110b6dd1b5f1131a7ae2e120e300a9b7110b6dd1&controlBarMovable=true&jsCallable=true&isAutoPlay=true&skinName=tvcast_white' 
      frameborder='no' scrolling='no' marginwidth='0' 
      marginheight='0' WIDTH='1000' HEIGHT='800' allowfullscreen></iframe>
  <br>
  <br><br>
      
     <span id="eventnotice"><h3 style="color: gray;">이벤트 소개       &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;              건강정보 소개</h3></span>
        
     <div id="eventtable">
       <table>   
           <tr>
              <th><img class="kht1" src="gallery/ii9.jpg" width="200" height="200"></th>
              <th>STUBBORN이 직접 운영하는 <br>헬스쇼핑사이트!!<br>STUBBORN헬스장 회원일 경우 <br>회원인증만하면<br>각종 제품들이 20%할인!!</th>
              <th> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;</th>
              <th><img class="kht2" src="gallery/ii8.jpg" width="200" height="200">&nbsp;&nbsp; &nbsp;</th>
              <th>STUBBORN이 알려주는<br>나이별 운동방법!!<br>20대 부터 60대까지의 방법을 <br> 지금 공개합니다.<br>빠빠빰빠~! 빠빠빰빠~!</th>
           </tr>
           <tr>
           <th><br><br><br></th>
           </tr>
           <tr>
              <th><img class="kht3" src="gallery/ii8.jpg" width="200" height="200">&nbsp;&nbsp; &nbsp;</th>
              <th>STUBBORN과 함께 <br>복부에 초콜릿을 만들어보자<br> 언제까지 뱃살달고 살꺼야~~!<br>초콜릿복근이 기다리자나~!</th>
              <th>  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;</th>
              <th><img class="kht4" src="gallery/ii8.jpg" width="200" height="200">&nbsp;&nbsp; &nbsp;</th>
              <th>STUBBORN과 함께 하는운동<br>비균형적인 몸매 NONONO!!<br>혼자가 아니야~ NONONO!!<br>STUBBORN과 함께 균형적인 운동! 균형적인 몸매<br>만들어봐요~</th>
           </tr>
        </table>
     </div>   
        
    <br><br><br><br><br><br>
    
    
     <span id="noticeboard"><h3 style="color: gray;" align="center">공지사항</h3></span>
     
        <div id="eventtable">
        <table>   
           <tr>
              <th><img class="kht1" src="gallery/ii9.jpg" width="1000" height="300"><h3 style="color: gray;">공지사항 게시판 및 각종 게시판들 존재</h3></th>
              
              <th>  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;</th>
              
           </tr>
           <tr>
           <th><br><br><br></th>
           </tr>
           
        </table>
     </div>    
     
     
     <br><br><br><br>
     
     <span id="shopping"><h3 style="color: gray;" align="center">쇼핑</h3></span>
     
        <div id="eventtable">
        <table>   
           <tr>
              <th><img class="kht1" src="gallery/ii9.jpg" width="1000" height="300"><h3 style="color: gray;">공지사항 게시판 및 각종 게시판들 존재</h3></th>
              
              <th>  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;</th>
              
           </tr>
           <tr>
           <th><br><br><br></th>
           </tr>
           
        </table>
        
        
     </div> 
  	
    	<br><br><br><br>
    
</body>
</html>