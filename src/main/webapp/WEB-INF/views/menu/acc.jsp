<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<!-- Blog entries -->
<div class="w3-col l8 s12">
  <!-- Blog entry -->
	<div class="w3-container w3-white w3-margin w3-padding-large">
  		<div class="w3-center">
    		<h3>Men in Hats!</h3>
    		<h5>Title description, <span class="w3-opacity">April 23, 2016</span></h5>
    	</div>
  		<div class="w3-justify">
  			<img src="<c:url value='/resources/images/man_hat.jpg'/>" alt="Men in Hats" style="width:100%" class="w3-padding-16">
    		<p><strong>Hats!</strong> The trend this summer is hats for men!</p>
    		<p>Some text about this blog entry. Fashion fashion and mauris neque quam, fermentum ut nisl vitae, convallis maximus nisl. Sed mattis nunc id lorem euismod placerat. Vivamus porttitor magna enim, ac accumsan tortor cursus at. Phasellus sed ultricies
            mi non congue ullam corper. Praesent tincidunt sedtellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>
        	<p class="w3-left"><button class="w3-button w3-white w3-border" onclick="likeFunction(this)"><b><i class="fa fa-thumbs-up"></i> Like</b></button></p>
        	<p class="w3-right"><button class="w3-button w3-black" onclick="myFunction('demo2')"><b>Replies Â </b> <span class="w3-tag w3-white">2</span></button></p>
        	<p class="w3-clear"></p>
          
       <!-- Example of comment field -->
        	<div id="demo2" style="display:none">
     	  		<div class="w3-row">
          			<hr>
           			<div class="w3-col l2 m3">
        	   			<img src="<c:url value='/resources/images/girl_train.jpg'/>" style="width:90px;">
        	 		</div>
           			<div class="w3-col l10 m9">
           				<h4>Amber <span class="w3-opacity w3-medium">April 26, 2015, 10:52 PM</span></h4>
                		<p>Love your blog page! Simply the best! Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p><br>
          			</div>
           		</div>
           		<div class="w3-row w3-margin-bottom">
             		<div class="w3-col l2 m3">
                		<img src="<c:url value='/resources/images/girl.jpg'/>" style="width:90px;">
              		</div>
             		<div class="w3-col l10 m9">
               			 <h4>Angie <span class="w3-opacity w3-medium">April 23, 2015, 9:12 PM</span></h4>
               			 <p>Love hats!!</p>
              		</div>
           		</div>
         	 </div>
        </div>
      </div>
     
    <!-- END BLOG ENTRIES -->
    </div>
