<%-- 
    Document   : JuroComposto
    Created on : 28 de mar. de 2022, 15:20:54
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Juro Composto</title>
    </head>
    <body>
        
        <h2>Juros Composto</h2>
        <form>
   <label> Valor Principal:</label><br>
   <input name="n1" type="number" placeholder="Valor Principal"><br>
   <label>Taxa:</label><br>
   <input name="n2" type="number" placeholder="Juros"><br>
   <label> Meses:</label><br>
   <input name="n3" type="number" placeholder="Taxa"><br><br>
   <input type="submit" value="Calcular">
   </form>
           <%
            String error = null;         
            float n1 = 0 , n2 = 0;
            int n3 = 0;
            
            try{
            String p1 = request.getParameter("n1");
            String p2 = request.getParameter("n2"); 
            String p3 = request.getParameter("n3"); 
            n1 = Float.parseFloat(p1);
            n2 = Float.parseFloat(p2);
            n3 = Integer.parseInt(p3);
            
                    }catch(Exception e){
                    error = e.getMessage();
                    }
            
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet JuroSimplesServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<div><a href='index.jsp'>Voltar</a></div>");
            out.println("<h1>Juros Simples</h1>");
            
            if(error != null){
             out.println("<span style = 'color: red'>Erro ao tentar ler parametros</span>");
            }else {
            out.println("<div>");
            out.println(String.format ("<p> Valor Futuro %.0f</p>",n1 * Math.pow((1 + (n2/100)),n3 )));
            out.println("</div>");
            }
        %>
            
    </body>
</html>
