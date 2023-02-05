function login(){
  let documento, contrasena;

  email = document.getElementById('email').value;
  contrasena = document.getElementById('contrasena').value;

  if( documento === '' && contrasena === '' ){
      alert('Error ingresa los datos solicitados')
  };
  if( documento. length === 0){
      alert('Por favor escriba un numero de documento')
  };
  if( contrasena.length < 6){
      alert('Error escriba una contraseña mayor a 6 caracteres')

  };
  /*if( documento === '9958113' && contraseña === '123456' ){
    window.location= 'menuprinusuarios.jsp';*/

}



