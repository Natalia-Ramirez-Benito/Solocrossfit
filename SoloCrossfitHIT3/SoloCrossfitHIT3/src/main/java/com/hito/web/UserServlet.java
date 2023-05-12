/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.hito.web;

import com.hito.dao.UserDAO;
import com.hito.model.User;
import jakarta.servlet.annotation.WebServlet;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author natal
 */

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/")
public class UserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserDAO userDAO;

    public void init() {
        userDAO = new UserDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String action = request.getServletPath();

        try {
            switch (action) {
                case "/new":
                    showNewForm(request, response);
                    break;
                case "/insert":
                    insertUser(request, response);
                    break;
                default:
                    showNewForm(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request, response);
    }

    private void insertUser(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException, ServletException {
        
        try{
            String nombre = request.getParameter("nombre");
            String plan = request.getParameter("plan");
            double peso = Double.parseDouble(request.getParameter("peso"));
            String categoria = request.getParameter("categoria");
            int eventos = Integer.parseInt(request.getParameter("eventos"));
            int horasExtra = Integer.parseInt(request.getParameter("horasExtra"));

            if (plan.equals("Principiante") && eventos !=0){
                request.setAttribute("alerta", "<div class='alert alert-danger' role='alert' style='margin-left: 20%;margin-right: 20%;'>Plan incompatible. Seleccione uno distinto</div>");
                RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");
                dispatcher.forward(request, response);
            }
            
            // Calcular los costos
            double costoPlan = 0;
            double costoFinal = 0;
            double costoEventos = 0;
            double costoHorasExtra = horasExtra * 9.50;

            if (plan.equals("Principiante")) {
                costoPlan = 25;
            } else if (plan.equals("Intermedio")) {
                costoPlan = 30;
            } else if (plan.equals("Élite")) {
                costoPlan = 35;
            }

            costoEventos = eventos * 22;
            costoFinal = costoPlan*4 + costoHorasExtra *4 + costoEventos;


            // Establecer los atributos en el request para pasar los resultados a la página JSP
            request.setAttribute("costoPlan", costoPlan);
            request.setAttribute("costoEventos", costoEventos);
            request.setAttribute("costoHorasExtra", costoHorasExtra);
            request.setAttribute("costoFinal", costoFinal);


            User newUser = new User(nombre, plan, peso, categoria, eventos, horasExtra);
            UserDAO userDAO = new UserDAO();

            userDAO.insertUser(newUser);

            RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");
            dispatcher.forward(request, response);
        } catch (Exception e){
            request.setAttribute("alerta", "<h2>Error. Has introducido algún dato mal.</h2>");
            RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");
            dispatcher.forward(request, response);
        }
        
    }

}
