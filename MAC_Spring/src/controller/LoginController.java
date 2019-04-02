package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

public class LoginController extends MultiActionController

{
	Connection con ;

	public LoginController() {
		// TODO Auto-generated constructor stub

		try {
			System.out.println("Driver started ...");
			Class.forName("org.postgresql.Driver");
			System.out.println("Driver loaded ");
			con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/java", "postgres", "Belote123");
			System.out.println("connected ");
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
			System.exit(0);
		}
		System.out.println("Opened database successfully");
	}

	public ModelAndView registration(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String name = req.getParameter("name");
		String password = req.getParameter("password");
		System.out.println("in Registgration Control" + name + "\n" + password);
		// TODO Auto-generated method stub
		ModelAndView mv; 
		try
		{
		String insertTableSQL = "INSERT INTO users"+"(uname,password)VALUES"+ "(?,?)";
		PreparedStatement preparedStatement = con.prepareStatement(insertTableSQL);
		preparedStatement.setString(1, name);
		preparedStatement.setString(2, password);
		// execute insert SQL stetement
		preparedStatement .executeUpdate();
		mv= new ModelAndView("regsuccess");
		}
		catch (Exception e) 
		{
			// TODO: handle exception
			//e.printStackTrace();
			mv=new ModelAndView("regfailed");
		}
		return mv;
		
	}

	public ModelAndView login(HttpServletRequest req, HttpServletResponse res) throws Exception {
		ModelAndView mv = null;
		// TODO Auto-generated method stub

		String name = req.getParameter("name");
		String password = req.getParameter("password");

		Connection con = null;
		try {
          Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from users");
			boolean flag = false;
			while (rs.next()) {
				System.out.println("in while");
				if (name.equals(rs.getString(1)) && password.equals(rs.getString(2))) {
					// System.out.println(""+rs.getString(1)+""+password.equals(rs.getString(2)));
					flag = true;
				}
			}

			if (flag == true) {
				mv = new ModelAndView("welcome");

			} else {
				mv = new ModelAndView("loginFailed");

			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
			System.exit(0);
		}
		System.out.println("Opened database successfully...thank you ");

		return mv;
	}// method end

}// class end
