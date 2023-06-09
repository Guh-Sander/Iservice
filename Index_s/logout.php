<?php
// Inicie a sessão no início do arquivo
session_start();

// Destrua todas as variáveis de sessão
session_destroy();

// Redirecione para a página de login
header("Location: login.html");
exit(); // Encerre o script
?>