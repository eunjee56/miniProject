<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!-- Navigation bar with social media icons -->
<div class="w3-bar w3-black w3-hide-small">
	<a href="https://ko-kr.facebook.com/" class="w3-bar-item w3-button"
		target="_blank"><i class="fa fa-facebook-official"></i></a> <a
		href="https://www.instagram.com/?hl=ko" class="w3-bar-item w3-button"
		target="_blank"><i class="fa fa-instagram"></i></a> <a
		href="https://www.snapchat.com/" class="w3-bar-item w3-button"
		target="_blank"><i class="fa fa-snapchat"></i></a> <a
		href="https://www.flickr.com/" class="w3-bar-item w3-button"
		target="_blank"><i class="fa fa-flickr"></i></a> <a
		href="https://twitter.com/?lang=ko" class="w3-bar-item w3-button"
		target="_blank"><i class="fa fa-twitter"></i></a> <a
		href="https://www.linkedin.com/" class="w3-bar-item w3-button"
		target="_blank"><i class="fa fa-linkedin"></i></a> <a
		href="https://plus.google.com/communities/100802320032920241082"
		class="w3-bar-item w3-button google+"><i class="fa fa-search"
		target="_blank"></i></a>
</div>

<!-- w3-content defines a container for fixed size centered content, 
and is wrapped around the whole page content, except for the footer in this example -->
<div class="w3-content" style="max-width: 1600px">

	<!-- Header -->
	<header class="w3-container w3-center w3-padding-48 w3-white">
		<h1 class="w3-xxxlarge">
			<b>FASHION BLOGLIFE</b>
		</h1>
		<h6>
			Welcome to the blog of <span class="w3-tag">Jane's world</span>
		</h6>
	</header>

	<!-- Grid -->
	<div class="w3-row w3-padding w3-border">
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#myNavbar">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav">
						<li class="active"><a href="<c:url value='/'/>">Home</a></li>
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#">Fashion <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a
									href="<c:url value='/fashionBoard/fashionBoardList'/>">List
										All</a></li>
								<li><a href="<c:url value='/menu/clothing'/>">Clothing</a></li>
								<li><a href="<c:url value='/menu/shoes'/>">Shoes</a></li>
								<li><a href="<c:url value='/menu/bag'/>">Bag</a></li>
								<li><a href="<c:url value='/menu/acc'/>">Accessory</a></li>
								<li><a href="<c:url value='/menu/etc'/>">ETC</a></li>
							</ul></li>
						<li><a href="<c:url value='/home/news'/>">News</a></li>
						<li><a href="<c:url value='/home/aboutMe'/>">About me</a></li>
						<li><a href="<c:url value='/board/list'/>">Board</a></li>
					</ul>


					<ul class="nav navbar-nav navbar-right">

						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#">Member <span class="caret"></span></a>
							<ul class="dropdown-menu">


								<c:choose>
									<c:when test="${resultMap.MEMBER_ID!=null}">
										<li><a href="<c:url value='/login/login'/>"><i
												class="fa fa-user fa-fw"></i> ${resultMap.MEMBER_ID}</a></li>
										<li><a href="/member/LoginDelete.jsp" class="btn-success">Logout</a></li>
									</c:when>
									<c:otherwise>
										<li><a href="<c:url value='/login/login'/>"><i
												class="fa fa-user fa-fw"></i> Login</a></li>

								<li><a href="<c:url value='/login/signUp'/>"><i
										class="fa fa-gear"></i> Sign Up</a></li>
									</c:otherwise>
								</c:choose>



							</ul></li>
					</ul>


					<%-- <ul class="nav navbar-nav navbar-right">
     			    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Member <span class="caret"></span></a>
       				<ul class="dropdown-menu">
       				 <% String host = request.getContextPath(); %>
		 			 <% String userID = (String)session.getAttribute("userID");
						if(userID == null){%>
						<li><a href="<c:url value='/login'/>"><i class="fa fa-user fa-fw"></i> Login</a></li>
		  			  <% }else{ %>
          				<li><a href="#"><%=userID%></a></li>
          				<li><a href="<%=host%>/member/LoginDelete.jsp" class="btn-success">Logout</a></li>
					<%} %>
					   <li><a href="<c:url value='/signUp'/>"><i class="fa fa-gear"></i> Sign Up</a></li>
          		    </ul>
        			</li>
                 </ul> --%>
				</div>
			</div>
		</nav>


		<%--     <li class="dropdown">
          <a class="dropdown-toggle" href="#" data-toggle="dropdown"><i class="fa fa-gear"></i> Login</a>
                <div class="dropdown-menu" style="padding: 15px; padding-bottom: 10px;">
   <% String host=request.getContextPath();
      String userID = (String)session.getAttribute("userID");%>
     <% if(userID != null){%>
    	<%=userID %><br><br>
    	 <form action="<c:url value='/home/home'/>" method="POST">
          <input class="btn btn-primary" type="submit" name="logout" value="LOGOUT">
         </form>
    	    <%session.invalidate();%>
     <% }else{ %>       
          <form class="form-horizontal" action="<c:url value='/index'/>" method="GET" accept-charset="UTF-8">
               <input id="sp_uname" class="form-control login" type="text" name="userID" placeholder="Username.." />
               <input id="sp_pass" class="form-control login" type="password" name="password" placeholder="Password.."/><br>
               <input class="btn btn-primary" type="submit" name="submit" value="login" />
          </form>
          <%} %>
              </div>
            </li>
    	  </ul> --%>