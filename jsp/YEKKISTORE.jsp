<!DOCTYPE htm
<html>
    <head>
		<meta name = "viewport" content = " width = device-width, initial-scale =1" >
        <meta charset="UTF-8">
        <style>
        
        	body{
        		margin : 0px;
        	}
        	.top{
        		height : 10vh;
        	}
        	.category{
        		height : 7vh;
        		position : sticky;
        		top :0;
        	}
        </style>
        </head>
    <body>
   		  <div class = "top">
       	  		<iframe src = "top.jsp"  scrolling = "no"  name = "top"  style = " width : 100%; height: 9vh; border : 0px;"></iframe>
       	  		<hr>
       	  </div>
       	  <div class = "category">
      	  		<iframe src = "category.jsp"  name = "category"  scrolling = "no" style = " width : 100%; height: 6vh; border : 0px; "></iframe>
      	  </div>
      	  <div class = "main">
     	  		<iframe src = "main.jsp" name = "main" scrolling = "no"  style = "width : 100%; height:100vh; border :0px; "></iframe>
     	  </div>
    </body>
    </html>
    
    <!-- vh값 : 1vh = 브라우저 높이 * 100분의1 -->