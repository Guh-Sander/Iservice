<?php 

if(!isset($_SESSION)){
    session_start();
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOgado</title>
</head>
<body>
    <h1>Bem Vindo, <?php echo $_SESSION['cliente']?></h1>
    <br>
    <form action="logout.php" method="POST">
    <input type="submit" value="Logout">
</form>
</body>
</html>