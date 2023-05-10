<?php
$conn = mysqli_connect('localhost', 'root', 'senha', 'nome_do_banco');
if (!$conn) {
    die('Não foi possível conectar ao banco de dados: ' . mysqli_connect_error());
}

$nome_empresa = $_POST['nome_empresa'];
$email = $_POST['email'];
$telefone = $_POST['telefone'];
$cnpj = $_POST['cnpj'];
$ramo = $_POST['ramo'];
$cidade = $_POST['cidade'];
$estado = $_POST['estado'];
$endereco = $_POST['endereco'];

$stmt = mysqli_prepare($conn, "INSERT INTO empresas (nome_empresa, email, telefone, cnpj, ramo, cidade, estado, endereco) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");

mysqli_stmt_bind_param($stmt, "ssssssss", $nome_empresa, $email, $telefone, $cnpj, $ramo, $cidade, $estado, $endereco);

if (mysqli_stmt_execute($stmt)) {
    echo "Registro criado com sucesso!";
} else {
    echo "Erro ao criar registro: " . mysqli_error($conn);
}

mysqli_stmt_close($stmt);
mysqli_close($conn);
?>