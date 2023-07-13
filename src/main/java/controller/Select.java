package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import conexDB.ConexionBD;

/**
 * Servlet implementation class Select
 */
public class Select extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Select() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			Class.forName(ConexionBD.driver);
		}catch(ClassNotFoundException e) {
			System.out.println("No existe driver " + e);
		}
		try {
			
			int id = 0;
			String nombre= "", email="", telefono = "";
			Connection conn = DriverManager.getConnection(ConexionBD.url, ConexionBD.user, ConexionBD.password);
			System.out.println("Conexion exitosa");
			PreparedStatement st = conn.prepareStatement("select * from usuarios where id=?");
			st.setInt(1, Integer.valueOf(request.getParameter("id")));
			
			ResultSet rs = st.executeQuery();
			while(rs.next()) {
				id = rs.getInt(1);
				nombre=rs.getString(2);
				email= rs.getString(3);
				telefono = rs.getString(4);
			}
			rs.close();
			st.close();
			conn.close();
			
			response.sendRedirect("show.jsp?id=" + id +"&name"+nombre+"&email" +email +"&telefono" + telefono);
		}catch(Exception e) {
			e.printStackTrace();
		}
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}
