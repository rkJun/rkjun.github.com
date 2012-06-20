<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <title>pjax Test</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <meta name="author" content="rkJun">
	  <style type="text/css">  
		  body { 
	    	padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
		  }		
    </style>
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->            
    <link rel="shortcut icon" type="image/png" href="images/favicon.png">        
  </head>
  <body>

      <p><a href="test1.html" data-pjax="#main">test1</a></p>
      <p><a href="test2.html" data-pjax="#main">test2</a></p>
      <p><a href="test3.html" class="js-pjax">test3</a></p>
      
      <div id="time">
      	<p>
      		<%
      			Date dt = new Date();
      			
				out.println( dt.getTime() );
			%> 
				
      	</p>
      </div>
      
      <div id="main">
        index.html
      </div>      

      <script src="jquery-1.7.2.min.js"></script>
      <script src="jquery.pjax.js"></script>
      <script>
		    $(document).ready(function(){
          //ready
          $("a[data-pjax]").pjax();
          $("a.js-pjax").pjax("#main"); 
          alert("Hi");  
	  	  });
        
      </script>
     </body>
</html>


    
 