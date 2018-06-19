<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<!-- Blog entries -->
   <div class="w3-col l8 s12">
   <!-- Blog entry -->
   		<div class="w3-container w3-white w3-margin w3-padding-large">
        	<div class="w3-center">
          		<h3>TITLE HEADING</h3>
          		<h5>Title description, <span class="w3-opacity">May 2, 2016</span></h5>
        	</div>

        <div class="w3-justify">
         	 <img src="<c:url value='/resources/images/girl_hat.jpg'/>" alt="Girl Hat" style="width:100%" class="w3-padding-16">
         	 <p><strong>More Hats!</strong> I am crazy about hats these days. Some text about this blog entry. Fashion fashion and mauris neque quam, fermentum ut nisl vitae, convallis maximus nisl. Sed mattis nunc id lorem euismod placerat. Vivamus porttitor
           	 magna enim, ac accumsan tortor cursus at. Phasellus sed ultricies mi non congue ullam corper. Praesent tincidunt sedtellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>
          	 <p>Sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
             <p class="w3-left"><button class="w3-button w3-white w3-border" onclick="likeFunction(this)"><b><i class="fa fa-thumbs-up"></i> Like</b></button></p>
          	 <p class="w3-right"><button class="w3-button w3-black" onclick="myFunction('demo1')" id="myBtn"><b>Replies  </b> <span class="w3-tag w3-white">1</span></button></p>
             <p class="w3-clear"></p>
        	<div class="w3-row w3-margin-bottom" id="demo1" style="display:none">
            	<hr>
            	<div class="w3-col l2 m3">
            		<img src="<c:url value='/resources/images/avatar_smoke.jpg'/>" style="width:90px;">
            	</div>
              	<div class="w3-col l10 m9">
                	<h4>George <span class="w3-opacity w3-medium">May 3, 2015, 6:32 PM</span></h4>
                	<p>Great blog post! Following</p>
          	    </div>
          	</div>
        </div>
      </div>
      <hr>
    </div>

