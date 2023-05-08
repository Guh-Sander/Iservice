pag = open("index.html","w")
pag.write('''
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iservice</title>
    <link rel="icon" type="image/x-icon" href="../images/Logo_Iservice.png">
    <style>
        body{
            background-color: darkgray;
        }
        .teto{
            border-radius: 6px;
            position: absolute;
            background-color: blueviolet;
            width: 1000px;
            height: 55px;
        }
        .janela{
            border-radius: 6px;
            background-color: aliceblue;
            position: absolute;
            width: 1000px;
            height: 1000px;
            left: 175px;
            top: 20px;
        }
        img#agenda{
            position: absolute;
            width: 470px;
            height: 470px;
            top: 85px;
            border-radius: 8px;
            border: solid #000 1px;}

        img {
            position: absolute;
            width: 470px;
            height: 470px;
            top: 85px;
            border-radius: 8px;
        }

        h1{
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            position: absolute;
            left: 580px;
            top: 50px;
        }
        table{ 
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font-size: large;
            position: absolute;
            top: 150px;
            left: 620px;
        }

        .botao{
            font-size:x-large;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            position: absolute;
            left: 660px;
            top: 350px;
        }

        a#agenda {
            background-color:blueviolet;
            color: rgb(255, 255, 255);
            text-align: center;
            margin: 4px;
            padding: 25px;
            font-weight: bold;
            border-radius: 6px;
            text-decoration: none;
        }
        a#agenda:hover{ 
            background-color:aquamarine;
            color:black;
            border: solid #000 2px;
        }
        h2.ende{
            position: absolute;
            background-color: blueviolet;
            color: antiquewhite;
            border-radius: 6px;
            padding-right: 230px;
            padding-bottom: 3px;    
        }

        td {
            font-weight: bold;
        }

        section.ende{
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            position: absolute;
            left: 570px;
            top: 450px;
        }
        label.coment{
            position: absolute;
            top: 600px;
            left: 35px;
        font-weight: bold;
        }
        input.coment{
            padding-right: 300px;
            padding-bottom: 50px;  
        }
        input[type="radio"] {
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
            width: 50px;
            height: 50px;
            background-image: url('../images/estrelacinza.png');
            background-repeat: no-repeat;
            background-position: center center;
            background-size: cover;
            border-radius: 50%;
            border: none;
            outline: none;
            margin-right: 10px;
        }
        input[type="radio"]:checked {
            background-image: url('../images/estrela.png');
        }
        div.star{
            position: absolute;
            left: 570px;
            top: 600px;
        }
    </style>
    <script>
        function goBack() {
            window.history.back()
        }
    </script>
</head>
<body>
    <div class="janela">
        <div class="teto"><img onclick="goBack()" src="../images/arrow.svg" title="Voltar" alt="Voltar" style="position:absolute; top: -207px; left: -200px; scale: 9%;"/></div>
        <figure>
            <img id="agenda" src="
''')
