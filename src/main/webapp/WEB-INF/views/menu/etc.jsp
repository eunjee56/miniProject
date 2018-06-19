<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

	
<!-- Blog entries -->
<div class="w3-col l8 s12">
   <div class="w3-container w3-white w3-margin w3-padding-large">
   <!-- Blog entry -->
   <form class="form-horizontal" role="form" method="post" action="index.php">
   		<div class="form-group">
			<label for="name" class="col-sm-2 control-label">Subject</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" id="name" name="name" value="">
			</div>
		</div>
		<div class="form-group">
			<label for="message" class="col-sm-2 control-label">Contents</label>
			<div class="col-sm-9">
				<textarea class="form-control" rows="10" name="message"></textarea>
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-10 col-sm-offset-2">
				<input id="submit" name="submit" type="submit" value="Send" class="btn btn-primary">
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-10 col-sm-offset-2">
				<! Will be used to display an alert to the user>
			</div>
		</div>
	
		<ul class="pager">
   			<li><a href="#">Previous</a></li>
   			<li><a href="#">Next</a></li>
 		</ul>
	</form>      
  </div>
  <!-- END BLOG ENTRIES -->
</div>
