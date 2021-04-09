function borrar() {

    var res = confirm("¿Estas seguro que quieres eliminar este usuario?")

    if (res == true && document.formborrar.txtid.value == "1") {
        alert("No se puede borrar al administrador");
        return false;
    } else if (res == true) {
        return true;
    } else {
        return false;
    }
}


function confirmar_borrar() {
    if (document.formborrar.txtid.value == "1") {
        alert("No se puede borrar al administrador");
    }
}

function buscar_modif() {
    if (document.formbuscarmod.txtid.value == "1") {
        alert("No se puede modificar al administrador");
    } else {
    }
}