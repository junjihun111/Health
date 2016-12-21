<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.onlynum {
	ime-mode: inactive;
}

.row {
	border: 1px;
}
</style>
<script type="text/javascript" src="/HealthJJang/scripts/jquery.js"></script>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						$("#errordiv").hide();
						$("#errorPassword").hide();
						$(".onlynum").keyup(function() {
							$(this).val($(this).val().replace(/[^0-9]/g, ""));
						});
						$(".onlyeng").keyup(function() {
							$(this).val($(this).val().replace(/[^\!-z]/g, ""));
						});
						$("#passwordCheck")
								.on(
										"keyup",
										function() {
											if (this.value != $("#password")
													.val()) {
												$("#errorPassword")
														.html(
																"<span style='font-size:small;color:red;'>비밀번호가 같지 않습니다.</span>");
												$("#errorPassword").show();
											} else {
												$("#errorPassword")
														.html(
																"<span style='font-size:small;color:green;'>비밀번호가 같습니다.</span>");
												$("#errorPassword").show();
											}
										});
						$("#phone2").on("keyup", function() {
							if (this.value.length > 4) {
								alert("전화번호는 4자리 이하입니다.");
								$("#phone2").val("");
							}

						});
						$("#phone3").on("keyup", function() {
							if (this.value.length > 4) {
								alert("전화번호는 4자리 이하입니다.");
								$("#phone3").val("");
							}

						});
					});
	function error2() {
		var memberNo = "${sessionScope.member.memberNo}";

		var password = $("#password").val();
		var passwordCheck = $("#passwordCheck").val();
		var buyerName = $("#buyerName").val();
		var postCode = $("#sample3_postcode").val();
		var address = $("#sample3_address").val();
		var phone2 = $("#phone2").val();
		var phone3 = $("#phone3").val();
		errorMessage = "";
		if (memberNo != "") {
			if (postCode == "") {
				errorMessage = errorMessage
						+ "<span style='font-size: small;color: red;'>우편번호를 입력하세요.</span><br>";
			}
			if (address == "") {
				errorMessage = errorMessage
						+ "<span style='font-size: small;color: red;'>주소를 입력하세요.</span><br>";
			}
			if (phone2 == "" || phone3 == "") {
				errorMessage = errorMessage
						+ "<span style='font-size: small;color: red;'>전화번호를 입력하세요.</span><br>";
			}
			if (errorMessage == "") {
				return true;
			} else {
				$("#errordiv").html(errorMessage);

				$("#errordiv").show();

				return false;
			}
		}

		if (buyerName == "") {
			
			alert(buyerName);	$(document)
			.ready(
					function() {
						$("#errordiv").hide();
						$("#errorPassword").hide();
						$(".onlynum").keyup(function() {
							$(this).val($(this).val().replace(/[^0-9]/g, ""));
						});
						$(".onlyeng").keyup(function() {
							$(this).val($(this).val().replace(/[^\!-z]/g, ""));
						});
						$("#passwordCheck")
								.on(
										"keyup",
										function() {
											if (this.value != $("#password")
													.val()) {
												$("#errorPassword")
														.html(
																"<span style='font-size:small;color:red;'>비밀번호가 같지 않습니다.</span>");
												$("#errorPassword").show();
											} else {
												$("#errorPassword")
														.html(
																"<span style='font-size:small;color:green;'>비밀번호가 같습니다.</span>");
												$("#errorPassword").show();
											}
										});
						$("#phone2").on("keyup", function() {
							if (this.value.length > 4) {
								alert("전화번호는 4자리 이하입니다.");
								$("#phone2").val("");
							}

						});
						$("#phone3").on("keyup", function() {
							if (this.value.length > 4) {
								alert("전화번호는 4자리 이하입니다.");
								$("#phone3").val("");
							}

						});
					});
	function error2() {
		var memberNo = "5424105";
	alert("2");
		var password = $("#password").val();
		var passwordCheck = $("#passwordCheck").val();
		var buyerName = $("#buyerName").val();
		var postCode = $("#sample3_postcode").val();
		var address = $("#sample3_address").val();
		var phone2 = $("#phone2").val();
		var phone3 = $("#phone3").val();
		errorMessage = "";
		if (memberNo != "") {
			if (postCode == "") {
				errorMessage = errorMessage
						+ "<span style='font-size: small;color: red;'>우편번호를 입력하세요.</span><br>";
			}
			if (address == "") {
				errorMessage = errorMessage
						+ "<span style='font-size: small;color: red;'>주소를 입력하세요.</span><br>";
			}
			if (phone2 == "" || phone3 == "") {
				errorMessage = errorMessage
						+ "<span style='font-size: small;color: red;'>전화번호를 입력하세요.</span><br>";
			}
			if (errorMessage == "") {
				return true;
			} else {
				$("#errordiv").html(errorMessage);

				$("#errordiv").show();

				return false;
			}
		}

		if (buyerName == "") {
			
			alert(buyerName);
			errorMessage = errorMessage
					+ "<span style='font-size: small;color: red;'>이름을 입력하세요</span><br>";
		}
		if (postCode == "") {
			errorMessage = errorMessage
					+ "<span style='font-size: small;color: red;'>우편번호를 입력하세요.</span><br>";
		}
		if (address == "") {
			errorMessage = errorMessage
					+ "<span style='font-size: small;color: red;'>주소를 입력하세요.</span><br>";
		}
		if (phone2 == "" || phone3 == "") {
			errorMessage = errorMessage
					+ "<span style='font-size: small;color: red;'>전화번호를 입력하세요.</span><br>";
		}
		if (password == "") {
			errorMessage = errorMessage
					+ "<span style='font-size: small;color: red;'>비밀번호를 입력하세요.</span><br>";
		}
		if (password.length >= 7) {
			errorMessage = errorMessage
					+ "<span style='font-size: small;color: red;'>비밀번호는 8자 이하입니다.</span><br>";

		}
		if (passwordCheck == "") {
			errorMessage = errorMessage
					+ "<span style='font-size: small;color: red;'>비밀번호 확인을 입력하세요.</span><br>";
		}
		if (errorMessage == "") {
			return true;
		} else {
			$("#errordiv").html(errorMessage);

			$("#errordiv").show();

			return false;
		}

	}

			errorMessage = errorMessage
					+ "<span style='font-size: small;color: red;'>이름을 입력하세요</span><br>";
		}
		if (postCode == "") {
			errorMessage = errorMessage
					+ "<span style='font-size: small;color: red;'>우편번호를 입력하세요.</span><br>";
		}
		if (address == "") {
			errorMessage = errorMessage
					+ "<span style='font-size: small;color: red;'>주소를 입력하세요.</span><br>";
		}
		if (phone2 == "" || phone3 == "") {
			errorMessage = errorMessage
					+ "<span style='font-size: small;color: red;'>전화번호를 입력하세요.</span><br>";
		}
		if (password == "") {
			errorMessage = errorMessage
					+ "<span style='font-size: small;color: red;'>비밀번호를 입력하세요.</span><br>";
		}
		if (password.length >= 7) {
			errorMessage = errorMessage
					+ "<span style='font-size: small;color: red;'>비밀번호는 8자 이하입니다.</span><br>";

		}
		if (passwordCheck == "") {
			errorMessage = errorMessage
					+ "<span style='font-size: small;color: red;'>비밀번호 확인을 입력하세요.</span><br>";
		}
		if (errorMessage == "") {
			return true;
		} else {
			$("#errordiv").html(errorMessage);

			$("#errordiv").show();

			return false;
		}

	}
