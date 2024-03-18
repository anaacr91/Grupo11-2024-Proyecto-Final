document.addEventListener('DOMContentLoaded', function() {
const form = document.getElementById('registroForm');
    const nombreInput = document.getElementById('nombre');
    const emailInput = document.getElementById('email');
    const contrasenaInput = document.getElementById('contrasena');
    const nombreError = document.getElementById('nombreError');
    const emailError = document.getElementById('emailError');
    const contrasenaError = document.getElementById('contrasenaError');
    const regex= /^[\w\.-]+@[a-zA-Z\d\.-]+\.[a-zA-Z]{2,}$/;
    

    form.addEventListener('submit', function(event) {
        let isValid = true;

        if (nombreInput.value === '') {
            nombreError.textContent = 'Por favor, ingresa tu nombre.';
            isValid = false;
        } else {
            nombreError.textContent = '';
        }

        if (emailInput.value === '' || regex.test(emailInput.value)) {
            emailError.textContent = 'Por favor, ingresa tu correo electrónico correctamente.';
            isValid = false;
        } else {
            emailError.textContent = '';
        }

        if (contrasenaInput.value === '') {
            contrasenaError.textContent = 'Por favor, ingresa tu contraseña.';
            isValid = false;
        } else {
            contrasenaError.textContent = '';
        }

        if (!isValid) {
            event.preventDefault();
        }
        const nombre = document.getElementById('nombre').value;
        const email = document.getElementById('email').value;
        const contrasena = document.getElementById('contrasena').value;
        const userData = {
            nombre: nombre,
            email: email,
            contrasena: contrasena
            };
            
            const userDataJSON = JSON.stringify(userData);

            localStorage.setItem('userData', userDataJSON);
        
    });
});