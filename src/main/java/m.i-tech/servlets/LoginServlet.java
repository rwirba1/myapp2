import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        String[] validUsernames = {"admin", "student"};
        String[] validPasswords = {"admin", "student"};

        boolean isValid = false;
        for (int i = 0; i < validUsernames.length; i++) {
            if (validUsernames[i].equals(username) && validPasswords[i].equals(password)) {
                isValid = true;
                break;
            }
        }

        if (isValid) {
            response.sendRedirect("welcome.jsp");
        } else {
            response.sendRedirect("index.jsp?error");
        }
    }
}