<%-- 
    Document   : register
    Created on : 20 Aug 2019, 12:34:06 PM
    Author     : Nhlonipho Molefe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
    </head>
    <body>
            <form action="RegisterController" method="post" onsubmit="return validate();">
            <table>
                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="txt_name" id="name" required=""></td>
                </tr>
                                <tr>
                    <td>Surname:</td>
                    <td><input type="text" name="txt_surname" id="surname" required=""></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><input type="text" name="txt_email" id="email" required=""></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="password" name="txt_password" id="password" required=""></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" name="btn_add" value="Register">
                        <a href="index.html">Sign In</a>
                    </td>
                </tr>
                
            </table>
        </form>
    </body>
</html>
