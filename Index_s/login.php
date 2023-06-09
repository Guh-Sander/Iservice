<?php
$conn = mysqli_connect('sql305.epizy.com', 'epiz_34279597', 'BrJw8fBk6di7Q', 'epiz_34279597_iservice');
if (!$conn) {
    die('Could not connect: ');
}

if (isset($_POST['email']) && isset($_POST['senha'])) {
    if (empty($_POST['email'])) {
        echo "Preencha o campo de email";
    } else if (empty($_POST['senha'])) {
        echo "Preencha o campo de senha";
    } else {
        $email = $conn->real_escape_string($_POST['email']);
        $senha = $conn->real_escape_string($_POST['senha']);

        // cliente
        $cliente = "SELECT * FROM cliente WHERE email='$email'";
        $sql_query = $conn->query($cliente) or die('Falha na execução do código: ' . $conn->error);
        $quantidade_cliente = $sql_query->num_rows;

        // empresa
        $empresacliente = "SELECT * FROM cliente_empresa WHERE email='$email'";
        $empresa_sql_query = $conn->query($empresacliente) or die('Falha na execução do código: ' . $conn->error);
        $quantidade_empresa = $empresa_sql_query->num_rows;

        // cliente
        if ($quantidade_cliente == 1) {
            $usuario = $sql_query->fetch_assoc();
            if ($senha == $usuario['senha']) {
                if (!isset($_SESSION)) {
                    session_start();
                }
                $_SESSION['cliente'] = $usuario['nome_cliente'];
                header("Location: logado.php");
            } else {
                echo "Falha ao logar! Email ou senha incorretos";
            }
        } else {
            echo "Falha ao logar! Email ou senha incorretos";
        }

        // empresa
        if ($quantidade_empresa == 1) {
            $usuario_empresa = $empresa_sql_query->fetch_assoc();
            if ($senha == $usuario_empresa['senha']) {
                if (!isset($_SESSION)) {
                    session_start();
                }
                $_SESSION['cliente'] = $usuario_empresa['nome_empresa'];
                header("Location: logado.php");
            } else {
                echo "Falha ao logar! Email ou senha incorretos";
            }
        } else {
            echo "Falha ao logar! Email ou senha incorretos";
        }
    }
}
?>


// Consulta no banco de dados para verificar o login
// $cliente = "SELECT * FROM cliente WHERE email='$email' AND senha='$senha'";
// $empresa = "SELECT * FROM cliente_empresa WHERE email='$email' AND senha='$senha'";
// if ($conn->query($cliente)) {
//     <script>window.alert("Login realizado com sucesso!")</script><?;
// } else if ($conn->query($empresa)) {
    // <script>window.alert("Login realizado com sucesso!")</script><?;
// } else {
//     // Login falhou
//     <script>window.alert("Email ou senha inválidos!")</script><?;
// }

//   $conn->close();
// 