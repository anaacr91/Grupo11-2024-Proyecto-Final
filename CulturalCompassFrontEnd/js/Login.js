addEventListener("DOMContentLoaded",(event)=>{
document.getElementById('formlogin').addEventListener('submit', (event)=>{
    const emailuser= getElementById('email').value;
    const passworduser=getElementById('password').value;
    const regex= /^[\w\.-]+@[a-zA-Z\d\.-]+\.[a-zA-Z]{2,}$/;

    if (emailuser || emailuser.length ==0 || !regex.test(emailuser) ||passworduser || passworduser.length<3){
        throw alert ('error in login')
    }

    const opciones={
        method: "POST", 
        headers: {"Content-Type": "application/json"}, 
        body: JSON.stringify({email:emailuser, password:passworduser}) 
    };
    fetch ('URL', opciones).then(response=>{
        if (response.ok){
            //guardar el token de seguridad
            //parar resto peticiones
            //encontrar token y utilizar token
         //redirigir a pagina menu usuario
        }
        else{
            throw alert('error in login')
        }
    }) 
})
})