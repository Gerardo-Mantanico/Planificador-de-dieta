<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Usuario</title>
    <link rel="stylesheet" href="style/styleForms.css">
    <link rel="stylesheet" href="style/form.css">
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
            <form action="../Controllers/RestController/RegistrarPaciente.php" method="post">
                <div class="mb-3">
                    <label for="exampleInputText" class="form-label">Nombre</label>
                    <input type="text" class="form-control" id="exampleInputText" name="name">
                </div>
                <div class="mb-3">
                    <label for="exampleInputText" class="form-label">Nombre de usuario</label>
                    <input type="text" class="form-control" id="exampleInputText" name="user">
                </div>
                <div class="mb-3">
                    <label for="exampleInputText" class="form-label">Direccion</label>
                    <input type="text" class="form-control" id="exampleInputText" name="address">
                </div>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="exampleInputNumber1" class="form-label">Cui</label>
                        <input type="number" class="form-control" id="exampleInputNumber1" min="000000000000" name="cui">
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="exampleInputNumber2" class="form-label">Teléfono</label>
                        <input type="number" class="form-control" id="exampleInputNumber2" placeholder="77664532" min="00000000" name="phone">
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-4 mb-3">
                        <label for="exampleInputDate" class="form-label">Fecha de nacimiento</label>
                        <input type="date" class="form-control" id="exampleInputDate" name="date">
                    </div>

                    <div class="col-md-4 mb-3">
                        <label for="exampleInputNumber" class="form-label">Género</label>
                        <select class="form-control" aria-label="Genero" name="gender">
                            <option value="F">Femenino</option>
                            <option value="M">Masculino</option>
                        </select>
                    </div>

                    <div class="col-md-4 mb-3">
                        <label for="exampleInputNumber" class="form-label">Talla en metros</label>
                        <input type="dec" class="form-control" id="exampleInputNumber" placeholder="1.65" min="1" name="size" >
                    </div>
                </div>

                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Email address</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email">
                </div>

                <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label">Password</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" name="password">
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
    </div>
</body>
<script src="js/animacion.js"></script>
</html>