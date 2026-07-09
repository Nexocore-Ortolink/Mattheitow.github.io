document.addEventListener("DOMContentLoaded", () => {
    const btnLoginPatient = document.getElementById("btnLoginRolePatient");
    const btnLoginSpecialist = document.getElementById("btnLoginRoleSpecialist");
    const loginForm = document.getElementById("loginForm");
    const loginNotice = document.getElementById("loginNotice");

    let activeLoginRole = "paciente";

    if (btnLoginPatient && btnLoginSpecialist) {
        btnLoginPatient.addEventListener("click", () => {
            if (activeLoginRole === "paciente") return;
            activeLoginRole = "paciente";
            btnLoginPatient.classList.add("active");
            btnLoginSpecialist.classList.remove("active");
        });

        btnLoginSpecialist.addEventListener("click", () => {
            if (activeLoginRole === "especialista") return;
            activeLoginRole = "especialista";
            btnLoginSpecialist.classList.add("active");
            btnLoginPatient.classList.remove("active");
        });
    }

    if (loginForm && loginNotice) {
        loginForm.addEventListener("submit", (e) => {
            e.preventDefault();

            loginNotice.className = "form-notice success";

            if (activeLoginRole === "paciente") {
                loginNotice.textContent = "¡Sesión iniciada con éxito! Redirigiendo a tu Portal del Paciente...";
            } else {
                loginNotice.textContent = "¡Sesión iniciada con éxito! Redirigiendo al Portal Clínico...";
            }

            const submitBtn = loginForm.querySelector('button[type="submit"]');
            if (submitBtn) submitBtn.disabled = true;

            setTimeout(() => {
                window.location.href = "index.html";
            }, 2000);
        });
    }
});
