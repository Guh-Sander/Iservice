<?php
$conn = mysqli_connect('sql305.epizy.com', 'epiz_34279597', 'BrJw8fBk6di7Q', 'epiz_34279597_iservice');
if (!$conn) {
    die('Could not connect: ');
}

$sql = 'INSERT INTO cliente(nome_cliente, email, celular, senha, sexo, data_nascimento, endereco, cidade, estado) values("' . $_POST["name"] . '","' . $_POST["email"] . '","' . $_POST["telefone"] . '","' . $_POST["senha"] . '","' . $_POST["sexo"] . '","' . $_POST["date_nas"] . '","' . $_POST["addres"] . '","' . $_POST["city"] . '","' . $_POST["state"] . '")';

if ($conn->query($sql) === TRUE) {
    ?><script>window.alert("Enviado com sucesso as informações do formulário!")</script><?php
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
header("Location: login.html")
?>