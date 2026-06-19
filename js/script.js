document.addEventListener("DOMContentLoaded", () => {

    /* ==========================================
       1. MENÚ MÓVIL (HAMBURGUESA)
       ========================================== */
    const menuToggle = document.getElementById("menuToggle");
    const navMenu = document.getElementById("navMenu");
    const navLinks = document.querySelectorAll(".nav-link");

    if (menuToggle && navMenu) {
        menuToggle.addEventListener("click", () => {
            navMenu.classList.toggle("active");
            
            // Cambiar icono de menú a cerrar
            const icon = menuToggle.querySelector("span");
            if (navMenu.classList.contains("active")) {
                icon.textContent = "close";
            } else {
                icon.textContent = "menu";
            }
        });

        // Cerrar menú al hacer clic en un enlace
        navLinks.forEach(link => {
            link.addEventListener("click", () => {
                navMenu.classList.remove("active");
                const icon = menuToggle.querySelector("span");
                icon.textContent = "menu";
            });
        });
    }

    /* ==========================================
       2. CABECERA ADAPTABLE (SCROLL EFFECT)
       ========================================== */
    const header = document.getElementById("header");
    window.addEventListener("scroll", () => {
        if (window.scrollY > 50) {
            header.classList.add("scrolled");
        } else {
            header.classList.remove("scrolled");
        }
    });

    /* ==========================================
       3. NAVEGACIÓN ACTIVA SEGÚN EL SCROLL
       ========================================== */
    const sections = document.querySelectorAll("section");
    
    window.addEventListener("scroll", () => {
        let currentSection = "";
        
        sections.forEach(section => {
            const sectionTop = section.offsetTop - 100;
            const sectionHeight = section.clientHeight;
            if (window.scrollY >= sectionTop && window.scrollY < sectionTop + sectionHeight) {
                currentSection = section.getAttribute("id");
            }
        });

        navLinks.forEach(link => {
            link.classList.remove("active");
            if (link.getAttribute("href") === `#${currentSection}`) {
                link.classList.add("active");
            }
        });
    });

    /* ==========================================
       4. TESTIMONIOS (CAROUSEL SLIDER)
       ========================================== */
    const testimonials = document.querySelectorAll(".testimonial-item");
    const prevBtn = document.getElementById("prevTestimonial");
    const nextBtn = document.getElementById("nextTestimonial");
    let currentIdx = 0;

    function showTestimonial(idx) {
        testimonials.forEach(t => t.classList.remove("active"));
        testimonials[idx].classList.add("active");
    }

    if (prevBtn && nextBtn && testimonials.length > 0) {
        nextBtn.addEventListener("click", () => {
            currentIdx = (currentIdx + 1) % testimonials.length;
            showTestimonial(currentIdx);
        });

        prevBtn.addEventListener("click", () => {
            currentIdx = (currentIdx - 1 + testimonials.length) % testimonials.length;
            showTestimonial(currentIdx);
        });
    }

    /* ==========================================
       5. REGISTRO (CONMUTADOR DE ROL Y DINÁMICO)
       ========================================== */
    const btnPatient = document.getElementById("btnRolePatient");
    const btnSpecialist = document.getElementById("btnRoleSpecialist");
    const formTitle = document.getElementById("formTitle");
    const btnSubmit = document.getElementById("btnSubmitForm");
    
    // Contenedores de campos dinámicos
    const groupAmputation = document.getElementById("groupAmputation");
    const groupSpecialty = document.getElementById("groupSpecialty");
    const groupLicense = document.getElementById("groupLicense");
    
    // Inputs para requerir/no requerir
    const selectAmputation = document.getElementById("regAmputation");
    const selectSpecialty = document.getElementById("regSpecialty");
    const inputLicense = document.getElementById("regLicense");
    
    let activeRole = "paciente"; // paciente o especialista

    if (btnPatient && btnSpecialist) {
        btnPatient.addEventListener("click", () => {
            if (activeRole === "paciente") return;
            activeRole = "paciente";
            
            // Clases de botones
            btnPatient.classList.add("active");
            btnSpecialist.classList.remove("active");
            
            // Textos
            formTitle.textContent = "Crear mi cuenta de Paciente";
            btnSubmit.textContent = "Crear mi cuenta";
            
            // Mostrar campos de Paciente, ocultar Especialista
            groupAmputation.classList.remove("hidden");
            groupSpecialty.classList.add("hidden");
            groupLicense.classList.add("hidden");
            
            // Cambiar "required"
            selectAmputation.required = true;
            selectSpecialty.required = false;
            inputLicense.required = false;
        });

        btnSpecialist.addEventListener("click", () => {
            if (activeRole === "especialista") return;
            activeRole = "especialista";
            
            // Clases de botones
            btnSpecialist.classList.add("active");
            btnPatient.classList.remove("active");
            
            // Textos
            formTitle.textContent = "Registrarme como Especialista";
            btnSubmit.textContent = "Registrarse como especialista";
            
            // Mostrar campos de Especialista, ocultar Paciente
            groupAmputation.classList.add("hidden");
            groupSpecialty.classList.remove("hidden");
            groupLicense.classList.remove("hidden");
            
            // Cambiar "required"
            selectAmputation.required = false;
            selectSpecialty.required = true;
            inputLicense.required = true;
        });
    }

    /* ==========================================
       6. SIMULACIÓN DE ENVÍOS DE FORMULARIOS
       ========================================== */
    const regForm = document.getElementById("regForm");
    const formNotice = document.getElementById("formNotice");

    if (regForm && formNotice) {
        regForm.addEventListener("submit", (e) => {
            e.preventDefault();
            
            // Simular respuesta exitosa según HUS
            formNotice.className = "form-notice success";
            
            if (activeRole === "paciente") {
                formNotice.textContent = "Cuenta creada exitosamente. Redirigiendo al onboarding...";
            } else {
                formNotice.textContent = "Cuenta de especialista creada. Pendiente de verificación por nuestro equipo médico.";
            }
            
            regForm.reset();
            
            // Quitar mensaje en 5 segundos
            setTimeout(() => {
                formNotice.textContent = "";
            }, 5000);
        });
    }

    const contactForm = document.getElementById("contactForm");
    const contactNotice = document.getElementById("contactNotice");

    if (contactForm && contactNotice) {
        contactForm.addEventListener("submit", (e) => {
            e.preventDefault();
            contactNotice.className = "form-notice success";
            contactNotice.textContent = "¡Consulta enviada! Nos pondremos en contacto contigo a la brevedad.";
            
            contactForm.reset();
            
            setTimeout(() => {
                contactNotice.textContent = "";
            }, 4000);
        });
    }

    /* ==========================================
       7. ANIMACIONES DE ENTRADA AL HACER SCROLL
       ========================================== */
    const animScrollElements = document.querySelectorAll(".scroll-animate");
    
    if ("IntersectionObserver" in window) {
        const observer = new IntersectionObserver((entries, observer) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    entry.target.classList.add("animated");
                    // Dejar de observar una vez animado
                    observer.unobserve(entry.target);
                }
            });
        }, {
            threshold: 0.15,
            rootMargin: "0px 0px -50px 0px"
        });

        animScrollElements.forEach(el => observer.observe(el));
    } else {
        // Fallback si el navegador no soporta IntersectionObserver
        animScrollElements.forEach(el => el.classList.add("animated"));
    }
});
