/*const datos = {
  nombres: '',
  apellidos: '',
  documento: '',
  email: '',
  nuevpassword: '',
  confirmpassword: '',
}

const nombres = document.querySelector('#nombres');
const apellidos = document.querySelector('#apellidos');
const documento = document.querySelector('#documento');
const email = document.querySelector('#email');
const nuevaContraseña = document.querySelector('#nuevpassword');
const repetirContraseña = document.querySelector('#confirmpassword');
const formulario = document.querySelector('.formulario');

nombres.addEventListener('input', leerTexto);
apellidos.addEventListener('input', leerTexto);
documento.addEventListener('input', leerTexto);
email.addEventListener('input', leerTexto);
nuevaContraseña.addEventListener('input', leerTexto);
repetirContraseña.addEventListener('input', leerTexto);

// evento submit

formulario.addEventListener('submit', function(evento){
  console.log(evento);
  evento.preventDefault();

  const{nombres, apellidos, documento, email, nuevpassword, confirmpassword} = datos;

if(nombres === '' || apellidos ==='' || documento === '' || email ==='' || nuevpassword === ''|| confirmpassword ===''){
      mostrarError('Todos los campos son abligatorios'); 
    return;

   }       
    
    mostrarMensaje('Registro enviado correctamente');
});

function leerTexto(e){
  datos[e.target.id] = e.target.value;
  console.log(datos);
}

function mostrarError(mensaje){
  const error = document.createElement('P')
  error.textContent = mensaje;
  error.classList.add('error');

  formulario.appendChild(error);

  setTimeout(() =>{
    error.remove();
  }, 5000);
}

function mostrarMensaje(mensaje){
  const correcto = document.createElement('P')
  correcto.textContent = mensaje;
  correcto.classList.add('correcto');

  formulario.appendChild(correcto);

  setTimeout(() =>{
    correcto.remove();
  }, 5000);
}

function login(){
  var documento, contraseña;

  documento = document.getElementById('document').value;
  contraseña = document.getElementById('password').value;

  if( documento === '' && contraseña === '' ){
      alert('Error ingresa los datos solicitados')
  };
  if( documento.length === 0){
      alert('Por favor escriba un numero de documento')
  };
  if( contraseña.length < 6){
      alert('Error escriba una contraseña mayor a 6 caracteres')

  };
  if( documento === '9958113' && contraseña === '123456' ){
    window.location= 'menuprinusuarios.html';

}

}*/



/*function mostrarExitoso(mensaje){
  const exitoso = document.createElement('P')
  exitoso.textContent = mensaje;
  exitoso.classList.add('exitoso');

  formulario.appendChild(exitoso);

  setTimeout(() =>{
    exitoso.remove();
  }, 5000);
};




*/

