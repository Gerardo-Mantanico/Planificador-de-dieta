
    <?php require_once('header.php'); ?>
    <div class="container-R" >
    <div class="containerform">
    <div class="icono">
        <svg xmlns="http://www.w3.org/2000/svg" height="100px" viewBox="0 -960 960 960" width="100px" fill="#434343"><path d="M480-480q-66 0-113-47t-47-113q0-66 47-113t113-47q66 0 113 47t47 113q0 66-47 113t-113 47ZM160-160v-112q0-34 17.5-62.5T224-378q62-31 126-46.5T480-440q66 0 130 15.5T736-378q29 15 46.5 43.5T800-272v112H160Zm80-80h480v-32q0-11-5.5-20T700-306q-54-27-109-40.5T480-360q-56 0-111 13.5T260-306q-9 5-14.5 14t-5.5 20v32Zm240-320q33 0 56.5-23.5T560-640q0-33-23.5-56.5T480-720q-33 0-56.5 23.5T400-640q0 33 23.5 56.5T480-560Zm0-80Zm0 400Z"/></svg>
        </div>
        <div class="container-forms">
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
                        <label for="size" class="form-label">Genero</label>
                        <input type="text" class="form-control" id="genero" placeholder="M"  name="size" disabled>
                    </div>

                    <div class="col-md-4 mb-3">
                        <label for="size" class="form-label">Talla /metros</label>
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
    </div>
<script src="js/datosPerfil.js"></script>
<?php require_once('footer.php'); ?>