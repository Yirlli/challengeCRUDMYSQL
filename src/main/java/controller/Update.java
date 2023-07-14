package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import conexDB.ConexionBD;
/**
 * Servlet implementation class Update
 */
public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Update() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			Class.forName(ConexionBD.driver);
		}catch(ClassNotFoundException e) {
			System.out.println("Conexion fallida" + e);
		}
		
		try {
			Connection conn=DriverManager.getConnection(ConexionBD.url,ConexionBD.user, ConexionBD.password );
			System.out.println("Exito");
			PreparedStatement st = conn.prepareStatement("update usuarios set nombre=?, email=?, telefono=? where id=?");
			st.setInt(4,Integer.valueOf(request.getParameter("id")));
			st.setString(1,request.getParameter("nombre"));
			st.setString(2,request.getParameter("email"));
			st.setString(3,request.getParameter("tlf"));
			
			
			st.executeUpdate();
			st.close();
			conn.close();
			response.sendRedirect("success.jsp?msg=Usuario actualizado");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
