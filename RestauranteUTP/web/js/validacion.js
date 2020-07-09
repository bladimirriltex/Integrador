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
    const distritovalue=distrito.value;
    const direccionvalue=direccion.value.trim();
    const tipodocvalue=tipodoc.value;
    const nrodocvalue=nrodoc.value.trim();
    const nrocelvalue=nrocel.value.trim();
    
    if(emailvalue==='' && passwordvalue==='' && password2value==='' && nombrevalue==='' && apellidosvalue==='' && distritovalue==='' && direccionvalue==='' && tipodocvalue==='' && nrodocvalue==='' && nrocelvalue===''){
        var sms='No puede dejar el campo en blanco.';
        setErrorFor(email, sms);
        setErrorFor(password, sms);
        setErrorFor(password2, sms);
        setErrorFor(nombre, sms);
        setErrorFor(apellidos, sms);
        setErrorFor(distrito, sms);
        setErrorFor(direccion, sms);
        setErrorFor(tipodoc, sms);
        setErrorFor(nrodoc, sms);
        setErrorFor(nrocel, sms);
        return false;
    }
    
    if (email.value==='') {
        setErrorFor(email, 'No puede dejar el campo en blanco.');
        return false;
    }else if(!validarEmail(emailvalue)){
        setErrorFor(email, 'El E-mail no es valido.');
        return false;
    }else{
        setSuccessFor(email);
    }
    
    if (onlyvoid(passwordvalue)) {
        setErrorFor(password, 'No puede dejar el campo en blanco.');
        return false;
    }else{
        setSuccessFor(password);
    }
    
    if (onlyvoid(password2value)) {
        setErrorFor(password2, 'No puede dejar el campo en blanco.');
        return false;
    }else if(passwordvalue!==password2value){
        setErrorFor(password, 'Las contraseñas no coinciden.');
        setErrorFor(password2, 'Las contraseñas no coinciden.');
        return false;
    }else{
        setSuccessFor(password);
        setSuccessFor(password2);
    }
    
    
    
    
    if (onlyvoid(nombrevalue)){
        setErrorFor(nombre, 'No puede dejar el campo en blanco.');
        return false;
    }else if(onlyNun(nombrevalue)){
        setErrorFor(nombre,'No se permite numeros');
        return false;
    }else{
        setSuccessFor(nombre);
    }
      
        
    
    if (onlyvoid(apellidosvalue)){
        setErrorFor(apellidos, 'No puede dejar el campo en blanco.');
        return false;
    }else if(onlyNun(apellidosvalue)){
        setErrorFor(apellidos,'No se permite numeros');
        return false;
    }else{
        setSuccessFor(apellidos);
    }
    
    
    if (onlyvoid(distritovalue)) {
        setErrorFor(distrito, 'No puede dejar el campo en blanco.');
        return false;
    }else{
        setSuccessFor(distrito);
    }
  
    
    if (onlyvoid(direccionvalue)) {
        setErrorFor(direccion, 'No puede dejar el campo en blanco.');
        return false;
    }else{
        setSuccessFor(direccion);
    }
 
    if (onlyvoid(tipodocvalue)) {
        setErrorFor(tipodoc, 'No puede dejar el campo en blanco.');
        return false;
    }else{
        setSuccessFor(tipodoc);
    }
    
    if (onlyvoid(nrodocvalue)){
        setErrorFor(nrodoc, 'No puede dejar el campo en blanco.');
        return false;
    }else if(!onlyNun(nrodocvalue)){
        setErrorFor(nrodoc,'Solo se permite numeros');
        return false;
    }else{
        setSuccessFor(nrodoc);
    }
    
    if (onlyvoid(nrocelvalue)){
        setErrorFor(nrocel, 'No puede dejar el campo en blanco.');
        return false;
    }else if(!onlyNun(nrocelvalue)){
        setErrorFor(nrocel,'Solo se permite numeros');
        return false;
    }else{
        setSuccessFor(nrocel);
    }
    
$('form').submit();
    return true;    
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
