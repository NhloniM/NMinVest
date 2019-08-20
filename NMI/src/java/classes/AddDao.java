
package classes;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 *
 * @author Nhlonipho Molefe
 */
public class AddDao {
    public String checkInsert(AddBean addBean)
    {
        String name=addBean.getName(); //get name through addBean object 
        String surname=addBean.getSurname(); //get owner through addBean object 
        String email=addBean.getEmail(); //get owner through addBean object 
        String password=addBean.getPassword(); //get owner through addBean object 
        String role=addBean.getRole(); //get owner through addBean object 
        
        String url="jdbc:mysql://localhost:3306/test"; //database connection url string
        String username="root"; //database connection username
        String password1=""; //database password
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver"); //load driver
            Connection con=DriverManager.getConnection(url,username,password1); //create connection
            
            PreparedStatement pstmt=null; //create statement
            
            pstmt=con.prepareStatement("insert into register(name,surname,email,password,role) values(?,?,?,?,?)"); //sql insert query
            pstmt.setString(1,name);
            pstmt.setString(2,surname);
            pstmt.setString(3,email);
            pstmt.setString(4,password);
            pstmt.setString(5,role);
            pstmt.executeUpdate(); //execute query
            
            pstmt.close(); //close statement
            
            con.close(); //close connection
            
            return "INSERT SUCCESS"; //if valid return "INSERT SUCCESS" string
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return "FAIL INSERT"; //if invalid return "FAIL INSERT" string
    }
}
