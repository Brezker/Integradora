function valid_all(){

    //Mail
        //Pass
        var check_pass=/^(?=.*\d)(?=.*[A-Z])(?=.*[a-z])\S{8,20}$/;
        var valid_pass=check_pass.test(document.formulario.txtpass.value);
        
        if(document.formulario.txtpass.value==""){
        alert("Contraseña obligatoria.");
        document.formulario.txtcorreo.focus();
        } else if(valid_pass==true){
            //Same time
            document.formulario.submit();
        }else{
        alert("Formato de contraseña inválido, intente de nuevo.");
       }
        
    return false;
    
}

//var contra = /^(?=.\d)(?=.[a-z]).*[A-Z]/;