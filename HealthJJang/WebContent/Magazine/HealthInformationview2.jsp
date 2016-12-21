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

img
{
border: 1px solid;
width: 700px;
height: 700px;
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
}a.jcm-top:hover{background-color:#000}

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

<hr>

<div class="titleWrap">
	<h1>꼬부기운동법</h1>
</div>
<hr>

<div class="context">
							<div align="center" style="text-align: center;"><img width="738" height="579" alt="나이대별 추천 운동-01.jpg" src="http://hitgym.tcubemnet.com/static/datas/board/attach/images/2016/09/22/d586a5279ffa30210d146eb66daaa301.jpg"></div><div align="center" style="text-align: center;"><br></div><div align="center" style="text-align: center;"><br></div><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 11pt;'>나이가 들어서도 운동을 하며 자기 관리하시는 분들 보면 정말 존경스러워요.</span></div><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 11pt;'>나도 저렇게 변함없는 몸매를 유지하고 싶다는 생각이 저절로 들죠.</span></div><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 11pt;'>하지만 나에게 맞지 않는데 무작정 남이 하는 운동을 그냥 따라했다가는</span></div><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 11pt;'>몸살이 나거나 개운함없이 피곤하기만 해서 효과적으로 운동할 수가 없어요.</span></div><div align="center" style="text-align: center;"><br></div><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 11pt;'>나에게 맞는 운동을 찾는 것이 중요하답니다.</span></div><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 11pt;'>나이에 따라 체력과 신체 상태가 다르기 때문에 추천 운동 종류도 달라요.</span></div><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 11pt;'>오늘은 나이대별 추천 운동에 대해 소개해드릴게요.</span></div><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 11pt;'>부모님께도 공유해드리고, 나에게 맞는 운동도 찾아보세요!</span></div><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 11pt;'><div align="center" style="text-align: center;"><br></div></span><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 24pt;'><b>20~60대 나이대별 추천 운동</b></span></div><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 11pt;'><div align="center" style="text-align: center;"><br></div></span><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 11pt;'><img width="738" height="579" alt="나이대별 추천 운동 1-01.jpg" src="http://hitgym.tcubemnet.com/static/datas/board/attach/images/2016/09/22/ab56518a0188815c055629091c5109be.jpg"></span></div><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 11pt;'><div align="center" style="text-align: center;"><br></div></span><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 11pt;'><div align="center" style="text-align: center;"><br></div></span><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 18pt;'><b><span style="color: rgb(255, 255, 0); background-color: rgb(51, 51, 51);">20대 추천 운동</span></b></span><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 18pt;'><b><span style="color: rgb(255, 255, 0); background-color: rgb(51, 51, 51);">?</span></b></span></div><div align="center" style="text-align: center;"><br></div><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'>20대에는 순발력과 평형성이 좋고 근력이 최대치가 되는 시기입니다.</span></div><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'>이 시기에는 운동 종류에 제한없이 다양한 운동을 접할 수 있어요.</span></div><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'>조깅, 수영, 등산, 구기 종목, 검도, 태권도 등이 20대 추천 운동입니다.</span></div><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'>체력 증진을 목표로 꾸준히 운동하는 것이 좋은데요.</span></div><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'>하루 20~30분 정도 일주일에 3일 이상 활동적인 전신 운동을 하면</span></div><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'>건강한 20대 몸을 유지할 수 있습니다.</span></div><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'><div align="center" style="text-align: center;"><br></div></span><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'><div align="center" style="text-align: center;"><br></div></span><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'><img width="738" height="579" alt="나이대별 추천 운동 2-01.jpg" src="http://hitgym.tcubemnet.com/static/datas/board/attach/images/2016/09/22/fbf8325e0c564338116746bf27a1def8.jpg"></span></div><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'><div align="center" style="text-align: center;"><br></div></span><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'><div align="center" style="text-align: center;"><br></div></span><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 18pt;'><b><span style="color: rgb(255, 255, 0); background-color: rgb(51, 51, 51);">30대 추천 운동</span></b></span></div><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'><br>30대 추천 운동은 속보, 등산, 수영, 계단오르기, 테니스, 근력 운동 등 입니다.</span></div><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'>30대가 되면 점점 몸이 굳어지기 때문에 반드시 운동을 해야 해요.</span></div><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'>유연성을 높이는 운동을 하거나 운동 전 충분한 스트레칭이 필요합니다.</span></div><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'>스트레칭 없이 운동을 하게 되면 부상의 위험이 있습니다.</span></div><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'>바쁘더라도 시간을 내어 틈틈이 산책을 하고,</span></div><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'>폐 기능과 순환계 기능을 향상시킬 수 있는 운동이 필수적입니다.</span></div><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'><div align="center" style="text-align: center;"><br></div></span><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'><div align="center" style="text-align: center;"><br></div></span><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'><img width="738" height="579" alt="나이대별 추천 운동 3-01.jpg" src="http://hitgym.tcubemnet.com/static/datas/board/attach/images/2016/09/22/b0b8c8029cfa1c4de7cdd26e851f0bb5.jpg"></span></div><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'><div align="center" style="text-align: center;"><br></div></span><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'><div align="center" style="text-align: center;"><br></div></span><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 18pt;'><b><span style="color: rgb(255, 255, 0); background-color: rgb(51, 51, 51);">40대 추천 운동</span></b></span></div><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'><br>40대는 질병이 가장 많이 발생하는 시기이기 때문에</span></div><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'>고혈압, 협심증 등 자신의 위험 인자를 찾아내는 것이 우선입니다.</span></div><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'>가급적 격렬한 운동은 피하고 본인의 취향에 맞는 종목을 찾아</span></div><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'>가볍게 즐기면서 운동하는 것을 추천합니다.</span></div><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'>40대 추천 운동에는 골프, 수영, 고정식 자전거, 근력운동, 요가 등이 있어요.</span></div><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'>운동이 처음이라면 걷기 운동부터 시작하는 것이 좋아요.</span></div><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'><div align="center" style="text-align: center;"><br></div></span><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'><div align="center" style="text-align: center;"><br></div></span><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'><img width="738" height="579" alt="나이대별 추천 운동 4-01.jpg" src="http://hitgym.tcubemnet.com/static/datas/board/attach/images/2016/09/22/8a36f67dc43cfb2b248eabb7889ab952.jpg"></span></div><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'><div align="center" style="text-align: center;"><br></div></span><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'><div align="center" style="text-align: center;"><br></div></span><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 18pt;'><b><span style="color: rgb(255, 255, 0); background-color: rgb(51, 51, 51);">50대 추천 운동</span></b></span></div><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'><br>고정식 자전거, 수영, 단전호흡, 스트레칭, 요가 등이 50대 추천 운동입니다.</span></div><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'>50대는 심혈관계 질환 발생율이 가장 높은 시기이므로</span></div><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'>체력 소모가 많고 경쟁심을 유발하는 운동은 절대적으로 삼가해야 합니다.</span></div><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'>순간 반응이나 평형 감각이 떨어져 위험할 수 있기 때문입니다.</span></div><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'>유연성을 강화할 수 있는 스트레칭 위주의 운동을 충분히 해주는 것이 좋습니다.</span></div><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'>50대는 유연성의 감소가 두드러지는 시기이기도 하거든요.</span></div><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'><div align="center" style="text-align: center;"><br></div></span><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'><div align="center" style="text-align: center;"><br></div></span><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'><img width="738" height="579" alt="나이대별 추천 운동 5-01.jpg" src="http://hitgym.tcubemnet.com/static/datas/board/attach/images/2016/09/22/56e3899db509d916c5e40e17ea9e4a96.jpg"></span></div><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'><br></span></div><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'><br></span></div><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 18pt;'><b><span style="color: rgb(255, 255, 0); background-color: rgb(51, 51, 51);">60대 추천 운동</span></b></span></div><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'><br>60대에는 신체적, 정신적 노화 현상이 현저해지는 시기이기 때문에</span></div><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'>체력과 면역력의 저하가 나타나고 감각기와 신경계의 노화도 동반됩니다.</span></div><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'>운동을 하기 전 몸 상태를 체크하는 것이 중요하며,</span></div><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'>복용하는 약물에 따라서도 운동에 미치는 영향이 달라지기 때문에</span></div><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'>이 점 또한 운동을 하기 전 고려해야 될 부분입니다.</span></div><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'>60대 추천 운동은 하루 30~40분 정도의 가벼운 산책이나 맨손체조,</span></div><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'>배드민턴, 단전호흡 등이 있어요.</span></div><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'>느린 속도로 20분 동안 고정식 실내 자전거를 즐기는 것도 좋아요.</span></div><div align="center" style="text-align: center;"><br></div><div align="center" style="text-align: center;"><br></div><div align="center" style="text-align: center;"><br></div><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'>***</span></div><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'><div align="center" style="text-align: center;"><br></div></span><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 12pt;'><div align="center" style="text-align: center;"><br></div></span><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 11pt;'><b>건강은?</b></span></div><div align="center" style="text-align: center;"><span style='font-family: "나눔고딕",NanumGothic,Sans-serif; font-size: 11pt;'><b>히트짐!</b></span><br></div>						</div>
					</div>


				</div>
				<!-- //게시판 전체 영역 -->


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
