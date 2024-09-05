<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="style/styleForms.css">
    <link rel="stylesheet" href="style/form.css">
    <link rel="stylesheet" href="style/login.css">
</head>

<body>
    <div class="container-L">
        <div class="container-animacion">
            <img src="https://i.postimg.cc/kgKB26tw/122a55d7-b4f8-407c-a9d7-3331ecdedd56.jpg" alt="imagen">
            <div class="typing-effect">
                <span id="typed-text"></span>
            </div>
        </div>
    </div>
    <div class="container-R">
        <div class="container-forms">
            <div class="container-img">
                <img src="https://i.postimg.cc/vZsHLqmm/cardiology-24dp-D0-ECDE-FILL0-wght400-GRAD0-opsz24.png" alt="logo">
            </div>
            <form  action="../Controllers/RestController/Login.php" method="post">
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Correo electronico</label>
                    <input type="email" class="form-control" id="name"  name="email">
                </div>

                <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label">Contrasena</label>
                    <input type="password" class="form-control" id="password" name="password">
                </div>
                <button type="submit" id="submit" class="btn btn-primary">Ingresar</button>
            </form>
            <br>
                <a  class="register-a" href="registrarUsuario.php">Registrate ahora</a>
        </div>
    </div>
</body>
<script src="js/animacion.js"></script>
</html>