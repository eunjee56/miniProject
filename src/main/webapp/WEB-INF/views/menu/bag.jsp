<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!-- Blog entries -->
<div class="w3-col l8 s12">
	<div class="w3-container w3-white w3-margin w3-padding-large">
		<!-- Blog entry -->


		<c:forEach items="${resultList}" var="resultData" varStatus="loop">

			<div class="form-group">
				<label for="name" class="col-sm-2 control-label">Title</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" id="name" name="title"
						value="${resultData.TITLE} ">
				</div>
			</div>

			<div class="form-group">
				<label for="message" class="col-sm-2 control-label">Contents</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" id="name" name="contents"
						value="${resultData.CONTENTS} ">
				</div>
			</div>

		</c:forEach>
		



		<div class="form-group">
			<div class="col-sm-10 col-sm-offset-2">
				<! Will be used to display an alert to the user>
			</div>
		</div>

		<ul class="pager">
			<li><button id="submit" name="submit" type="submit"
					class="btn btn-primary">
					<a href="<c:url value='/board/write'/>">write</a>
				</button></li>
			<li><a href="#">Previous</a></li>
			<li><a href="#">Next</a></li>
		</ul>
		</form>
	</div>
	<!-- END BLOG ENTRIES -->
</div>
