<?php
$conn = mysqli_connect('sql305.epizy.com', 'epiz_34279597', 'BrJw8fBk6di7Q', 'epiz_34279597_iservice');
if (!$conn) {
    die('Could not connect: ');
}

$sql = 'INSERT INTO cliente_empresa(nome_empresa, email, telefone, cnpj, senha, ramo, informacoes, cidade, estado, endereco, imagem) values("' . $_POST["name"] . '","' . $_POST["email"] . '","' . $_POST["tel"] . '","' . $_POST["cnpj"] . '","' . $_POST["password"] . '","' . $_POST["ramo"] . '","' . $_POST["information"] . '","' . $_POST["cidade"] . '","' . $_POST["estado"] . '","' . $_POST["endereco"] . '","' . $_POST["imagem"] . '")';

if ($conn->query($sql) === TRUE) {
    ?><script>window.alert("Enviado com sucesso as informações do formulário!")</script><?php
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
header("Location: login.html")
?>