package mensajeJstl.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mensajeJpa.dao.MensajeDao;
import mensajeJpa.dao.UsuarioDao;
import mensajeJpa.entities.Mensaje;
//import model.MensajeDao;
//import model.UsuarioDao;

/**
 * Servlet implementation class MensajeContoller
 */
@WebServlet("/MensajeContoller")
public class MensajeContoller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MensajeContoller() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		/**
		String idTxt = request.getParameter("id");
		if (request.getParameter("ed").contentEquals("3")) {
			MensajeDao mDao = new MensajeDao();
			Mensaje mens = mDao.find(Integer.parseInt(idTxt));

			mDao.update(mens);

			request.setAttribute("msgResultado", "El mensaje se ha enviado correctamente"); 
			request.getRequestDispatcher("/mensaje.jsp").forward(request, response);
		}
		*/
	     String action=request.getParameter("action");
	        System.out.println("action : "+ action);
	        MensajeDao g=new MensajeDao();
	        String idTxt=request.getParameter("id");
	        Mensaje mens =g.find(Integer.parseInt(idTxt));
	        //Mensaje msj= new Mensaje();
	        switch(action){
	            case "mostrar": 
	                request.setAttribute("list",msj.getMensaje());
	                request.getRequestDispatcher("mensajes.jsp").forward(request, response);
	                break;
	            case "showEditar":
	            	request.setAttribute("mensaje", msj.getMensaje());
	                //request.setAttribute("mensaje",msj.getMensajeById(Integer.parseInt(request.getParameter("id"))));
	                request.getRequestDispatcher("editar.jsp").forward(request, response);
	                break;
	            case "editar":
	                String id=request.getParameter("id");
	                String nombre=request.getParameter("nombre");
	                String email=request.getParameter("email");
	                String sitioweb=request.getParameter("sitioweb");
	                String mensaje=request.getParameter("mensaje");
	                Mensaje m=new Mensaje(Integer.parseInt(id), nombre, email, sitioweb, mensaje);
	                String user=request.getParameter("usuarios");
	                System.out.println("user: "+user);
	               // m.setUsuario(msj.buUsuario(user));
	                mens.setUsuario(g.find(user).getUsuario());
	                //mens.se
	               // m.setUsuario(g.find(user));
	                //m.setUsuarioBean(msj.getUsuario(user.equalsIgnoreCase("user")));
	               
	                //msj.update(m);
	                request.getRequestDispatcher("index.jsp").forward(request, response);
	                break;
	            case "eliminar":
	              // men mio= new GenericDao();
	            	//g.delete();
	            	g.delete(Integer.parseInt(request.getParameter("id").)));
	            	msj.removMensaje(Integer.parseInt(request.getParameter("id")));
	                request.getRequestDispatcher("index.jsp").forward(request, response);
	                break;
	            case "registrar":
	                String n=request.getParameter("nombre");
	                String e=request.getParameter("email");
	                String s=request.getParameter("sitioweb");
	                String mensaj=request.getParameter("mensaje");
	                Mensaje newm=new Mensaje();
	                String usuario=request.getParameter("usuarios");
	                newm.setNombre(n);
	                newm.setEmail(e);
	                newm.setWebsite(s);;
	                newm.setMensaje(mensaj);
	                newm.setUsuario(msj.buUsuario(usuario));
	                if( msj.registrar(newm)){
	                    request.setAttribute("list", msj.getMensajes());
	                    request.getRequestDispatcher("mensajes.jsp").forward(request, response);
	                }else{
	                    request.getRequestDispatcher("index.jsp").forward(request, response);
	                }
	                
	                
	                
	                
	        }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		// doGet(request, response);
		Mensaje mensaje = new Mensaje();

		MensajeDao mDao = new MensajeDao();
		mDao.insert(mensaje);

		request.setAttribute("msgResultado", "El mensaje ha sido creado correcta");
	}

	/**
	 * Returns a short description of the servlet.
	 *
	 * @return a String containing servlet description
	 */
	@Override
	public String getServletInfo() {
		return "Short description";
	}// </editor-fold>

}
