package servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bd.MysqlConnect;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public LoginController() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String usuario = request.getParameter("username");
		String pw = request.getParameter("password");
		String nombre = request.getParameter("nombre");
		String edad = request.getParameter("edad");
		
		MysqlConnect c = MysqlConnect.getDbCon();
		ResultSet rs=null;
		
			if(nombre == null){ //Si no viene nombre estamos en login
			
		

					try {
						rs = c.query("select * from cliente where usuario ='"+ usuario +"' and contrasena='"+ pw +"'");
						if(rs.next()){ //existe el usuario
							request.setAttribute("dato", usuario);
							request.getRequestDispatcher("html/perfil.jsp").forward(request, response);
						}
						else{ //no existe el usuario
							response.sendRedirect("../index.jsp");
						}
						
					} catch (SQLException e){
						e.printStackTrace();
					}
		
			}
			
			
			else{ //Viene de registro

					try {
						//System.out.println("INSERT INTO `cliente`(`nombre`, `edad`, `usuario`, `contrasena`) VALUES ('"+nombre+"','"+edad+"','"+usuario+"','"+pw+"')");
						c.insert("INSERT INTO `cliente`(`nombre`, `edad`, `usuario`, `contrasena`) VALUES ('"+nombre+"','"+edad+"','"+usuario+"','"+pw+"')");
						//srs = c.query("");
						response.sendRedirect("index.jsp");
						
						
					} catch (SQLException e){
						e.printStackTrace();
					}
				
			}
					

	}

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
