<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>



<!-- Blog entries -->
<div class="w3-col l8 s12">
	<!-- Blog entry -->
	<div class="w3-container w3-white w3-margin w3-padding-large">
		<!-- main start -->
				<form method="get" role="form" name="fashionBoardEdit_submit">
				<input id = "action" name ="action" style="display:none" value="#"></p>
		<table class="table table-bordered">
			<caption>글쓰기</caption>
			<tbody>
					<input name="POST_NUM" class="form-control" style="display:none" value="${resultMap.POST_NUM}"></input>
					<tr>
						<th>제목:</th>
						<td><input type="text" placeholder="제목을 입력하세요. " name="TITLE"
							class="form-control" value="${resultMap.TITLE}"></input></td>
					</tr>

					<tr>
						<th>카테고리:</th>
						<td><div id=fashioncategoryDIV></div></td>
					</tr>

					<tr>
						<th>내용:</th>
						<td><textarea cols="30" placeholder="내용을 입력하세요. "
								name="CONTENTS" class="form-control">${resultMap.CONTENTS}</textarea></td>
					</tr>
					<tr>
						<th>test</th>
		
					</tr>
<!-- 				<tr>
						<th>비밀번호:</th>
						<td><input type="password" placeholder="비밀번호를 입력하세요"
							class="form-control" /></td>
					</tr> -->
					<tr>
						<td colspan="2">
							<!-- <input type="button" value="등록" onclick="sendData()" class="pull-right"/>
                    <input type="button" value="reset" class="pull-left"/>
                    <input type="button" value="글 목록으로... " class="pull-right" onclick="javascript:location.href='BoardList.jsp'"/> -->
					<!-- 		<button type="sumiit" name="${_csrf.parameterName}" value ="${_csrf.token}" class="btn btn-default">등록크</button>  -->
							<button id="class="btn btn-default" onclick='Submit(1)'> 등록 </button> 
							<button class="btn btn-default" onclick='Submit(2)'> 수정 </button>
							<a class="btn btn-default" type="reset"> reset </a>
							<a class="btn btn-default" href="<c:url value='/board/BoardList'/>">List</a>
						</td>
					</tr>
			</tbody>
		</table>
		</form>

	</div>
</div>
<script>

	function Submit(index){
		if(index == 1){
			document.getElementById("action").value="fashionBoardInsert";
			document.fashionBoardEdit_submit.action="<c:url value='/fashionBoard' />";
		}
		if(index == 2){
			document.getElementById("action").value="fashionBoardUpdate";
			document.fashionBoardEdit_submit.action="<c:url value='/fashionBoard' />";
		}
		
	}
</script>
<script>
	
   var fn_setFormTagSelect = function(url, id, params) {
      $         .ajax({
               type : "POST",
               url : url,
               data : params,
               cache : false,
               success : function(data) {
                  var formTag = "";
                  formTag += "<select class='form-control' name='FASHION_CATE_NO'>";
                  $.each(data,function(i, item) {
                  formTag += '<option value="'+item.FASHION_CATE_NO+'">'   + item.FASHION_CATE_NAME +  '</option>';});
                  formTag += '</select> ';
                  $('#' + id).html(formTag);
               },
               error : function(xhr, status, exception) {
                  alert("Failure \n (" + status + ")");

                  return false;
               }

            });
   }

   $(document).ready(function() {
      fn_setFormTagSelect("<c:url value='/ws/fashioncategoryList' />", /* --> RESTWScontroller */
      "fashioncategoryDIV");
   });

   </script>
