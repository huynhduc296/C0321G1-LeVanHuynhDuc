package controller;

import model.Bean.User;
import model.service.UserService;
import model.service.UserServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UserServlet",urlPatterns = {"/users",""})
public class UserServlet extends HttpServlet {
    UserService userService=new UserServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "add":
                addUser(request,response);
                break;
            case "edit":
                updateUser(request,response);
                break;
            case "delete":
                deleteUser(request,response);
                break;
            default:
                break;
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "add":
                showFormAdd(request,response);
                break;
            case "edit":
                showFormEdit(request,response);
                break;
            case "delete":
                showFormDelete(request,response);
                break;
            case "search":
                searchUser(request,response);
                break;
            case "sort":
                sort(request,response);
                break;
            default:
                showUserList(request, response);
        }
    }
    public void showUserList(HttpServletRequest request,HttpServletResponse response){
        List<User>userList=userService.findByAll();
        RequestDispatcher dispatcher=request.getRequestDispatcher("view/list.jsp");
        request.setAttribute("users",userList);
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void addUser(HttpServletRequest request,HttpServletResponse response){
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        String country=request.getParameter("country");
        User user=new User(name,email,country);
        this.userService.addUser(user);
        RequestDispatcher dispatcher=request.getRequestDispatcher("view/add.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    public void showFormAdd(HttpServletRequest request,HttpServletResponse response){
        RequestDispatcher requestDispatcher=request.getRequestDispatcher("view/add.jsp");
            try {
                    requestDispatcher.forward(request,response);
            } catch (ServletException | IOException e) {
                e.printStackTrace();
            }
    }
    public void showFormEdit(HttpServletRequest request,HttpServletResponse response){
        RequestDispatcher requestDispatcher=request.getRequestDispatcher("view/edit.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }
    public void updateUser(HttpServletRequest request,HttpServletResponse response){
        int id =Integer.parseInt(request.getParameter("id"));
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        String country=request.getParameter("country");
        User user=userService.findById(id);
        RequestDispatcher dispatcher;
        if(user==null){
            request.getRequestDispatcher("view/error.jsp");
        }else {
            user.setName(name);
            user.setEmail(email);
            user.setCountry(country);
            this.userService.update(id,user);
            request.setAttribute("user",user);
            dispatcher=request.getRequestDispatcher("view/edit.jsp");
            try {
                dispatcher.forward(request,response);
            } catch (ServletException | IOException e) {
                e.printStackTrace();
            }
        }
    }
    public void showFormDelete(HttpServletRequest request, HttpServletResponse response){
        RequestDispatcher requestDispatcher=request.getRequestDispatcher("view/delete.jsp");
        try {
           requestDispatcher.forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }
    public void deleteUser(HttpServletRequest request,HttpServletResponse response){
        int id=Integer.parseInt(request.getParameter("id"));
        User user=this.userService.findById(id);
        RequestDispatcher dispatcher;
        if(user==null){
            dispatcher=request.getRequestDispatcher("error.jsp");
        }else {
            this.userService.remove(id);
            try {
                response.sendRedirect("/users");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
    public void searchUser(HttpServletRequest request,HttpServletResponse response){
        String country=request.getParameter("country");
        List<User>users= userService.searchByCountry(country);
        RequestDispatcher dispatcher;
        if(users==null){
            dispatcher=request.getRequestDispatcher("error.jsp");
        }else {
            request.setAttribute("users",users);
            try {
                dispatcher=request.getRequestDispatcher("view/search.jsp");
                dispatcher.forward(request,response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
    private void sort(HttpServletRequest request, HttpServletResponse response){
        List<User> users = userService.sort();
        request.setAttribute("users", users);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/sort.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }
}

