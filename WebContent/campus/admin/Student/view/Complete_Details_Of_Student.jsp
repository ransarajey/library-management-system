<!DOCTYPE html>


<%@page import="student_table.Student_Table_Model"%>
<%@page import="common_use_bean.Student_Use_Bean"%><html class="no-js">

<head>
    <!-- meta -->
    <meta charset="utf-8">
    


    <!-- bootstrap -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap/css/bootstrap.min.css">
    <!-- /bootstrap -->

    <!-- core styles -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/main.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/animate.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/vendor/offline/theme.css">
     
    
    <link rel="stylesheet" href="<%=request.getContextPath()%>/vendor/bootstrap-datepicker/datepicker.css">
    <!-- /core styles -->

    <!-- page styles -->
    
    <!-- /page styles -->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- load modernizer -->
    <script src="<%=request.getContextPath()%>/vendor/modernizr.js"></script>
    
    
    
    
    
    
    
    
    
</head>

<!-- body -->

<body>
		

	
    <div class="app" data-sidebar="locked">
        <!-- top header -->
        
               <%@include file="../../common/tab.jsp" %>
               
           
		<%
		String Student_id=(String)request.getParameter("lm");
		Student_Table_Model obj_Student_Table_Model=new Student_Table_Model();
		
		Student_Use_Bean obj_Student_Use_Bean=obj_Student_Table_Model.get_complete_details_student(Student_id);
		%>
           

            <!-- main content -->
            <section class="main-content">

                <!-- content wrapper -->
                <div class="content-wrap">

                    <div class="row mg-b">
                        <div class="col-xs-6"> 
                            <h3 class="no-margin">Student:<%=obj_Student_Use_Bean.getStudent_name() %></h3>
                            
                        </div>
                     
                    </div>

                    <div class="col-lg-8">
                    
                    
                    
                    
                    
                    		<%
							String message=(String)session.getAttribute("add_student_message");
							if(message!=null){
							%>
								
								 <div class="alert alert-success">
                                        <%=message%>
                                    </div>


							<%			session.removeAttribute("add_student_message");
							}
							%>
                    
                    
                    
                    
                    
                    
                    
                    
                                            <section class="panel">
                                                <header class="panel-heading">   <a href="<%=Common_Things.url %>/issue-history-student/?sid=<%=obj_Student_Use_Bean.getStudent_id()%>&n=<%=obj_Student_Use_Bean.getStudent_name()%>" class="btn btn-warning">Issue History</a>
                        
                        						<a href="<%=Common_Things.url %>/issue-book-student/?id=<%=obj_Student_Use_Bean.getStudent_id() %>&n=<%=obj_Student_Use_Bean.getStudent_name() %>&ad=<%=obj_Student_Use_Bean.getAdmission_no() %>" class="btn btn-success">Issue Book</a>
                     							<br> <br>Complete Details  </header>
                                                <div class="panel-body">

                                                    <form action="<%=Common_Things.url%>/add-student-contro/" class="form-horizontal" role="form">
                                                        <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Admission No</label>
                                                            	<div class="col-sm-10">
                                                               	<input type="text" class="form-control" name="admission_no" data-parsley-required="true" data-parsley-trigger="change" placeholder="Admission No" value="<%if(obj_Student_Use_Bean.getAdmission_no()!=null){out.println(obj_Student_Use_Bean.getAdmission_no());} %>" readonly="readonly">
                                                               </div> 
                                                             
                                                        </div> 
                                                        
                                                       
                                                        	<hr>
                                                           
                                                       
                                                         
                                                        
                                                        
                                                         <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Name</label>
                                                            <div class="col-sm-10">
                                                                <input type="text" class="form-control" placeholder="Name" name="student_name" value="<%if(obj_Student_Use_Bean.getStudent_name()!=null){out.println(obj_Student_Use_Bean.getStudent_name());} %>" readonly="readonly">
                                                            </div>
                                                        </div>
                                                        
                                                        
                                                       		<hr> 
                                                        
                                                        
                                                         
                                                        
                                                        
                                                        
                                                         <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Batch</label>
                                                            <div class="col-sm-10">
                                                                <input type="text" class="form-control" placeholder="Batch" name="batch" value="<%if(obj_Student_Use_Bean.getBatch()!=null){out.println(obj_Student_Use_Bean.getBatch());} %>" readonly="readonly">
                                                            </div>
                                                        </div>
                                                        
                                                        
                                                       		
                                                          	<hr> 
                                                        
                                                        
                                                          
                                                        
                                                        
                                                         <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Course</label>
                                                            <div class="col-sm-10">
                                                                <input type="text" class="form-control" placeholder="Course" name="course" value="<%if(obj_Student_Use_Bean.getCourse()!=null){out.println(obj_Student_Use_Bean.getCourse());} %>" readonly="readonly">
                                                            </div>
                                                        </div>
                                                       
                                                    
                                                          <hr> 
                                                          
                                                              <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Status</label>
                                                            <div class="col-sm-10">
                                                                <input type="text" class="form-control" placeholder="Course" name="course" value="<%if(obj_Student_Use_Bean.getStatus()==1){out.println("Active");}else{out.println("Not Active");} %>" readonly="readonly">
                                                            </div>
                                                        </div>
                                                       
                                                         <hr>   
                                                     	 <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Description</label>
                                                            <div class="col-sm-10"> 
                                                            
                                                            	<textarea rows="5" class="form-control" placeholder="Description" name="profile" readonly="readonly"><%if(obj_Student_Use_Bean.getProfile()!=null){out.println(obj_Student_Use_Bean.getProfile());} %></textarea>
                                                            
                                                            
                                                                
                                                            </div>
                                                        </div>
                                                     
                                                     <hr>  
                                                     
                                                        </div>
                                                        <div class="form-group">  
                                                            <div class="col-sm-offset-2 col-sm-15">
                                                                
                                                                
                                                                
                                                                <a href="<%=Common_Things.url %>/edit-profile-student/?lm=<%=obj_Student_Use_Bean.getStudent_id() %>" class="btn btn-primary">Edit Profile</a>
                                                                
                                                            </div>
                                                        </div>
                                                        
                                                        </div>
                                                    </form>

                                                </div> 
                                                
                                                  



                    
                </div>
                <!-- /content wrapper -->
            </section>
            <!-- /main content -->
        </section>

    </div>

    <!-- core scripts --> 
 	
    <!-- /core scripts -->

    <!-- page scripts -->
  	<script src="<%=Common_Things.url %>/vendor/bootstrap-select/bootstrap-select.js"></script>
    <script src="<%=Common_Things.url %>/vendor/datatables/jquery.dataTables.js"></script>
    <!-- /page scripts -->

    <!-- theme scripts -->
    <script src="<%=Common_Things.url %>/vendor/slider/bootstrap-slider.js"></script>
    <script src="<%=Common_Things.url %>/js/off-canvas.js"></script>
    <script src="<%=Common_Things.url %>/vendor/offline/offline.min.js"></script>
     <script src="<%=Common_Things.url %>/vendor/bootstrap-datepicker/bootstrap-datepicker.js"></script>
       
     
        <script src="<%=Common_Things.url %>/js/main.js"></script>
	<script src="<%=Common_Things.url %>/js/datatables.js"></script>
	 <script src="<%=Common_Things.url %>/vendor/switchery/switchery.js"></script>
     <script src="<%=Common_Things.url %>/js/forms.js"></script>
      
	  

    <!-- /theme scripts -->

</body>
<!-- /body -->

</html>
