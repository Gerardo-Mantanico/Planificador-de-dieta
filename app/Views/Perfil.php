
    <?php require_once('header.php'); ?>
    <div class="container-R" >
        <div class="container-forms">
        <h2>Regístrate ahora y sé parte de algo grandioso.</h2> <br>
            <form action="#" method="post">
                <div class="mb-3">
                    <label for="name" class="form-label">Nombre</label>
                    <input type="text" class="form-control" id="name" name="name" disabled>
                </div>
                <div class="mb-3">
                    <label for="user" class="form-label">Nombre de usuario</label>
                    <input type="text" class="form-control" id="user" name="user"disabled>
                </div>
                <div class="mb-3">
                    <label for="address" class="form-label">Direccion</label>
                    <input type="text" class="form-control" id="address" name="address"disabled>
                </div>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="cui" class="form-label">Cui</label>
                        <input type="number" class="form-control" id="cui" min="000000000000" name="cui"disabled>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="phone" class="form-label">Teléfono</label>
                        <input type="number" class="form-control" id="phone" placeholder="77664532" min="00000000" name="phone"disabled>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-4 mb-3">
                        <label for="date" class="form-label">Fecha de nacimiento</label disabled>
                        <input type="date" class="form-control" id="date" name="date">
                    </div>

                    <div class="col-md-4 mb-3">
                        <label for="genero" class="form-label">Género</label>
                        <select class="form-select" aria-label="Genero" id="genero" name="gender" disabled>
                            <option value="F">Femenino</option>
                            <option value="M">Masculino</option>
                        </select>
                    </div>

                    <div class="col-md-4 mb-3">
                        <label for="size" class="form-label">Talla en metros</label>
                        <input type="dec" class="form-control" id="size" placeholder="1.65" min="1" name="size" disabled>
                    </div>
                </div>

                <div class="mb-3">
                    <label for="email" class="form-label">Email address</label>
                    <input type="email" class="form-control" id="email" aria-describedby="emailHelp" name="email" disabled>
                </div>
            </form>
        </div>
    </div>
<script src="DatosPerfil.js"></script>
