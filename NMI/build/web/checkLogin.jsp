<%-- 
    Document   : checkLogin
    Created on : 08 Apr 2019, 9:54:58 AM
    Author     : Nhlonipho Molefe
--%>

<%@ page language="java" import="java.sql.*"%><b><center>     
<font color="red">Your have entered an invalid email or password! Please try again...</font>
        <%

            String email = request.getParameter("email");

            String password = request.getParameter("password");

            try {

                Class.forName("com.mysql.jdbc.Driver");

                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");

                Statement st = con.createStatement();

                ResultSet rs = st.executeQuery("select * from register");

                int x = 0;

                while (rs.next()) {

                    if ((rs.getString("email").equals(email)) && rs.getString("password").equals(password)) {

                        String stp = rs.getString("role");
                        String name = rs.getString("name");
                        
                        if (stp.equalsIgnoreCase("ADMIN")) {

                            x = 1;

                            break;

                        } else {

                            x = 2;

                            break;

                        }

                    }

                }

                if (x == 2) {

                    response.sendRedirect("welcome.jsp");

                } else if (x == 1) {

                    response.sendRedirect("welcome.jsp");

                } else {
                      
                    //out.println("Either you enter Invalid Name or ID Number! Please try again");

        %>

        <jsp:include page="index.html" />

        <%}

 

            } catch (Exception e) {

                out.println(e);

            }

 

            session.setAttribute("email", email);

        %>
