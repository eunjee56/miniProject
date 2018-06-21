<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!-- Blog entries -->
<div class="w3-col l8 s12">
	<!-- Blog entry -->
	<div class="w3-container w3-white w3-margin w3-padding-large">
		<!-- main start -->

		<div class="div_table table-responsive">
			<table class="table table-hover">
			
				<thead>
					<th>글번호</th>
					<th>카테고리</th>
					<th>글제목</th>
					<th>작성자</th>	
					<th>작성일</th>
					<th>조회수</th>
					<th>공감수</th>
				</thead>

				<tbody>
					<c:forEach items="${resultList}" var="resultData" varStatus="loop">
						<tr
							class="${(loop.index+1)%2 == 2 ? 'odd gradeX' : 'even gradeC'}" onclick ="location.href='/board/list'">
							<td>${resultData.POST_NUM}</td>
							<td>${resultData.FASHION_CATE_NAME}</td>
							<td>${resultData.TITLE}</td>
							<td>${resultData.ID}</td>
							<td>${resultData.WIRTTENDATE}</td>
							<td>${resultData.VIEWPOINTS}</td>
							<td>${resultData.THUMBSUP}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="board_footer">
			<div class="col-sm-4"></div>
			<div class="col-sm-4">
				<ul class="pagination">
					<li><a href="#"><</a></li>
					<li class="active"><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">></a></li>
				</ul>
			</div>
			<div class="col-sm-3"></div>
			<div class="col-sm-1">
				<a class="btn btn-default" href="<c:url value='/board/BoardEdit'/>">새글</a>
			</div>

		</div>

		<!-- main end -->
	</div>
	<!-- END BLOG ENTRIES -->
</div>


