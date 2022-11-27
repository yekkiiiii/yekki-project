<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "./oracleAccount.jsp" %>
<%
    request.setCharacterEncoding("UTF-8");

    String LoginID = (String)session.getAttribute("LoginID");
    String title = request.getParameter("title");
    String name = request.getParameter("name");
    String category = request.getParameter("category");
    String explain = request.getParameter("ex");
    int price = Integer.parseInt(request.getParameter("price"));
    String img = "C:/apache-tomcat-10.0.27/webapps/webapp/images/"+request.getParameter("file");
    out.println(img);
    
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection(url,dbID,dbPW);

        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT COUNT(*) FROM products");
        rs.next(); 
        int cnt = rs.getInt(1)+1;

        String sql = "INSERT INTO products VALUES(?, ?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement pstmt = conn.prepareStatement(sql);

        pstmt.setInt(1, cnt);
        pstmt.setString(2, LoginID);
        pstmt.setString(3, title);
        pstmt.setString(4, name);
        pstmt.setString(5, explain);
        pstmt.setString(6, category);
        pstmt.setInt(7, price);

        File imageFile = new File(img);
        FileInputStream fis = new FileInputStream(imageFile);
        pstmt.setBinaryStream(8, fis, (int)imageFile.length());
        int result = pstmt.executeUpdate();
        
        out.println(cnt);
        out.println(LoginID);
        out.println(title);
        out.println(name);
        out.println(explain);
        out.println(category);
        out.println(price);
        out.println(fis);

        pstmt.close();
        rs.close();
        stmt.close();
        conn.close();
    }
    catch(SQLException ex){
        ex.printStackTrace();
    }

%>

<!-- create table products(
	productID int ,
	memberID varchar2(20),
	title varchar2(100),
	Explanation varchar2(500),
	productName varchar2(50),
	code varchar2(5),
	price int,
	image varchar2(20),
	constraint products_pk primary key(productID),	
	constraint products_fk foreign key(memberID) references member
); -->