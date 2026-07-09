document.addEventListener("DOMContentLoaded", () => {

    const menuToggle = document.getElementById("menuToggle");
    const navMenu = document.getElementById("navMenu");
    const navLinks = document.querySelectorAll(".nav-link");

    if (menuToggle && navMenu) {
        menuToggle.addEventListener("click", () => {
            navMenu.classList.toggle("active");

            const icon = menuToggle.querySelector("span");
            if (navMenu.classList.contains("active")) {
                icon.textContent = "close";
            } else {
                icon.textContent = "menu";
            }
        });

        navLinks.forEach(link => {
            link.addEventListener("click", () => {
                navMenu.classList.remove("active");
                const icon = menuToggle.querySelector("span");
                icon.textContent = "menu";
            });
        });
    }

    const header = document.getElementById("header");
    window.addEventListener("scroll", () => {
        if (window.scrollY > 50) {
            header.classList.add("scrolled");
        } else {
            header.classList.remove("scrolled");
        }
    });

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

    const btnPatient = document.getElementById("btnRolePatient");
    const btnSpecialist = document.getElementById("btnRoleSpecialist");
    const formTitle = document.getElementById("formTitle");
    const btnSubmit = document.getElementById("btnSubmitForm");

    const groupAmputation = document.getElementById("groupAmputation");
    const groupSpecialty = document.getElementById("groupSpecialty");
    const groupLicense = document.getElementById("groupLicense");

    const selectAmputation = document.getElementById("regAmputation");
    const selectSpecialty = document.getElementById("regSpecialty");
    const inputLicense = document.getElementById("regLicense");

    let activeRole = "paciente";

    if (btnPatient && btnSpecialist) {
        btnPatient.addEventListener("click", () => {
            if (activeRole === "paciente") return;
            activeRole = "paciente";

            btnPatient.classList.add("active");
            btnSpecialist.classList.remove("active");

            formTitle.textContent = "Crear mi cuenta de Paciente";
            btnSubmit.textContent = "Crear mi cuenta";

            groupAmputation.classList.remove("hidden");
            groupAmputation.classList.remove("fade-in-slide");
            void groupAmputation.offsetWidth;
            groupAmputation.classList.add("fade-in-slide");

            groupSpecialty.classList.add("hidden");
            groupLicense.classList.add("hidden");

            selectAmputation.required = true;
            selectSpecialty.required = false;
            inputLicense.required = false;
        });

        btnSpecialist.addEventListener("click", () => {
            if (activeRole === "especialista") return;
            activeRole = "especialista";

            btnSpecialist.classList.add("active");
            btnPatient.classList.remove("active");

            formTitle.textContent = "Registrarme como Especialista";
            btnSubmit.textContent = "Registrarse como especialista";

            groupAmputation.classList.add("hidden");

            groupSpecialty.classList.remove("hidden");
            groupSpecialty.classList.remove("fade-in-slide");
            void groupSpecialty.offsetWidth;
            groupSpecialty.classList.add("fade-in-slide");

            groupLicense.classList.remove("hidden");
            groupLicense.classList.remove("fade-in-slide");
            void groupLicense.offsetWidth;
            groupLicense.classList.add("fade-in-slide");

            selectAmputation.required = false;
            selectSpecialty.required = true;
            inputLicense.required = true;
        });
    }

    const regForm = document.getElementById("regForm");
    const formNotice = document.getElementById("formNotice");

    if (regForm && formNotice) {
        regForm.addEventListener("submit", (e) => {
            e.preventDefault();

            formNotice.className = "form-notice success";

            if (activeRole === "paciente") {
                formNotice.textContent = "Cuenta creada exitosamente. Redirigiendo al onboarding...";
            } else {
                formNotice.textContent = "Cuenta de especialista creada. Pendiente de verificación por nuestro equipo médico.";
            }

            regForm.reset();

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

    const animScrollElements = document.querySelectorAll(".scroll-animate");

    if ("IntersectionObserver" in window) {
        const observer = new IntersectionObserver((entries, observer) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    entry.target.classList.add("animated");
                    observer.unobserve(entry.target);
                }
            });
        }, {
            threshold: 0.15,
            rootMargin: "0px 0px -50px 0px"
        });

        animScrollElements.forEach(el => observer.observe(el));
    } else {
        animScrollElements.forEach(el => el.classList.add("animated"));
    }

    const faqItems = document.querySelectorAll(".faq-item");
    faqItems.forEach(item => {
        const questionBtn = item.querySelector(".faq-question");
        if (questionBtn) {
            questionBtn.addEventListener("click", () => {
                const isActive = item.classList.contains("active");

                faqItems.forEach(i => {
                    i.classList.remove("active");
                    const btn = i.querySelector(".faq-question");
                    if (btn) btn.setAttribute("aria-expanded", "false");
                });

                if (!isActive) {
                    item.classList.add("active");
                    questionBtn.setAttribute("aria-expanded", "true");
                }
            });
        }
    });

    const legalTexts = {
        terms: {
            title: "Términos y Condiciones",
            icon: "gavel",
            content: `
                <p><strong>Última actualización: Junio 2026</strong></p>
                <p>Bienvenido a OrtoLink, una plataforma de tecnología de la salud provista por Nexocore S.A. Al utilizar nuestra aplicación o sitio web, usted acepta cumplir con estos Términos y Condiciones de Uso.</p>
                <p><strong>1. Uso de la plataforma:</strong> OrtoLink proporciona una herramienta digital para apoyar el seguimiento de la rehabilitación física post-protésica y la autogestión de dolores, incluyendo la bitácora del dolor fantasma. La plataforma no sustituye en ningún caso las consultas médicas directas o diagnósticos clínicos presenciales.</p>
                <p><strong>2. Registro de cuenta:</strong> El usuario debe proporcionar información real y mantener la confidencialidad de su contraseña. El uso clínico de la cuenta del especialista requiere de la verificación oficial de su colegiatura médica por parte de Nexocore.</p>
                <p><strong>3. Responsabilidades del paciente:</strong> El paciente es responsable del uso seguro de su prótesis física y del seguimiento de los ejercicios guiados según las capacidades físicas indicadas por su terapeuta.</p>
            `
        },
        privacy: {
            title: "Políticas de Privacidad",
            icon: "shield",
            content: `
                <p><strong>Última actualización: Junio 2026</strong></p>
                <p>En Nexocore S.A., la privacidad de nuestros usuarios es de máxima prioridad. Esta política detalla cómo recopilamos, protegemos y compartimos su información.</p>
                <p><strong>1. Recopilación de Información:</strong> Recopilamos datos de registro (nombre, correo electrónico, contraseña) y datos de salud (tipo de amputación, nivel de dolor, frecuencia y adherencia a ejercicios físicos).</p>
                <p><strong>2. Almacenamiento seguro:</strong> Todos los datos de salud se encriptan de extremo a extremo y se alojan en servidores seguros conformes con los estándares internacionales de seguridad clínica.</p>
                <p><strong>3. Control del usuario:</strong> Usted es dueño de sus datos de salud. Puede revocarlos o eliminarlos en cualquier momento desde los ajustes de su cuenta en la aplicación móvil.</p>
            `
        },
        data: {
            title: "Uso de Datos Clínicos",
            icon: "database",
            content: `
                <p><strong>Última actualización: Junio 2026</strong></p>
                <p>El tratamiento y análisis de los datos clínicos en la plataforma OrtoLink cumple estrictamente con las regulaciones de protección de datos personales de salud.</p>
                <p><strong>1. Compartición clínica consentida:</strong> Al registrar un especialista de confianza, usted autoriza a OrtoLink a enviar reportes consolidados sobre su diario de dolor e historial de ejercicios. Puede desactivar esta compartición cuando lo desee.</p>
                <p><strong>2. Uso con fines de investigación:</strong> Nexocore podrá utilizar datos de salud anonimizados (sin nombres ni correos vinculados) con el exclusivo fin de realizar estudios científicos y mejorar las rutinas de rehabilitación para toda la comunidad amputada.</p>
            `
        },
        support: {
            title: "Soporte Técnico y Asistencia",
            icon: "contact_support",
            content: `
                <p><strong>Servicio de Soporte y Asistencia Clínica</strong></p>
                <p>Nexocore S.A. ofrece un servicio técnico continuo para la plataforma digital OrtoLink.</p>
                <p><strong>1. Canales de atención:</strong> Puede reportar fallos de software o problemas de acceso a través del correo <strong>soporte@nexocore.com.pe</strong> o por vía telefónica al +51 1 619-7000 en el horario de Lunes a Sábado de 8:00 AM a 6:00 PM.</p>
                <p><strong>2. Tiempos de respuesta:</strong> Las solicitudes urgentes relacionadas con la inactividad de las cuentas de especialistas se resuelven en un plazo máximo de 24 horas útiles.</p>
                <p><strong>3. Exclusión:</strong> Nuestro equipo de soporte técnico no proporciona asesoría médica directa sobre prótesis físicas o dosificación de analgésicos.</p>
            `
        }
    };

    const legalModal = document.getElementById("legalModal");
    const legalTitle = document.getElementById("legalTitle");
    const legalIcon = document.getElementById("legalIcon");
    const legalContent = document.getElementById("legalContent");
    const btnCloseLegal = document.getElementById("btnCloseLegal");
    const btnAcceptLegal = document.getElementById("btnAcceptLegal");
    const legalLinks = document.querySelectorAll(".legal-link");

    const openLegal = (type) => {
        const data = legalTexts[type];
        if (data) {
            legalTitle.textContent = data.title;
            legalIcon.textContent = data.icon;
            legalContent.innerHTML = data.content;
            legalModal.classList.remove("hidden");
            document.body.style.overflow = "hidden";
        }
    };

    const closeLegal = () => {
        legalModal.classList.add("hidden");
        document.body.style.overflow = "";
    };

    legalLinks.forEach(link => {
        link.addEventListener("click", (e) => {
            e.preventDefault();
            const type = link.getAttribute("data-legal");
            openLegal(type);
        });
    });

    if (btnCloseLegal) btnCloseLegal.addEventListener("click", closeLegal);
    if (btnAcceptLegal) btnAcceptLegal.addEventListener("click", closeLegal);

    if (legalModal) {
        legalModal.addEventListener("click", (e) => {
            if (e.target === legalModal) {
                closeLegal();
            }
        });
    }

    const painSlider = document.getElementById("painSlider");
    const painValueDisplay = document.getElementById("painValueDisplay");
    const painScaleCard = document.getElementById("painScaleCard");
    const painFeedbackIcon = document.getElementById("painFeedbackIcon");
    const painFeedbackTitle = document.getElementById("painFeedbackTitle");
    const painFeedbackDesc = document.getElementById("painFeedbackDesc");
    const faces = document.querySelectorAll(".pain-faces .face");

    const painData = {
        1: {
            theme: "pain-green",
            title: "Nivel 1 - Dolor Leve / Confortable",
            icon: "check_circle",
            desc: "Tu estado es óptimo. Te sugerimos realizar tu rutina diaria de movilidad ligera (10 min) para mantener la circulación activa en tu miembro residual."
        },
        2: {
            theme: "pain-green",
            title: "Nivel 2 - Dolor Muy Leve",
            icon: "check_circle",
            desc: "Tu estado es adecuado. Realizar masajes de desensibilización ligeros te ayudará a mantener la comodidad en el socket."
        },
        3: {
            theme: "pain-teal",
            title: "Nivel 3 - Dolor Moderado Leve",
            icon: "info",
            desc: "Sugerencia de OrtoLink: Realiza ejercicios de compresión ligera mediante un vendaje elástico y dedica 5 minutos a respiraciones profundas diafragmáticas."
        },
        4: {
            theme: "pain-teal",
            title: "Nivel 4 - Dolor Moderado / Molesto",
            icon: "info",
            desc: "Sugerencia: Haz una pausa y realiza 10 minutos de terapia de espejo. Si utilizas prótesis, verifica que el socket esté correctamente alineado."
        },
        5: {
            theme: "pain-orange",
            title: "Nivel 5 - Dolor Severo Moderado",
            icon: "warning",
            desc: "Alerta de bitácora registrada. Recomendamos retirar la prótesis temporalmente, realizar ligeras palmaditas en la zona residual y reportar este dolor en tu diario."
        },
        6: {
            theme: "pain-orange",
            title: "Nivel 6 - Dolor Severo",
            icon: "warning",
            desc: "Se recomienda iniciar terapia de calor o compresión fría en el miembro residual por 15 minutos. El reporte ha sido consolidado en tu informe semanal."
        },
        7: {
            theme: "pain-red",
            title: "Nivel 7 - Dolor Muy Severo",
            icon: "report",
            desc: "Crisis de dolor fantasma registrada. Se recomienda reposar en una posición cómoda, aplicar masajes profundos de compresión y notificar a tu especialista si persiste."
        },
        8: {
            theme: "pain-red",
            title: "Nivel 8 - Dolor Crítico",
            icon: "report",
            desc: "Dolor muy severo. Recomendamos suspender el uso de la prótesis hoy y realizar técnicas cognitivas de relajación progresiva. Alerta enviada a tu bitácora."
        },
        9: {
            theme: "pain-critical",
            title: "Nivel 9 - Dolor Extremo",
            icon: "error",
            desc: "Crisis aguda. Considera el uso de la medicación prescrita por tu médico fisiatra y ponte en contacto con tu protesista para evaluar posibles presiones anómalas en el muñón."
        },
        10: {
            theme: "pain-critical",
            title: "Nivel 10 - Dolor Insoportable",
            icon: "error",
            desc: "¡Alerta crítica de dolor fantasma! Se simula el envío inmediato de una notificación de emergencia a tu especialista. Te aconsejamos contactar asistencia médica directa."
        }
    };

    const updatePainScale = (level) => {
        const data = painData[level];
        if (!data) return;

        if (painValueDisplay) painValueDisplay.textContent = level;
        if (painFeedbackTitle) painFeedbackTitle.textContent = data.title;
        if (painFeedbackDesc) painFeedbackDesc.textContent = data.desc;
        if (painFeedbackIcon) painFeedbackIcon.textContent = data.icon;

        if (painScaleCard) {
            painScaleCard.className = "pain-scale-container " + data.theme;
        }

        if (painSlider && painSlider.value != level) {
            painSlider.value = level;
        }

        if (faces.length > 0) {
            faces.forEach(face => {
                const faceLevel = parseInt(face.getAttribute("data-level"));
                let isMatch = false;
                if (level <= 2 && faceLevel === 1) isMatch = true;
                else if ((level === 3 || level === 4) && faceLevel === 3) isMatch = true;
                else if ((level === 5 || level === 6) && faceLevel === 5) isMatch = true;
                else if ((level === 7 || level === 8) && faceLevel === 7) isMatch = true;
                else if (level >= 9 && faceLevel === 10) isMatch = true;

                if (isMatch) {
                    face.classList.add("active");
                } else {
                    face.classList.remove("active");
                }
            });
        }
    };

    if (painSlider) {
        painSlider.addEventListener("input", (e) => {
            const val = parseInt(e.target.value);
            updatePainScale(val);
        });
    }

    if (faces.length > 0) {
        faces.forEach(face => {
            face.addEventListener("click", () => {
                const val = parseInt(face.getAttribute("data-level"));
                updatePainScale(val);
            });
        });
    }

    // Control del video de la carátula al pasar el cursor
    const heroVideo = document.getElementById("heroVideo");
    if (heroVideo) {
        heroVideo.addEventListener("mouseenter", () => {
            heroVideo.play().catch(error => {
                console.log("Autoplay preventivo o error al reproducir video:", error);
            });
        });
        heroVideo.addEventListener("mouseleave", () => {
            heroVideo.pause();
        });
    }
});
