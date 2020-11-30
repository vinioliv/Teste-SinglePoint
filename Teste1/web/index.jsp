<%-- 
    Document   : index
    Created on : 27/11/2020, 18:46:00
    Author     : Vinicius
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gerador de código</title>
        <script type="text/javascript" src="jquery/jquery-3.5.1.js"></script>
        <link rel="stylesheet" type="text/css" href="style.css">
        <script>
            function GerarNumero(){
                
            numero = document.getElementById("code").value;
         
            xmlh = new XMLHttpRequest();
            xmlh.onreadystatechange = function(){
                if(xmlh.readyState == 4 && xmlh.status == 200){
                    document.getElementById("result").innerHTML = xmlh.responseText;
                }
            }
            xmlh.open("get", "RandomcodeController?codigo="+numero, true)
            xmlh.send();
        }
        function Limpar(){
             document.getElementById("code").value = "";
             document.getElementById("code").focus();
            
        }
   
        </script>
    </head>
    <body>
        <div class="container">
            <div class="forms">
        <form name="form" method="get" action="">
            <h3>Digite a quantidade de dígitos do código:</h3>
            <br>
            <input class="text" type="text" id="code" name="code"/>
            
            <input class="btn" type="button" value="Gerar" onclick="GerarNumero()"/>
             <input class="btn" type="button" value="Limpar" onclick="Limpar()"/>
            <br>
            <span id="result" name="result"></span>
        </form>
             </div>
        </div>
    </body>
</html>
