<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<%@page import="java.util.List"%>
<%@page import="common_use_bean.Admin_Use_Bean"%>
<%@page import="common.Common_Things"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.TimeZone"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%><html>
<head>


	<script src="<%=Common_Things.url %>/campus/admin/common/js/jquery.min.js"></script>
    <script src="<%=Common_Things.url %>/campus/admin/common/js/popper.js"></script>
    <script src="<%=Common_Things.url %>/campus/admin/common/js/bootstrap.min.js"></script>
	<script src="<%=Common_Things.url %>/campus/admin/common/js/main.js"></script>
		
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
		
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="<%=Common_Things.url %>/campus/admin/common/css/style.css">


</head>
<body>


	<%
	List<Admin_Use_Bean> list1=(List<Admin_Use_Bean>)session.getAttribute("ss_ADMIN_bean");
	Admin_Use_Bean obj_Admin_Use_Bean=new Admin_Use_Bean();
	if(list1==null){
		
		
		
		session.setAttribute("ss_school_index_message","Opps..Your session expired,Please Login Again");
	%>
		<script type="text/javascript">
			window.location.href="<%=Common_Things.url %>";
		</script>
	<%
	}else{
	
	Iterator<Admin_Use_Bean> it_list=list1.iterator();
	obj_Admin_Use_Bean=it_list.next();
	
	%>


        <section class="layout">
            <!-- sidebar menu -->
            <aside class="sidebar canvas-left" style="background-color:#28a745;">
				<nav id="sidebar">
			
					<div class="p-4 pt-3" ">
					<div style="text-align: center;"><div style="background-color:white;"><img src="<%=Common_Things.url %>/img/nsbmlogo.png" style="width: 80%; height:80%;"></div>
					<h1><a href="index.html" class="logo">
						NSBM <br>Library Management System</a></h1></div>
					  
				<ul class="list-unstyled components mb-5">
				  <li>
					<a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"> <i class="fa fa-book"></i> Books</a>
					<ul class="collapse list-unstyled" id="homeSubmenu">
					<li>
						<a href="<%=Common_Things.url %>/search-book/">Search Books</a>
					</li>
					<li>
						<a href="<%=Common_Things.url %>/admin-add-book/">Add Books</a>
					</li>
					<li>
						<a href="<%=Common_Things.url %>/view-all-books/">View All Books</a>
					</li>
					</ul>
				  </li>
				  <li>
					  <a href="<%=Common_Things.url %>/admin-add-category"> <i class="fa fa-edit"></i> Categories</a>
				  </li>
				  <li>
					<a href="<%=Common_Things.url %>/add-author"> <i class="fa fa-coffee"></i> Author</a>
				</li>
				  <li>
				  <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">   <i class="fa fa-users"></i> Students</a>
				  <ul class="collapse list-unstyled" id="pageSubmenu">
					<li>
						<a href="<%=Common_Things.url %>/student-search/">Search Student</a>
					</li>
					<li>
						<a href="<%=Common_Things.url %>/add-student/">Add Student</a>
					</li>
					<li>
						<a href="<%=Common_Things.url %>/view-all-students/">View All Students</a>
					</li>
				  </ul>
				  </li>
				  
				  <li>
					<a href="#pageSubmenu1" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"> <i class="fa fa-legal"></i> Issue History</a>
					<ul class="collapse list-unstyled" id="pageSubmenu1">
					  <li>
						  <a href="<%=Common_Things.url %>/view-all-pending-issues">Pending Books</a>
					  </li>
					  <li>
						  <a href="<%=Common_Things.url %>/complete-issue-history/">Issue History</a>
					  </li>
					  
					</ul>
					</li>
					
				  <li>
				  <a href="<%=Common_Things.url %>/edit-profile-admin/"><i class="fa fa-cog"></i> Admin Settings</a>
				  </li>
				  <li>
				  <a href="<%=Common_Things.url %>/Admin_Sign_Out_Controller"> <i class="fa fa-sign-out"></i> Logout</a>
				  </li>
				
	
						</div>
			</nav>
                
              
	 </aside>
            <!-- /sidebar menu -->
	
	<%
	}
	%>
	

</body>
</html>