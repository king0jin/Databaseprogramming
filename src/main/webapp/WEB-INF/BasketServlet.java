package databaseprogramming;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/addToBasket")
public class BasketServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int userId = Integer.parseInt(request.getParameter("user_id"));
        String today = request.getParameter("today");
        int cafeteria = Integer.parseInt(request.getParameter("cafeteria"));
        String menu = request.getParameter("menu");
        int cnt = Integer.parseInt(request.getParameter("cnt"));
        int unitPrice = 6500; // 고정된 가격
        int price = unitPrice * cnt;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "db2012133", "ss2");

            String sql = "INSERT INTO basket (user_id, today, cafeteria, menu, price, cnt) VALUES (?, TO_DATE(?, 'YYYY-MM-DD'), ?, ?, ?, ?)";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, userId);
            pstmt.setString(2, today);
            pstmt.setInt(3, cafeteria);
            pstmt.setString(4, menu);
            pstmt.setInt(5, price);
            pstmt.setInt(6, cnt);
            pstmt.executeUpdate();

            conn.close();

            response.setStatus(HttpServletResponse.SC_OK);
            response.getWriter().write("Success");
        } catch (Exception e) {
            e.printStackTrace();
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            response.getWriter().write("Error");
        }
    }

}
