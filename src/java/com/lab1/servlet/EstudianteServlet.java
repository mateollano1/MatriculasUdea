/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lab1.servlet;

import com.lab1.entity.Estudiante;
import com.lab1.entity.Materia;
import com.lab1.entity.estudiantes.EstudianteFacadeLocal;
import com.lab1.entity.materia.MateriaFacadeLocal;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Resource;
import javax.ejb.EJB;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Usuario
 */
public class EstudianteServlet extends HttpServlet {

    @EJB
    private MateriaFacadeLocal materiaFacade;

    @PersistenceContext(unitName = "Lab1PU")
    private EntityManager em;
    @Resource
    private javax.transaction.UserTransaction utx;

    @EJB
    private EstudianteFacadeLocal estudianteFacade;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String action =request.getParameter("action");
            String url="index.jsp";
            if("list".equals(action)){
                List<Materia> findAll = materiaFacade.findAll();
                request.getSession().setAttribute("accounts",findAll);
                url="listAccounts.jsp";
            } else if ("login".equals(action)){
                String id=request.getParameter("id");
                String p=request.getParameter("contrasena");
                boolean checkLogin=estudianteFacade.acceder(id, p);
                if(checkLogin){
                    request.getSession().setAttribute("login",id);
                    url="manager.jsp";
                }else{
                    url="login.jsp?error=1";
                }
            } else if ("insert".equals(action)){
                Estudiante a= new Estudiante();
                a.setId(request.getParameter("id"));
                a.setContrasena(request.getParameter("contrasena"));
                a.setNombre("nombre");
                a.setApellido(request.getParameter("apellido"));
                a.setFoto(request.getParameter("foto")); //Recordar registro de foto
                estudianteFacade.create(a);
                url="login.jsp";
           /* } else if ("delete".equals(action)){
                String id=request.getParameter("id");
                Account a=accountFacade.find(Integer.valueOf(id));
                accountFacade.remove(a);
                url="AccountServlet?action=list";*/
            } else if ("logout".equals(action)) {
                request.getSession().removeAttribute("login");
                url="login.jsp";
            }
            response.sendRedirect(url);
        } finally {
            out.close();
        }
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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

    public void persist(Object object) {
        try {
            utx.begin();
            em.persist(object);
            utx.commit();
        } catch (Exception e) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", e);
            throw new RuntimeException(e);
        }
    }

}
