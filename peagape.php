<?php
$conn = mysqli_connect('localhost', 'root', 'ienh', 'mydb');
if (!$conn) {
    die('Could not connect: ');
}

$sql = 'INSERT INTO cliente_empresa(nome, email, telefone, cnpj, senha, ramo, cidade, estado, endereço) values("' . $_POST["name"] . '","' . $_POST["email"] . '","' . $_POST["telefone"] . '","' . $_POST["cnpj"] . '","' . $_POST["senha"] . '","' . $_POST["ramo"] . '")';

if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

?>