<?
$conn = mysqli_connect('localhost', 'root', 'GHSgustasan0110850', 'iservice');
if (!$conn) {
    die('Could not connect: ');
}

// Consulta no banco de dados para verificar o login
$cliente = "SELECT * FROM cliente WHERE email='$email' AND senha='$senha'";
$empresa = "SELECT * FROM cliente_empresa WHERE email='$email' AND senha='$senha'";
if ($conn->query($cliente)) {
    ?><script>window.alert("Login realizado com sucesso!")</script><?;
} else if ($conn->query($empresa)) {
    ?><script>window.alert("Login realizado com sucesso!")</script><?;
} else {
    // Login falhou
    ?><script>window.alert("Email ou senha inválidos!")</script><?;
}

  $conn->close();
?>