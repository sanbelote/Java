<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@page import="java.sql.*"%>
	<%
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		Connection con = null;
		try {
			System.out.println("Driver started ...");
			Class.forName("org.postgresql.Driver");
			System.out.println("Driver loaded ");
			con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/java", "postgres", "Belote123");
			System.out.println("connected ");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from users");
			boolean flag = false;
			while (rs.next()) {
				System.out.println("in while");
				if (name.equals(rs.getString(1)) && password.equals(rs.getString(2))) {
					//System.out.println(""+rs.getString(1)+""+password.equals(rs.getString(2)));
					flag = true;
				}
			}
			if (flag == true) {
				response.sendRedirect("welcome.jsp");
				//HttpSession session=request.getSession();
				session.setAttribute("name", name);
				//request.getRequestDispatcher("welcome.jsp").forward(request, response);

			} else
				response.sendRedirect("login.html");

			con.close();

		} catch (Exception e) {
			e.printStackTrace();

			System.exit(0);
		}
		System.out.println("Opened database successfully");
		System.out.println("Bye bye");
	%>
</body>
</html>