</script>

<div class="container">
	<div class="row">
		

			<h2>배송입력칸</h2>
			<div class="row">
				<div class="col-md-12">

				<form action="/HealthJJang/addOrderation.do"
					class="form-horizontal center-block col-md-6"
					onsubmit="return error2();" style="border: 1px solid;padding-right: 20px;padding-right: 20px;padding-top:10px;padding-bottom: 10px;border-radius: 20px;border-color: gray; margin-bottom: 10px;">
					<div id="errordiv"></div>
					<div class="form-group">

						<label class="control-label col-md-4" for="productName">주문상품:</label>
						<div class="col-md-8">
							<input type="text" id="productName" class="form-control"
								name="productName" readonly="readonly"
								value="${requestScope.result.productName}"
								style="text-align: right; background-color: #A4A4A4;">
						</div>
						<br>
					</div>
					<div class="form-group">
						<label class="control-label col-md-4" for="productAmount">주문수량:
						</label>
						<div class="col-md-8">
							<input type="text" class="form-control" id="productAmount"
								name="productAmount" readonly="readonly"
								value="${requestScope.result.userAmount}"
								style="text-align: right; background-color: #A4A4A4;">
						</div>
						<br>
					</div>
					<div class="form-group">
						<label class="control-label col-md-4">주문가격:</label>
						<div class="col-md-8">
							<input type="text" class="form-control" name="price"
								readonly="readonly" value="${requestScope.result.price}"
								style="text-align: right; background-color: #A4A4A4;">
						</div>

						<br>
					</div>
					<div class="form-group">
						<label class="control-label col-md-4">분류:</label>
						<div class="col-md-8">
							<input type="text" class="form-control" name="code"
								readonly="readonly" value="${requestScope.result.category}"
								style="text-align: right; background-color: #A4A4A4;">
						</div>
						<br>
					</div>
					<c:choose>
						<c:when test="${sessionScope.member.memberNo == null }">
							<div class="form-group">
								<label class="control-label col-md-4">이름 :</label>
								<div class="col-md-8">
									<input type="text" name="buyerName" class="form-control"
										id="buyerName">
								</div>
								<br>
							</div>
						</c:when>
						<c:otherwise>
							<div class="form-group">
								<label class="control-label col-md-4">이름 :</label>
								<div class="col-md-8">
									<input type="text" class="form-control" readonly="readonly"
										value="${sessionScope.member.memberName}" name="buyerName"
										style="text-align: right; background-color: #A4A4A4;">
								</div>
							</div>
						</c:otherwise>
					</c:choose>
					<div class="form-group">
						<label class="control-label col-md-4">우편번호:</label>
						<div class="col-md-8">
							<input type="text" class="form-control" name="postalNumber"
								id="sample3_postcode" placeholder="우편번호">
						</div>
					</div>
					<div class="form-group">
					
					<div class="col-md-4"></div>
					<div class="col-md-2">-</div>
					<div class="col-md-6"><input type="button" onclick="sample3_execDaumPostcode()"
						value="우편번호 찾기"></div>
					</div>
					<div id="wrap"
						style="display: none; border: 1px solid; width: 500px; height: 300px; margin: 5px 0; position: relative">
						<img
							src="//i1.daumcdn.net/localimg/localimages/07/postcode/320/close.png"
							id="btnFoldWrap"
							style="cursor: pointer; position: absolute; right: 0px; top: -1px; z-index: 1"
							onclick="foldDaumPostcode()" alt="접기 버튼">
					</div>
					<div class="form-group">
						<div class="col-md-4"></div>
						<div class="col-md-8">
							<input type="text" class="form-control" id="sample3_address"
								name="orderationAddress" class="d_form large" placeholder="주소">
						</div>
					</div>
					<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
					<script>
						// 우편번호 찾기 찾기 화면을 넣을 element
						var element_wrap = document.getElementById('wrap');

						function foldDaumPostcode() {
							// iframe을 넣은 element를 안보이게 한다.
							element_wrap.style.display = 'none';
						}

						function sample3_execDaumPostcode() {
							// 현재 scroll 위치를 저장해놓는다.
							var currentScroll = Math.max(
									document.body.scrollTop,
									document.documentElement.scrollTop);
							new daum.Postcode(
									{
										oncomplete : function(data) {
											// 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

											// 각 주소의 노출 규칙에 따라 주소를 조합한다.
											// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
											var fullAddr = data.address; // 최종 주소 변수
											var extraAddr = ''; // 조합형 주소 변수

											// 기본 주소가 도로명 타입일때 조합한다.
											if (data.addressType === 'R') {
												//법정동명이 있을 경우 추가한다.
												if (data.bname !== '') {
													extraAddr += data.bname;
												}
												// 건물명이 있을 경우 추가한다.
												if (data.buildingName !== '') {
													extraAddr += (extraAddr !== '' ? ', '
															+ data.buildingName
															: data.buildingName);
												}
												// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
												fullAddr += (extraAddr !== '' ? ' ('
														+ extraAddr + ')'
														: '');
											}

											// 우편번호와 주소 정보를 해당 필드에 넣는다.
											document
													.getElementById('sample3_postcode').value = data.zonecode; //5자리 새우편번호 사용
											document
													.getElementById('sample3_address').value = fullAddr;

											// iframe을 넣은 element를 안보이게 한다.
											// (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
											element_wrap.style.display = 'none';

											// 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
											document.body.scrollTop = currentScroll;
										},
										// 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
										onresize : function(size) {
											element_wrap.style.height = size.height
													+ 'px';
										},
										width : '100%',
										height : '100%'
									}).embed(element_wrap);

							// iframe을 넣은 element를 보이게 한다.
							element_wrap.style.display = 'block';
						}
					</script>
					&nbsp;&nbsp;<br>연락처 <select name="phone1"><option>010</option>
						<option>011</option>
						<option>016</option>
						<option>017</option></select> &nbsp; <input class="onlynum" type="text"
						id="phone2" name="phone2" style="ime-mode: inactive;" size="4">
					&nbsp; <input type="text" id="phone3" style="ime-mode: inactive;"
						class="onlynum" name="phone3" size="4"><br>
					<c:choose>
						<c:when test="${sessionScope.member == null }">

							<br>
							<div class="form-group">
				 <label class="control-label col-md-4">비밀번호</label><div class="col-md-8"> <input type="password" class="form-control" name="password" id="password">
							</div>
							</div>
							<br>
				<div class="form-group">
				<label class="control-label col-md-4">비밀번호 확인</label><div class="col-md-8"> <input type="password" class="form-control" id="passwordCheck"></div>
						</div>
						</c:when>
						<c:otherwise>
							<input type="hidden" name="memberNo"
								value="${sessionScope.member.memberNo }">
						</c:otherwise>
					</c:choose>
					<div id="errorPassword"></div>
					
					<input type="hidden" name="productNo"
						value="${requestScope.result.productNo}">
						<div class="form-group">
<input type=button style="margin-top:10px;width:100px;height: 40px" class="btn btn-danger" value="되돌아가기" onClick="history.back();"><div class="col-md-4"></div> <input type="submit" class="btn btn-success" value="Buying!" style="margin-top:10px;margin-left:20px;width:100px;height: 40px">
				</div>
				</form>
				
					</div>
			</div>
		</div>
	</div>







