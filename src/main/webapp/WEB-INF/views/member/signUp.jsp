<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

 <!-- Blog entries -->
<div class="w3-col l8 s12">
  <!-- Blog entry -->
	<div class="w3-container w3-white w3-margin w3-padding-large">
    	<div id="page-wrapper">
 	   		<div class="row">
    	   		<div class="col-lg-12">
        	   		<div class="panel panel-default">
            	   		<div class="panel-heading">
                        	 Sign Up Form
                   		</div>
                   	<div class="panel-body">
                   		<div class="row">
                        	<div class="col-lg-12">
                            	<form role="form" method="POST" action="<c:url value='/member/read' />">
									<div class="form-group">
                                		<label>MEMBER_ID</label>
                                    	<input class="form-control" type="text" name="MEMBER_ID">
                                        <p class="help-block">Base form incubator@gmail.com</p>
                                    </div>
                                    <div class="form-group">
                                        <label>PASSWORD</label>
                                        <input class="form-control" type="password" name="PASSWORD">
                                    </div>
                                    <div class="form-group">
                                        <label>MEMBER NAME</label>
                                        <input class="form-control" type="text" name="NAME">
                                    </div>
                                    <div class="form-group">
                                        <label>CELLPHONE</label>
                                        <input class="form-control" type="text" name="CELLPHONE" placeholder="010-0000-0000">
                                        <p class="help-block">Base form 010-0000-0000</p>
                                    </div>
                                        <button type="submit" class="btn btn-default">Submit Button</button>
                                        <button type="reset" class="btn btn-default">Reset Button</button>
                                </form>
                            </div>
                        </div>
                   </div>
                  <!-- /.panel-body -->
              </div>
                    <!-- /.panel -->
              </div>
               <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->
    </div>
<!-- END BLOG ENTRIES -->
</div>
  