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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

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

<title>Library Management | </title>


				<header class="header header-fixed navbar bg-white">

            <div class="brand ">
                <a href="#" class="fa fa-bars off-left visible-xs" data-toggle="off-canvas" data-move="ltr"></a>

                 <a href="<%=Common_Things.url %>/admin-home" class="navbar-brand ">
                  
					<img src="<%=Common_Things.url %>/img/nsbmcrest.png" style="width: 20px; height:25px; margin-right:10px;">
					<span style="font-size:11px;">Library Management System </span>
					

                </a>
            </div>
					<div class="collapse navbar-collapse pull-left no-padding" id="hor-menu">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="#">

					<%
					TimeZone.setDefault(TimeZone.getTimeZone("Asia/Colombo")); 
					SimpleDateFormat format = new SimpleDateFormat("dd-MMM-yyyy hh:mm a");
					 
					  Date today4 = new Date();
						
						
				       String date4 = format.format(today4);
					
					%>




                            <span><%=date4 %></span>
                           
                        </a>
                      
                    </li>
                    
                   
                </ul>
            </div>
            

            <ul class="nav navbar-nav navbar-right off-right">
                <li class="hidden-xs">
                    <a href="<%=Common_Things.url %>/edit-profile-admin/">
                        Admin Settings
                    </a>
                </li> 
				
                 
                <li class="quickmenu mg-r-md">
                    <a href="<%=Common_Things.url %>/Admin_Sign_Out_Controller">
                        <i>Logout</i>
                    </a>
                   
                </li>
            </ul>
        </header>
        <!-- /top header -->

        <section class="layout">
            <!-- sidebar menu -->
            <aside class="sidebar canvas-left" style="background-color:#e8e8e8">
                <!-- main navigation -->









 


 
													<nav class="main-navigation">
								                    <ul>
								                        <li>
								                            <a href="<%=Common_Things.url %>/search-book/">
								                                <i class="fa fa-book"></i>
								                                <span>Book</span> 
								                            </a>
								                            
								                                              
								                             
								                                        
								                        </li>
								                       
  													 <li>
								                            <a href="<%=Common_Things.url %>/admin-add-category">
								                                <i class="fa fa-edit"></i>
								                                <span>Category</span> 
								                            </a>
								                            
								                             
								                             
								                            
								                        </li>
								                       
														
								                     	 <li>
								                            <a href="<%=Common_Things.url %>/add-author">
								                                <i class="fa fa-coffee"></i>
								                                <span>Author</span>  
								                            </a>
								                        </li>
								                       	 <li>
								                            <a href="<%=Common_Things.url %>/student-search/">
								                                <i class="fa fa-users"></i>
								                                <span>Student</span>  
								                            </a>
								                        </li>
								                       
  													
								                       	 <li>
								                            <a href="<%=Common_Things.url %>/complete-issue-history/">
								                                <i class="fa fa-legal"></i>
								                                <span>Issue History</span>  
								                            </a>
								                        </li>
								                       

								                        
								                        
													
								                    </ul>
								                    
								                    
								                </nav>
	 <!-- /main navigation -->


                
              
	 </aside>
            <!-- /sidebar menu -->
	
	<%
	}
	%>
	
	
</body>
</html>