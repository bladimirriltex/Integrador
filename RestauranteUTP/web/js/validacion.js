/*// creamos la funcion
function validarFormulario(){
    // removemos el div con la clase alert
    $('.alert').remove();


    // declarion de variables
    var password=$('#password').val(),
        correo=$('#correo').val();
        

    // validamos el campo nombre
    if(password=="" || password==null){

        cambiarColor("password");
        // mostramos le mensaje de alerta
        mostraAlerta("Campo obligatorio");
        return false;
    }else{
        var expresion= /^[a-zA-ZñÑáéíóúÁÉÍÓÚ ]*$/;
        if(!expresion.test(password)){
            // mostrara el mesaje que debe ingresar un nombre válido
            cambiarColor("nombre");
            mostraAlerta("No se permiten carateres especiales o numeros");
            return false;
        }
    }

    // validamos el correo
    if(correo=="" || correo==null){

        cambiarColor("correo");
        // mostramos le mensaje de alerta
        mostraAlerta("Campo obligatorio");
        return false;
    }else{
        var expresion= /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,4})+$/;
        if(!expresion.test(correo)){
            // mostrara el mesaje que debe ingresar un nombre válido
            cambiarColor("correo");
            mostraAlerta("Por favor ingrese un correo válido");
            return false;
        }
    }

   

     

    $('form').submit();
    return true;
    
} 

$('input').focus(function(){
    $('.alert').remove();
    colorDefault('nombre');
    colorDefault('correo');
    colorDefault('asunto');
});



// creamos un funcion de color por defecto a los bordes de los inputs
function colorDefault(dato){
    $('#' + dato).css({
        border: "1px solid #999"
    });
}

// creamos una funcio para cambiar de color a su bordes de los input
function cambiarColor(dato){
    $('#' + dato).css({
        border: "1px solid #dd5144"
    });
}

// funcion para mostrar la alerta

function mostraAlerta(texto){
    $('#password').after('<div class="alert">Error: '+ texto +'</div>');
}
 */

function validarSesion(){
    var email=document.getElementById('email'), password=document.getElementById('password');
    var emailval=email.value, passwordval=password.value;
    var expresion= /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,4})+$/;
    if(emailval=='' || emailval==null){
        setErrorFor(email,'El campo no puede quedar vacio');
        return false;
    }else{
        setSuccessFor(email);
    }
    
    /*else if(!expresion.test(emailval)){
        setErrorFor(email,'El e-mail no es valido');
        return false;
    }*/
    
    if(passwordval=='' || password==null)
    {
        setErrorFor(password,'El campo no puede quedar vacio');
        return false;
    }else{
        setSuccessFor(password);
    }
    
    $('form').submit();
    return true;
}



function registrar(){
    const email=document.getElementById('email');
    const password=document.getElementById('password');
    const password2=document.getElementById('password2');
    const nombre=document.getElementById('nombre');
    const apellidos=document.getElementById('apellidos');
    const distrito=document.getElementById('distrito');
    const direccion=document.getElementById('direccion');
    const tipodoc=document.getElementById('tipodoc');
    const nrodoc=document.getElementById('nrodoc');
    const nrocel=document.getElementById('celular');
    
    const emailvalue=email.value.trim();
    const passwordvalue=password.value.trim();
    const password2value=password2.value.trim();
    const nombrevalue=nombre.value.trim();
    const apellidosvalue=apellidos.value.trim();
    const distritovalue=distrito.value.trim();
    const direccionvalue=direccion.value.trim();
    const tipodocvalue=tipodoc.value.trim();
    const nrodocvalue=nrodoc.value.trim();
    const nrocelvalue=nrocel.value.trim();
    
    if (onlyvoid(emailvalue)) {
        setErrorFor(email, 'No puede dejar el campo en blanco.');		
    }else if(!validarEmail(emailvalue)){
        setErrorFor(email, 'El E-mail no es valido.');
    }else{
        setSuccessFor(email);
    }
    
    if (onlyvoid(passwordvalue)) {
        setErrorFor(password, 'No puede dejar el campo en blanco.');
    }else{
        setSuccessFor(password);
    }
    
    if (onlyvoid(password2value)) {
        setErrorFor(password2, 'No puede dejar el campo en blanco.');
    }else if(passwordvalue!==password2value){
        setErrorFor(password, 'Las contraseñas no coinciden.');
        setErrorFor(password2, 'Las contraseñas no coinciden.');
    }else{
        setSuccessFor(password);
        setSuccessFor(password2);
    }
    
    
    
    
    if (onlyvoid(nombrevalue)){
        setErrorFor(nombre, 'No puede dejar el campo en blanco.');
    }else if(onlyNun(nombrevalue)){
        setErrorFor(nombre,'No se permite numeros');
    }else{
        setSuccessFor(nombre);
    }
      
        
    
    if (onlyvoid(apellidosvalue)){
        setErrorFor(apellidos, 'No puede dejar el campo en blanco.');
    }else if(onlyNun(apellidosvalue)){
        setErrorFor(apellidos,'No se permite numeros');
    }else{
        setSuccessFor(apellidos);
    }
    
    
    if (onlyvoid(distritovalue)) {
        setErrorFor(distrito, 'No puede dejar el campo en blanco.');
    }else{
        setSuccessFor(distrito);
    }
  
    
    if (onlyvoid(direccionvalue)) {
        setErrorFor(direccion, 'No puede dejar el campo en blanco.');
    }else{
        setSuccessFor(direccion);
    }
 
    if (onlyvoid(tipodocvalue)) {
        setErrorFor(tipodoc, 'No puede dejar el campo en blanco.');
    }else{
        setSuccessFor(tipodoc);
    }
    
    if (onlyvoid(nrodocvalue)){
        setErrorFor(nrodoc, 'No puede dejar el campo en blanco.');
    }else if(!onlyNun(nrodocvalue)){
        setErrorFor(nrodoc,'Solo se permite numeros');
    }else{
        setSuccessFor(nrodoc);
    }
    
    if (onlyvoid(nrocelvalue)){
        setErrorFor(nrocel, 'No puede dejar el campo en blanco.');
    }else if(!onlyNun(nrocelvalue)){
        setErrorFor(nrocel,'Solo se permite numeros');
    }else{
        setSuccessFor(nrocel);
    }
    
    
    

}


function setErrorFor(input, message){
    const formControl=input.parentElement;
    const small= formControl.querySelector('small');
    formControl.className='formcontrol error';
    small.innerText=message;
}

function setSuccessFor(input){
    const formControl=input.parentElement;
    formControl.className='formcontrol success';
    
}



function validarEmail(valor) {
    if (/^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i.test(valor)){
        return true;
    } else {
        return false;
    }
}


function onlyText(para) {
    var patron=/^[a-zA-ZáéíóúÁÉÍÓÚñÑ\s]*$/;
    if(para.search(patron)){
        return false;
    }else {
        return true;
    }
}

function onlyNun(para) {
    
    if(!/^([0-9])*$/.test(para)){
        return false;
    }else {
        return true;
    }
}

function onlyvoid(para) {
    
    if(para!==''){
        return false;
    }else {
        return true;
    }
}
