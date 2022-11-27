<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    	<meta charset="UTF-8">
		<link rel="stylesheet" href="../css/categorystyle.css?v=12 type = "text/css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>
    <body>
    <div class = "category">
			<ul>
                   <li><a class="menuLink" href="products.jsp" target ="main">
                    <button type = "button">Products</button></a></li>
                    		
                    <li><a class="menuLink" href="regist.jsp" target ="main">
                    <button type = "button" >Regist</button></a></li>
                    		
                    <li><a class="menuLink" href="basket.jsp" target ="main">
                    <button type = "button">Basket</button></a></li>
            </ul>
	</div>
	<div class = "category01">
    	<div class = "search-box">
        	<form action = "." method = "post">
        		<input class = "search-txt" type = "text" placeholder = "Search">
        		<button class = "search-btn" type = "submit">
        			<i class = "fas fa-search"></i>
        		</button>
        	</form>
    	</div>
   </div>

</body>
</html>
