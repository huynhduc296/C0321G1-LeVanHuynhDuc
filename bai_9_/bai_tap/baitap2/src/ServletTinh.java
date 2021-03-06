import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ServletTinh",urlPatterns = "/abc")
public class ServletTinh extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name=request.getParameter("name");
        double gia=Double.parseDouble(request.getParameter("gia"));
        double phantram=Double.parseDouble(request.getParameter("phantram"));
        double giadatru=gia-gia*phantram/100;
        request.setAttribute("giadatru",giadatru);
        RequestDispatcher requestDispatcher=request.getRequestDispatcher("tinh_ok.jsp");
        requestDispatcher.forward(request,response);
    }
}
