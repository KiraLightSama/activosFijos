<!DOCTYPE html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<br>
<div class="col-md-12 "  >
    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <h1 class="display-3">Copia de seguridad
            </h1>
            <p class="lead">sistema de copia de seguridad</p>
        </div>
    </div>

</div>


<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<title>Script php backup and restore Mysqli</title>
</head>
<body>
<div class="col-md-12 ">


	<a class="col-md-12 " href="./Backup.php">Realizar copia de seguridad</a>
	<form class="col-md-12 " action="./Restore.php" method="POST">
        <div class="col-md-12 "  >
        <div class="form-group col-md-12 " >
            <label for="exampleFormControlSelect1"> Selecciona un punto de restauración</label>
            <select name="restorePoint" class=" col-md-12 form-control" id="exampleFormControlSelect1">
                <option value="" disabled="" selected="">Selecciona un punto de restauración</option>
                <?php
                include_once './Connet.php';
                $ruta=BACKUP_PATH;
                if(is_dir($ruta)){
                    if($aux=opendir($ruta)){
                        while(($archivo = readdir($aux)) !== false){
                            if($archivo!="."&&$archivo!=".."){
                                $nombrearchivo=str_replace(".sql", "", $archivo);
                                $nombrearchivo=str_replace("-", ":", $nombrearchivo);
                                $ruta_completa=$ruta.$archivo;
                                if(is_dir($ruta_completa)){
                                }else{
                                    echo '<option value="'.$ruta_completa.'">'.$nombrearchivo.'</option>';
                                }
                            }
                        }
                        closedir($aux);
                    }
                }else{
                    echo $ruta." No es ruta válida";
                }
                ?>
            </select>
            </div>
        </div>

		<button  type="submit" >Restaurar</button>
</div>
	</form>
</body>
</html>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>


