<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!-- Blog entries -->
<div class="w3-col l8 s12">
	<!-- Blog entry -->
	<div class="w3-container w3-white w3-margin w3-padding-large">
		<div class="login-panel panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Please Sign In</h3>

<%-- 	 			<c:choose>
					<c:when test=${resultMap.PASSWORD=='failed'}>
						<h1>아이디와 비밀번호가 잘못되었습니다.</h1>
					</c:when>
				</c:choose>  --%>

</div>
			<div class="panel-body">
				<form role="form" method="POST"
					action="<c:url value='/login/check' />">
					<fieldset>
						<div class="form-group">
							<label for="email">MEMBER ID:</label> <input class="form-control"
								placeholder="MEMBER ID(Base form incubator@gmail.com)..."
								name="MEMBER_ID" type="text" autofocus required>
						</div>
						<div class="form-group">
							<label for="password">PASSWORD:</label> <input
								class="form-control" placeholder="PASSWORD..." name="PASSWORD"
								type="PASSWORD" value="" required>
						</div>
						<div class="checkbox">
							<label><input name="remember" type="checkbox"
								value="Remember Me">Remember Me</label>
						</div>
< 						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" /> 
						<button class="btn btn-primary" type="submit">login</button>
						<!--  <a href="/" class="btn btn-lg btn-success btn-block">Login</a>-->
					</fieldset>
				</form>
			</div>
		</div>
	</div>
	<!-- END BLOG ENTRIES -->
</div>
