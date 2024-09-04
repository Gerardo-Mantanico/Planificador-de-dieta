<?php require_once('header.php'); ?>
<div class="container-l">
    <img class="img-hemoglobina" src="https://i.postimg.cc/tCSsp8kc/273966688-508938667255578-517244129002502440-n.jpg" alt="img-hemoglobina">
    <div class="container-text">
        <p>
            La <strong>hemoglobina glicosilada</strong> o HbA1c es un indicador clave en el manejo de la diabetes. Se refiere a la forma de hemoglobina que se forma cuando la glucosa en la sangre se adhiere a la hemoglobina en los glóbulos rojos
        </p>
        <p>
            <strong>Cómo Funciona:</strong>
            Cuando los niveles de glucosa en sangre son elevados, más glucosa se une a la hemoglobina. Por lo tanto, un nivel alto de HbA1c indica que la glucosa en sangre ha estado elevada durante un período prolongado, lo que puede ser indicativo de un control deficiente de la diabetes.
        </p>
        <p>
            <strong>Cómo Obtener el Examen</strong>
            :Realiza una consulta médico sobre la necesidad del examen de HbA1c. Él o ella te indicará si es necesario y te proporcionará una orden para el análisis.
        </p>
    </div>
</div>

<div class="container-r">
<div class="icono">
<svg xmlns="http://www.w3.org/2000/svg" height="100px" viewBox="0 -960 960 960" width="100px" fill="#000000"><path d="m678-134 46-46-64-64-46 46q-14 14-14 32t14 32q14 14 32 14t32-14Zm102-102 46-46q14-14 14-32t-14-32q-14-14-32-14t-32 14l-46 46 64 64ZM735-77q-37 37-89 37t-89-37q-37-37-37-89t37-89l148-148q37-37 89-37t89 37q37 37 37 89t-37 89L735-77ZM200-200v-560 560Zm0 80q-33 0-56.5-23.5T120-200v-560q0-33 23.5-56.5T200-840h168q13-36 43.5-58t68.5-22q38 0 68.5 22t43.5 58h168q33 0 56.5 23.5T840-760v245q-20-5-40-5t-40 3v-243H200v560h243q-3 20-3 40t5 40H200Zm280-670q13 0 21.5-8.5T510-820q0-13-8.5-21.5T480-850q-13 0-21.5 8.5T450-820q0 13 8.5 21.5T480-790ZM280-600v-80h400v80H280Zm0 160v-80h400v34q-8 5-15.5 11.5T649-460l-20 20H280Zm0 160v-80h269l-49 49q-8 8-14.5 15.5T474-280H280Z"/></svg>     </div>
        <div class="container-forms">
            <form action="#" method="post">
                <div class="mb-3">
                    <label for="hemoglobina" class="form-label">Hemoglobina</label>
                    <input type="number" class="form-control" id="hemoglobina" name="hemoglobina" placeholder="120" disabled>
                </div>
                <div class="mb-3">
                    <label for="date" class="form-label">Fecha de ingreso</label>
                    <input type="text" class="form-control" id="date-ingreso" name="date-ingreso"disabled>
                </div>
                <div class="mb-3">
                    <label for="date-actualizacion" class="form-label">Proxima actualizacion</label>
                    <input type="text" class="form-control" id="date-actualizacion" name="date-actualizacion"disabled>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
</div>

<?php require_once('footer');
