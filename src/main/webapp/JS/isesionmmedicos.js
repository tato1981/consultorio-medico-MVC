function login(){
  var documento, contraseña;

  documento = document.getElementById('document-medico').value;
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
  //if( documento === '9958113' && contraseña === '123456' ){
    //window.location= 'menuprinmedicos.html';

//}

}


