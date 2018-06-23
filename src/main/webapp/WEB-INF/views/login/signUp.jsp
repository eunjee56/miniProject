<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!-- <script type="text/javascript">
	$(document).ready(function() {
		$('#idcheck').click(function() {
			$.ajax({
				type : 'POST',
				url : "/ws/idcheck",
				dataType : 'jason',
				data : {
					"MEMBER_ID" : $('#MEMBER_ID').val()
				},

				success : function(data) {

					if ($.trim(data) == 1) {
						alert("이미 존재하는 아이디입니다.");
						$('#idcheck').val("");
						return false;
					} else {
						alert("사용가능한 아이디입니다");
						return false;
					}
				}
			}); //end ajax    
		}); //end on    
	});

	/* 출처: http://autumnly.tistory.com/61 [F For You] */
	
	
	function idcheck{
	 document.getElementById("action").value="idcheck";
	 
	}
</script> -->

<!-- <script>
	function check() {
		var form = docment.userInfo;
		if (!form.id.value) {
			alert("아이디를 입력하세요.");
			return false;
		}

		if (form.idDuplication.value != "idCheck") {
			alert("아이디 중복체크를 해주세요.");
			return false;
		}

		if (!form.password.value != form.passwordcheck.value) {
			alert("비밀번호를 동일하게 입력하세요.");
			return false;
		}

		if (!form.name.value) {
			alert("이름을 입력하세요");
			return false;
		}
		
		if(isNaN(form.birthdd.value)){
            alert("날짜는 숫자만 입력가능합니다.");
            return false;
        }
        
		 if(isNaN(form.tell.value)){
             alert("전화번호는 - 제외한 숫자만 입력해주세요.");
             return false;
         }
	     // 아이디 중복체크 
/*  출처: http://all-record.tistory.com/147 [세상의 모든 기록] */
	}
	
	
	
	function checkValue(){
		if(document.userInfo.id.value==""){
			alter("ID를 입력하세요");
			return;
		}
		url=""
	}
</script>
 -->

<script type="text/javascript">
	var count = 0;
	function idcheck() {
		var text = $("#MEMBER_ID").val();
		var regexp = /[0-9a-zA-Z]/; // 숫자,영문,특수문자

		// var regexp = /[0-9]/; // 숫자만
		//      var regexp = /[a-zA-Z]/; // 영문만

		for (var i = 0; i < text.length; i++) {
			if (text.charAt(i) != " " && regexp.test(text.charAt(i)) == false) {
				alert("한글이나 특수문자는 입력불가능 합니다.");
				return false;
			}
		}
		overlapCheck();
	}

	function overlapCheck() {
		var param = "MEMBER_ID" + ":" + $("#MEMBER_ID").val();
		if ($("#MEMBER_ID").val() == '' || $("#MEMBER_ID").val() == null) {
			alert("아이디를 입력하세요");
			return false;
		}
		$.ajax({

			url : "<c:url value='/ws/idcheck'/>",
			type : "POST",
			data : {
				'MEMBER_ID' : $("#MEMBER_ID").val()
			},
			//cache : false,
			//async : false,
			dataType : "text",

			success : function(data) {
				if (data == "") {
					count = 1;
					alert("사용 가능한 아이디입니다.")
				} else {
					alert("아이디가 중복이 됩니다. 다시 입력 해주세요");
					return false;
				}
			},

			error : function(request, status, error) {
				if (request.status != '0') {
					alert("code : " + request.status + "\r\nmessage : "
							+ request.reponseText + "\r\nerror : " + error);
				}
			}
		});
	}

	/* 출처: http://lsk925.tistory.com/42?category=563175 [초보 개발자의 블로그] */
</script>


<!-- Blog entries -->
<div class="w3-col l8 s12">
	<!-- Blog entry -->
	<div class="w3-container w3-white w3-margin w3-padding-large">
		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">Sign Up Form</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-lg-12">
									<form role="form" method="POST" name="userInfo"
										action="<c:url value='/member/insert' />">
										<div class="form-group">
											<label>MEMBER_ID</label> <input class="form-control"
												type="text" name="MEMBER_ID" maxlenght="70" id="MEMBER_ID"
												onkeydown="inputIdcheck()">
											<!-- 	<button id="idcheck" onclick='idcheck()'>id중복검사</button> -->

											<!--  -->
											<input type="button" value="중복확인" onclick="idcheck()">

											<input type="hidden" name="idDuplication" value="idUncheck">
										</div>
										<div class="form-group">
											<label>PASSWORD</label> <input class="form-control"
												type="password" name="PASSWORD"> <label>PASSWORDcheck</label>
											<input class="form-control" type="password"
												name="passwordcheck">
										</div>
										<div class="form-group">
											<label>MEMBER NAME</label> <input class="form-control"
												type="text" name="NAME">
										</div>
										<div class="form-group">
											<label>CELLPHONE</label> <input class="form-control"
												type="text" name="TEL" placeholder="01000000000">
											<p class="help-block">Base form 01000000000</p>
										</div>
										<div>
											<label>BIRTHDAY</label> <input class="form-control"
												type="text" name="birthdd" placeholder="180622">
										</div>
										<div class="form-group">
											<label>EMAIL</label> <input class="form-control" type="text"
												name="EMAIL" placeholder="abcedfg@hijklmn">
											<p class="help-block">Base form abcedfg@hijklmn</p>
										</div>
										<div>

											<label>Prefer Fashion Style</label></br> <input type="checkbox"
												name="style" value="casual">Casual <input
												type="checkbox"> <input type="checkbox" name="style"
												value="formal">formal <input type="checkbox">
											<input type="checkbox" name="style" value="casual">vintage
											<input type="checkbox">

										</div>
										</br> </br> <input type="hidden" name="${_csrf.parameterName}"
											value="${_csrf.token}" />
										<button type="submit" class="btn btn-default">
											<%-- ${paramMap.action == 'update' ? 'Update' : 'Insert' } --%>
											Submit Button
										</button>
										<button type="reset" class="btn btn-default">Reset
											Button</button>
									</form>
								</div>
							</div>
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /#page-wrapper -->
	</div>
	<!-- END BLOG ENTRIES -->
</div>
