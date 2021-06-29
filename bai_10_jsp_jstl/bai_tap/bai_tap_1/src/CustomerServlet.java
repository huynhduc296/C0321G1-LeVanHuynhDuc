import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "customer_servlet",urlPatterns = {"/customer"})
public class CustomerServlet extends HttpServlet {
    ArrayList<Customer> customerArrayList=new ArrayList<>();

    @Override
    public void init() throws ServletException {
        customerArrayList.add(new Customer("tung","22/2/1998","Ha Noi","anh_bt1/anh1.jpg"));
        customerArrayList.add(new Customer("Linh","22/2/1999","Thanh Hóa","anh_bt1/anh2.jpg"));
        customerArrayList.add(new Customer("Hong","22/2/2000","Nghệ An","anh_bt1/anh2.jpg"));
        customerArrayList.add(new Customer("Huong","22/2/2000","Ha Noi","anh_bt1/anh2.jpg"));

    }



    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("customer",customerArrayList);
        RequestDispatcher requestDispatcher=request.getRequestDispatcher("/showcustomer.jsp");
        requestDispatcher.forward(request,response);
    }
}