<?php
$conn = mysqli_connect('localhost', 'root', 'ienh', 'iservice');
if (!$conn) {
    die('Could not connect: ');
}

$sql = 'INSERT INTO cliente_empresa(nome_empresa, email, telefone, cnpj, senha, ramo, informações, cidade, estado, endereço, imagem) values("' . $_POST["name"] . '","' . $_POST["email"] . '","' . $_POST["tel"] . '","' . $_POST["cnpj"] . '","' . $_POST["password"] . '","' . $_POST["ramo"] . '","' . $_POST["information"] . '","' . $_POST["cidade"] . '","' . $_POST["estado"] . '","' . $_POST["endereco"] . '","' . $_POST["imagem"] . '")';

if ($conn->query($sql) === TRUE) {
    ?><script>window.alert("Enviado com sucesso as informações do formulário!")</script><?php
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

?>



<!-- // Verifica se o arquivo foi enviado corretamente
if(isset($_FILES['image']) && $_FILES['image']['error'] === UPLOAD_ERR_OK) {
    // Lê o conteúdo do arquivo
    $image = file_get_contents($_FILES['image']['tmp_name']);
    
    // Conecta ao banco de dados
    $pdo = new PDO('mysql:host=localhost;dbname=seubanco', 'usuario', 'senha');
    
    // Prepara a consulta SQL
    $stmt = $pdo->prepare("INSERT INTO tabela (imagem) VALUES (?)");
    
    // Executa a consulta com a imagem como parâmetro
    $stmt->bindParam(1, $image, PDO::PARAM_LOB);
    $stmt->execute();
} -->