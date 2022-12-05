function validarUsuario(){
    var nombres, apellidos, documento;
  
    nombres = document.getElementById('fullname').value;
    apellidos = document.getElementById('username').value;
    documento = document.getElementById('document').value;
   
  
    if( nombres === '' && apellidos === '' && documento === ''){
        alert('Error ingresa los datos solicitados')
    };
             
    if( nombres === 'duberney' && apellidos === 'obando' && documento === '9958113' ){
      window.location= 'registro_usuarios.jsp';
  
  }
  
}
  

