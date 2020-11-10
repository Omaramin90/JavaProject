/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Owner
 */
public class FirstBackEnd extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
        String fname = request.getParameter("FirstName");
        String lname = request.getParameter("LastName");
        String appt = request.getParameter("time");
        String mke = request.getParameter("make");
                
        
        PrintWriter pw = response.getWriter();
    
        if(appt.equals("am")){
        request.setAttribute("result", fname+lname +" , Your appointment is confirmed for your "+ mke +" on Thursday November 12th at 9:00am. Your confirmation number is: 00987");
        
        }else if(appt.equals("pm")){
        request.setAttribute("result", fname+lname +" , Your appointment is confirmed for Thursday November 12th at 12:00pm. Your confirmation number is: 99085");
        
        }else if(appt.equals("we")){
        request.setAttribute("result", fname+lname +" , Your appointment is confirmed for Saturday November 14th at 10:00am. Your confirmation number is: 00745");
        
        }else if(appt.equals("evenings")){
        request.setAttribute("result", fname+lname +" , Your appointment is confirmed for Tuesday November 10th at 6:30pm. Your confirmation number is 55124");
        }else{
            request.setAttribute("result","Please enter a valid operation");

        }
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
        
        dispatcher.forward(request,response);
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

}

