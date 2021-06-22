<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta CEP</title>
    </head>
    <body>
        <h1>Consulta CEP</h1>
        <form action="EnderecoController" method="post">
            CEP (digitar apenas os números): <input type="text" name="cep" /> 
            <input type="submit" value="Consultar" />
        </form>
        <h3>${erro}</h3>
        <h3>${endereco.cep}</h3>
        <h3>${endereco.logradouro}</h3>
        <h3>${endereco.bairro}</h3>
        <h3>${endereco.uf}</h3>
    </body>
</html>
