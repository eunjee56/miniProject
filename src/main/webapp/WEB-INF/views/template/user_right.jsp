<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<!-- About/Information menu -->
   <div class="w3-col l4">
   
<!-- Subscribe -->
     <div class="w3-white w3-margin">
     	<div class="w3-container w3-padding w3-black">
        	<h4>Subscribe</h4>
       	</div>
       	<div class="w3-container w3-white">
        	 <p>Enter your e-mail below and get notified on the latest blog posts.</p>
         	<p><input class="w3-input w3-border" type="text" placeholder="Enter e-mail" style="width:100%"></p>
         	<p><button type="button" onclick="document.getElementById('subscribe').style.display='block'" class="w3-button w3-block w3-red">Subscribe</button></p>
       	</div>
     </div>    
   <hr>
     
<!-- Subscribe Modal -->
	<div id="subscribe" class="w3-modal w3-animate-opacity">
  		<div class="w3-modal-content" style="padding:32px">
    		<div class="w3-container w3-white">
    			<i onclick="document.getElementById('subscribe').style.display='none'" class="fa fa-remove w3-transparent w3-button w3-xlarge w3-right"></i>
      			<h2 class="w3-wide">SUBSCRIBE</h2>
     			<p>Join my mailing list to receive updates on the latest blog posts and other things.</p>
      			<p><input class="w3-input w3-border" type="text" placeholder="Enter e-mail"></p>
      			<button type="button" class="w3-button w3-block w3-padding-large w3-red w3-margin-bottom" onclick="document.getElementById('subscribe').style.display='none'">Subscribe</button>
   			</div>
  		</div>
	</div>
        
<!-- Posts -->
    <div class="w3-white w3-margin">
    	<div class="w3-container w3-padding w3-black">
          <h4>Popular Posts</h4>
        </div>
        <ul class="w3-ul w3-hoverable w3-white">
          <li class="w3-padding-16">
            <img src="<c:url value='/resources/images/avatar_smoke.jpg'/>" alt="Image" class="w3-left w3-margin-right" style="width:50px">
            <span class="w3-large">Denim</span>
            <br>
            <span>Sed mattis nunc</span>
          </li>
          <li class="w3-padding-16">
            <img src="<c:url value='/resources/images/bandmember.jpg'/>" alt="Image" class="w3-left w3-margin-right" style="width:50px">
            <span class="w3-large">Sweaters</span>
            <br>
            <span>Praes tinci sed</span>
          </li>
          <li class="w3-padding-16">
            <img src="<c:url value='/resources/images/workshop.jpg'/>" alt="Image" class="w3-left w3-margin-right" style="width:50px">
            <span class="w3-large">Workshop</span>
            <br>
            <span>Ultricies congue</span>
          </li>
          <li class="w3-padding-16">
            <img src="<c:url value='/resources/images/avatar_smoke.jpg'/>" alt="Image" class="w3-left w3-margin-right w3-sepia" style="width:50px">
            <span class="w3-large">Trends</span>
            <br>
            <span>Lorem ipsum dipsum</span>
          </li>
        </ul>
      </div>
      <hr>

<!-- Advertising -->
      <div class="w3-white w3-margin">
        <div class="w3-container w3-padding w3-black">
          <h4>Advertise</h4>
        </div>
        <div class="w3-container w3-white">
          <div class="w3-container w3-display-container w3-light-grey w3-section" style="height:200px">
            <span class="w3-display-middle">Your AD Here</span>
          </div>
        </div>
      </div>
      <hr>

      <div class="w3-white w3-margin">
        <div class="w3-container w3-padding w3-black">
          <h4>Follow Me</h4>
        </div>
        <div class="w3-container w3-xlarge w3-padding">
          <i class="fa fa-facebook-official w3-hover-opacity"></i>
          <i class="fa fa-instagram w3-hover-opacity"></i>
          <i class="fa fa-snapchat w3-hover-opacity"></i>
          <i class="fa fa-pinterest-p w3-hover-opacity"></i>
          <i class="fa fa-twitter w3-hover-opacity"></i>
          <i class="fa fa-linkedin w3-hover-opacity"></i>
        </div>
      </div>
      <hr>
 
     <!-- END About/Intro Menu -->
    </div>
  <!-- END GRID -->
  </div>
<!-- END w3-content -->
</div>

