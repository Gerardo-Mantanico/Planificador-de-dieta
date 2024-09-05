
    <?php require_once('header.php'); ?>
    <div class="container-R" >
        <br><br><br><br>
        <div class="icono">
        <svg xmlns="http://www.w3.org/2000/svg" height="100px" viewBox="0 -960 960 960" width="100px" fill="#000000"><path d="M80-600v-120q0-33 23.5-56.5T160-800h640q33 0 56.5 23.5T880-720v120h-80v-120H160v120H80Zm80 440q-33 0-56.5-23.5T80-240v-120h80v120h640v-120h80v120q0 33-23.5 56.5T800-160H160Zm240-120q11 0 21-5.5t15-16.5l124-248 44 88q5 11 15 16.5t21 5.5h240v-80H665l-69-138q-5-11-15-15.5t-21-4.5q-11 0-21 4.5T524-658L400-410l-44-88q-5-11-15-16.5t-21-5.5H80v80h215l69 138q5 11 15 16.5t21 5.5Zm80-200Z"/></svg>        </div>
        <div class="container-forms">
            <form action="../Controllers//RestController/fichaTecnica.php" method="post">
                <div class="mb-3">
                    <label for="age" class="form-label">Edad</label>
                    <input type="number" class="form-control" id="eage" name="age" min="10">
                </div>
                <div class="mb-3">
                    <label for="peso" class="form-label">Peso/Kg</label>
                    <input type="number" class="form-control" id="peso" name="peso" min="0">
                </div>
                <div class="mb-3">
                    <label for="glucosa" class="form-label">Glucosa</label>
                    <input type="number" class="form-control" id="glucosa" name="glucosa" min="0">
                </div>
                    <div class="col-md-6 mb-3">
                        <label for="imc" class="form-label">Imc</label>
                        <input type="number" class="form-control" id="cui" min="0" name="cui"disabled>
                    </div>
                    <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="date" class="form-label">Fecha de creaacion</label>
                        <input type="text" class="form-control" id="phone" placeholder="77664532" min="00000000" name="phone"disabled>
                    </div>
                    <div class="col-md-4 mb-3">
                        <label for="date" class="form-label">Fecha de  vencimiento </label disabled>
                        <input type="text" class="form-control" id="date" name="date" disabled>
                    </div>
                    </div>
                    <div class="col-md-4 mb-3">
                        <label for="estado" class="form-label">Estado de ficha tecnica</label>
                        <input type="text" class="form-control" id="estado" name="estado" disabled>
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
    </div>
<script src="DatosPerfil.js"></script>
<?php require_once('footer.php'); ?>