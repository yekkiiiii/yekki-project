<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    	<%@ include file = "./oracleAccount.jsp" %>
        <meta http-equiv = "Content-Type" content = "text/html " charset="UTF-8">
        <link rel="stylesheet" href="../css/mypagestyle.css?v=17" type = "text/css">
        <meta name = "viewport" content = " width = device-width, initial-scale =1" >
        <script>
        	function outYekkiStore(){
        		if(confirm("YEKKISTORE에서 탈퇴하시겠습니까? \n회원 탈퇴시 모든 혜택에서 제외됩니다.")==true)
          	  	{
        			location.href = "./outPro.jsp"
            	}
      	  	}
        </script>
    </head>
    
    <body>
    	<div>
       		<span><b>MY PAGE</b></span>
       </div>
       <br><br>
    	<div class = "box">
    		<div class = "row">
    			<div class = "cell">
    				<button type =button onclick = "location.href = './myInfo.jsp';">
    				<p><b>INFO</b></p>
    					<img src = "../images/myinfo.png">
    				</button>
    				<br><br>
    				<span>회원 정보를 보여줍니다.</span>
    			</div>
    			<div class = "cell">
    				<button type =button onclick = "location.href = './editInfo.jsp';">
    				<p><b>EDIT</b></p>
    					<img src = "../images/modify.png">
    				</button>
    				<br><br>
    				<span>회원 정보를 수정합니다.</span>
    			</div>	
    		</div>
    		
    		<div class = "row">
    			<div class = "cell">
    				<button type =button>
    				<p><b>ORDER</b></p>
    				<img src = "../images/order.png">
    				</button>
    				<br><br>
    				<span>주문내역을 확인합니다.</span>
    			</div>
    			
    			<div class = "cell">
    				<button type =button onclick = "outYekkiStore();">
    				<p><b>QUIT</b></p>
    				<img src = "../images/out.png">
    				</button>
    				<br><br>
    				<span>YEKKI STORE에서 탈퇴합니다.</span>
    			</div>	
    		</div>
        </div>
    </body>
    </html>