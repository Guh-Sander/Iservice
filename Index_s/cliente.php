<?php
$conn = mysqli_connect('localhost', 'root', 'GHSgustasan0110850', 'iservice');
if (!$conn) {
    die('Could not connect: ');
}

$sql = 'INSERT INTO cliente(nome_cliente, email, celular, senha, sexo, data_nascimento, cidade, estado, endereço) values("' . $_POST["name"] . '","' . $_POST["email"] . '","' . $_POST["telefone"] . '","' . $_POST["senha"] . '","' . $_POST["sexo"] . '","' . $_POST["date_nas"] . '","' . $_POST["city"] . '","' . $_POST["state"] . '","' . $_POST["addres"] . '")';

if ($conn->query($sql) === TRUE) {
    ?><script>window.alert("Enviado com sucesso as informações do formulário!")</script><?php
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

?>