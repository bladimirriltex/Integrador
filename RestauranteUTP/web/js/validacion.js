window.onload=iniciar;

function iniciar(){
    document.getElementById('btnsend').addEventListener('click',validarIniciosesion,false);
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

function validarCorreovoid(){
    var email=document.getElementById('email');
    if(onlyvoid(email.value)){
        setErrorFor(email,'El campo no puede estar vacio');
        return false;
    }else{
        setSuccessFor(email);
        return true;
    }
}

function validarCorreocheck(){
    var email=document.getElementById('email');
    if(!checkEmail(email.value)){
        setErrorFor(email,'El correo no es valido');
        return false;
    }else{
        setSuccessFor(email);
        return true;
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

function validarIniciosesion(e){
    if(validarCorreo() && validarCorreocheck()){
        
        return true;
    }else{
        e.preventDefault();
        
        return false;
    }
}
function validarCorreo(){}
function validarContraseña(){}

function checkEmail(valor) {
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
/*
window.onload=iniciar;
function  iniciar(){
    document.getElementById("btnsend").addEventListener('click',e=>{
    e.preventDefault();
    const btnsend=document.getElementById('btnsend');
    if (btnsend.value==='iniciar'){
        iniciar_sesion();
    }else if (btnsend.value==='registrar') {
        registrar();
    }
    
    
},false);
    
}






function iniciar_sesion(){
    const email=document.getElementById('email');
    const password=document.getElementById('password');     
    
    const emailvalue=email.value.trim(); 
    const passwordvalue=password.value.trim(); 
    
    if (emailvalue==='') {
        setErrorFor(email, 'No puede dejar el campo en blanco.');		
    }else if(!validarEmail(emailvalue)){
        setErrorFor(email, 'El E-mail no es valido.');
    }else{
        setSuccessFor(email);
    }
    
    
    
    if (passwordvalue==='') {
        setErrorFor(password, 'No puede dejar el campo en blanco.');
    }else{
        setSuccessFor(password);
    }
    
    
    
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
*/