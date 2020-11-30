/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Arrays;
import java.util.List;

/**
 *
 * @author Vinicius
 */
@WebServlet(name = "RandomcodeController", urlPatterns = {"/RandomcodeController"})
public class RandomcodeController extends HttpServlet {

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
        
        int codigorecebido = Integer.parseInt(request.getParameter("codigo"));
         
        
        Random random = new Random();
  
        
        int[] array = new int[codigorecebido];
        List<Integer> lista = new ArrayList<Integer>();

        String result = "";
        int numero = 0;
        
        if(codigorecebido < 5 || codigorecebido > 7){
            response.getWriter().write("O valor não pode ser menor que 5 ou maior que 7");
            
        }else{
             for (int i = 0; i < array.length; i++){
              numero = random.nextInt(9);
              if(!lista.contains(numero)){
                lista.add(numero);
               }else{
                  i--;
               }
             }
         int n = lista.size();
         for(int i = 0; i < n; i++){
           result += Integer.toString(lista.get(i));
         }
         response.getWriter().write(String.valueOf("<p>O Código gerado foi<span style='font-weight: bold'>: "+result+"</p></span>"));
        }
        
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
