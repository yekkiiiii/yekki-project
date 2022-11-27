<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ include file = "./logincheck.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="../css/registstyle.css?v=3" type = "text/css">
</head>
<body>
    <form action="registpro.jsp">
        <div id = "regist">
            <div class = "reg">    
                <div id="cell1">제 목</div>    
                <div id="cell2"><input type="text" name="title" id="title"></div>
            </div>

            <div class = "reg">
                <div id="cell1">상품 이름</div>    
                <div id="cell2"><input type="text" name="name" id="productName"></div>
            </div>

            <div id="category" class = "reg">
                <div id="cell1">카테고리</div>    
                <div id="cell2">
                    <select name ="category">
                        <option value ="1">선택</option>
                        <option value ="2">의류</option>
                        <option value ="3">가전제품</option>
                        <option value ="4">소품</option>
                        <option value ="5">악기</option>
                        <option value ="6">도서</option>
                        <option value ="7">뷰티</option>
                        <option value ="8">기타</option>
                    </select>
                </div>
            </div>

            <div class = "reg" style="height: 300px;">
                <div id="cell1">상품 설명</div>    
                <div id="cell2"><textarea name="ex" id="productEx" cols="50" rows="10"></textarea></div>
            </div>

            <div class = "reg">
                <div id="cell1">가 격</div>    
                <div id="cell2"><input type="text" name="price" id="price"><span>원</span></div>
            </div>

            <div id="attachPic" class = "reg">
                <div id="cell1">사진 첨부</div>    
                <div id="cell2"><input type="file" name="file" accept=".jpg, .png"></div>
            </div>

            <div class = "reg" style="text-align: center;">
                <div id = "cell1"></div>
                <div id = "cell2">
                <input type="button" value="취소" class="btn" onclick = "history.go(-1)">
                <input type="submit" value="등록" class="btn" style="margin-right: 128px;">   
                </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>