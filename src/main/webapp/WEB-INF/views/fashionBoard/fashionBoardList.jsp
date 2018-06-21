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
			<h1>Fashion List</h1>

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
							class="${(loop.index+1)%2 == 2 ? 'odd gradeX' : 'even gradeC'}" >
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
				<!-- 여기 줄 아무데나 클릭하면 read로 넘어가게. -->
				<%-- 
				<<tr>
					<td>6</td>
					<td>pants</td>
					<td><a href="<c:url value='/board/BoardRead'/>"> 여름에 코디하기 좋은 청바지는? &nbsp;</a> <span class="badge badge_new">new</span></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>

				<tr>
					<td>5</td>
					<td>Blouse</td>
					<td><a href="<c:url value='/board/BoardRead'/>"> 봄맞이 샤랄라 블라우스를 살펴보자 &nbsp;</a><span class="badge">12</span></td>
					<td>NAME</td>
					<td>2018.05.17</td>
					<td>10</td>
					<td>9</td>
				</tr>
				<tr>
					<td>4</td>
					<td>shoes</td>
					<td>멀리서도 눈에 딱! 띄는 신발을 찾습니다</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>3</td>
					<td></td>
					<td>Skirt</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>2</td>
					<td></td>
					<td>T-shirt</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>1</td>
					<td></td>
					<td>hat</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr> 
--%>
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
				<a class="btn btn-default"
					href="<c:url value='/fashionBoard/fashionBoardEdit'/>">새글</a>
			</div>

		</div>

		<!-- main end -->
	</div>
	<!-- END BLOG ENTRIES -->
</div>


