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
 * Servlet implementation class Insert
 */
public class Insert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Insert() {
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

		//VALIDA SI EXISTE DRIVERL LLAMA A LA BD CON EL DRIVE PERMITE INSTANCIAR U OCUPAR
		
		try {
			Class.forName(ConexionBD.driver);
		} catch (ClassNotFoundException e) {
		
			System.out.println("Falla de conexion" + e);		
		}
		//VALIDA CREDENCIALES
		try {
			Connection conn = DriverManager.getConnection(ConexionBD.url, ConexionBD.user, ConexionBD.password);
			System.out.println("Conexion Exitosa");
			
			//permite trabajar y preparar la query el preparedStatement indica sentencia dentro se genera la sql
			
			PreparedStatement st = conn.prepareStatement("insert into usuarios values (?,?,?,?)");
			
			//La tabla debe existir 
			
			st.setInt(1,Integer.valueOf(request.getParameter("id")));
			st.setString(2, request.getParameter("nombre"));
			st.setString(3, request.getParameter("email"));
			st.setString(4, request.getParameter("tlf"));
			
			//EJECUTAR QUERY
			
			st.executeUpdate()
;
			st.close();
			// se cierra la conexion una vez ingresado los datos
			conn.close();
			
			
			// se redirige a la vista de creacion satisfactoria
			response.sendRedirect("success.jsp?msg=Ingreso a la base de datos");
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	

}
