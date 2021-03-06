<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!-- Blog entries -->
<div class="w3-col l8 s12">
	<!-- Blog entry -->
	<div class="w3-container w3-white w3-margin w3-padding-large">
		<!-- main start -->
		<table class="table table-bordered">
			<thead>
			<caption>글쓰기</caption>
			</thead>
			<tbody>
				<form action="write_ok.jsp" method="post"
					encType="multiplart/form-data">

					<tr>
						<th>제목:</th>
						<td><input type="text" placeholder="제목을 입력하세요. " name="title"
							class="form-control" /></td>
					</tr>

					<tr>
						<th>카테고리:</th>
						<div id=categoryDIV></div>
						<td><input type="text" placeholder="카테고리를 입력하세요. "
							name="category" class="form-control" /></td>
					</tr>
				<tr>
					<th>내용:</th>
					<td><textarea cols="30" placeholder="내용을 입력하세요. "
							name="content" class="form-control"></textarea></td>
				</tr>
				<tr>
					<th>첨부파일(이미지):</th>
					<td><input type="file" placeholder="파일을 선택하세요. "
						name="filename" class="form-control" /></td>
				</tr>
				<tr>
					<th>비밀번호:</th>
					<td><input type="password" placeholder="비밀번호를 입력하세요"
						class="form-control" /></td>
				</tr>
				<tr>
					<td colspan="2">
						<!-- <input type="button" value="등록" onclick="sendData()" class="pull-right"/>
                    <input type="button" value="reset" class="pull-left"/>
                    <input type="button" value="글 목록으로... " class="pull-right" onclick="javascript:location.href='BoardList.jsp'"/> -->
						<a class="btn btn-default" onclick="sendData()"> 등록 </a> <a
						class="btn btn-default" type="reset"> reset </a> <a
						class="btn btn-default" href="<c:url value='/board/BoardList'/>">
							List</a>
					</td>
				</tr>
				</form>
			</tbody>
		</table>

	</div>
</div>
