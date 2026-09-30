
# ─── SHARED SNIPPETS ──────────────────────────────────────────────────────────

function Get-Head($root, $desc, $url) {
  if (!$root) { $root = "./" }
  if (!$desc) { $desc = "Despacho de abogados especialistas en extranjería en España. Arraigo social, laboral, familiar, nacionalidad española y permisos de residencia. Consulta gratuita en Cáceres y Online." }
  if (!$url) { $url = "" }
  return @"
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<meta name="description" content="$desc"/>
<meta name="keywords" content="abogados extranjeria espana, tramites extranjeria online, abogado extranjeria caceres, arraigo social requisitos, arraigo familiar, nacionalidad espanola residencia, permiso de residencia y trabajo, reagrupacion familiar, tarjeta comunitaria"/>
<meta property="og:title" content="Extranjería Expertos | Abogados de Extranjería en España"/>
<meta property="og:description" content="$desc"/>
<meta property="og:type" content="website"/>
<meta property="og:locale" content="es_ES"/>
<meta property="og:site_name" content="Extranjería Expertos - Grupo RG Asesores"/>
<meta property="og:url" content="https://extranjeriaexpertos.com$url"/>
<meta property="og:image" content="https://extranjeriaexpertos.com/logo.png"/>
<meta name="twitter:card" content="summary_large_image"/>
<meta name="twitter:title" content="Extranjería Expertos | Abogados de Extranjería en España"/>
<meta name="twitter:description" content="$desc"/>
<meta name="twitter:image" content="https://extranjeriaexpertos.com/logo.png"/>
<meta name="robots" content="index, follow, max-snippet:-1, max-image-preview:large, max-video-preview:-1"/>
<link rel="canonical" href="https://extranjeriaexpertos.com$url"/>
<link rel="icon" href="data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100'><text y='.9em' font-size='90'>⚖️</text></svg>"/>
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": ["LegalService", "Attorney"],
  "name": "Extranjería Expertos - Abogados de Extranjería",
  "alternateName": "Extranjería Expertos Grupo RG Asesores",
  "image": "https://extranjeriaexpertos.com/logo.png",
  "url": "https://extranjeriaexpertos.com/",
  "telephone": "+34604804380",
  "email": "info@extranjeriaexpertos.com",
  "priceRange": "€€",
  "currenciesAccepted": "EUR",
  "areaServed": "ES",
  "address": {
    "@type": "PostalAddress",
    "streetAddress": "Av. de España, 9, 1º 4",
    "addressLocality": "Cáceres",
    "postalCode": "10002",
    "addressRegion": "Cáceres",
    "addressCountry": "ES"
  },
  "geo": {
    "@type": "GeoCoordinates",
    "latitude": 39.472759,
    "longitude": -6.375686
  },
  "openingHoursSpecification": [
    {
      "@type": "OpeningHoursSpecification",
      "dayOfWeek": ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"],
      "opens": "09:00",
      "closes": "14:00"
    },
    {
      "@type": "OpeningHoursSpecification",
      "dayOfWeek": ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"],
      "opens": "16:30",
      "closes": "19:30"
    }
  ],
  "parentOrganization": {
    "@type": "Organization",
    "name": "Grupo RG Asesores",
    "url": "https://extranjeriaexpertos.com/"
  },
  "aggregateRating": {
    "@type": "AggregateRating",
    "ratingValue": "4.9",
    "reviewCount": "520",
    "bestRating": "5"
  }
}
</script>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800&display=swap" rel="stylesheet"/>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet"/>
<link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&display=swap" rel="stylesheet"/>
<link href="${root}styles.css" rel="stylesheet"/>
"@
}

function Get-Nav($root) {
  $idx = $root + "index.html"
  $srv = $root + "servicios.html"
  $cto = $root + "contacto.html"
  return @"
<nav class="sticky top-0 z-50 bg-white/95 backdrop-blur shadow-sm border-b border-gray-100" id="top-nav">
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
    <div class="flex justify-between h-20 items-center">
      <a href="$idx" class="flex-shrink-0 flex flex-col font-display">
        <span class="font-extrabold text-xl tracking-tight text-gray-900 uppercase leading-none">EXTRANJERÍA <span class="text-primary">EXPERTOS</span></span>
        <span class="text-[0.65rem] tracking-widest text-gray-500 font-semibold mt-0.5">BY GRUPO RG ASESORES</span>
      </a>
      <div class="hidden md:flex space-x-8 items-center font-display text-sm font-semibold tracking-wide uppercase">
        <a class="text-gray-600 hover:text-primary transition nav-link" href="$idx" data-page="inicio">Inicio</a>
        <a class="text-gray-600 hover:text-primary transition nav-link" href="$srv" data-page="servicios">Servicios</a>
        <a class="text-gray-600 hover:text-primary transition nav-link" href="$cto" data-page="contacto">Contacto</a>
        <a class="bg-primary text-white px-5 py-2.5 rounded hover:bg-primary-dark transition shadow-lg font-semibold" href="$cto">Llámanos</a>
      </div>
      <button id="btn-mobile-menu" class="md:hidden text-gray-600 hover:text-primary focus:outline-none" aria-label="Menú móvil" aria-expanded="false" aria-controls="mobile-menu-dropdown">
        <span class="material-symbols-outlined text-3xl">menu</span>
      </button>
    </div>
    <!-- Mobile dropdown menu -->
    <div id="mobile-menu-dropdown" class="hidden md:hidden flex-col space-y-2 pb-4 mt-2">
      <a class="text-gray-800 hover:text-primary font-bold text-base px-2 py-2 border-b border-gray-100 nav-link" href="$idx" data-page="inicio">Inicio</a>
      <a class="text-gray-800 hover:text-primary font-bold text-base px-2 py-2 border-b border-gray-100 nav-link" href="$srv" data-page="servicios">Servicios</a>
      <a class="text-gray-800 hover:text-primary font-bold text-base px-2 py-2 border-b border-gray-100 nav-link" href="$cto" data-page="contacto">Contacto</a>
      <a class="bg-primary text-white text-center py-3 rounded-md font-bold mt-2 shadow-sm uppercase tracking-wider text-sm mx-2" href="$cto">Llámanos sin compromiso</a>
    </div>
  </div>
</nav>
"@
}
function Get-Footer($root) {
  if (!$root) { $root = "./" }
    
  # We clean the root for absolute/relative usage in sub-folders
  $legalA = $root + "aviso-legal.html"
  $legalP = $root + "politica-privacidad.html"
  $legalC = $root + "politica-cookies.html"

  return @"
<footer class="bg-white border-t border-gray-200 pt-16 pb-8">
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-12 mb-16">
      <div>
        <span class="font-extrabold text-2xl tracking-tight text-gray-900 uppercase leading-none block mb-4 font-display">EXTRANJERÍA <span class="text-primary">EXPERTOS</span></span>
        <p class="text-sm text-gray-500 mb-6 leading-relaxed">Despacho líder en derecho de extranjería. Parte integral del Grupo RG Asesores. Brindamos seguridad jurídica a miles de extranjeros en España.</p>
      </div>
      <div>
        <h4 class="font-bold text-gray-900 mb-6 uppercase tracking-wider text-sm">Oficinas</h4>
        <ul class="space-y-4 text-sm text-gray-600">
          <li class="flex items-start gap-2"><span class="material-symbols-outlined text-primary text-lg mt-0.5">location_on</span><span>Av. de España, 9, 1º 4<br/>10002 Cáceres, España</span></li>
          <li class="flex items-center gap-2"><span class="material-symbols-outlined text-primary text-lg">call</span><a href="tel:+34604804380" class="hover:text-primary transition">+34 604 80 43 80</a></li>
          <li class="flex items-center gap-2"><span class="material-symbols-outlined text-primary text-lg">mail</span><a href="mailto:info@extranjeriaexpertos.com" class="hover:text-primary transition">info@extranjeriaexpertos.com</a></li>
          <li class="flex items-start gap-2"><span class="material-symbols-outlined text-primary text-lg mt-0.5">schedule</span><div><span>Lunes a Viernes: 09:00 - 14:00 | 16:30 - 19:30</span><br/><span class="text-[11px] text-gray-500">Sábados y Domingos: Cerrado</span></div></li>
        </ul>
      </div>
      <div>
        <h4 class="font-bold text-gray-900 mb-6 uppercase tracking-wider text-sm">Servicios</h4>
        <ul class="space-y-3 text-sm text-gray-600">
          <li><a href="$($root)servicios/arraigo-social.html" class="hover:text-primary flex items-center gap-2"><span class="w-1.5 h-1.5 bg-primary rounded-full inline-block"></span>Arraigo Social</a></li>
          <li><a href="$($root)servicios/arraigo-sociolaboral.html" class="hover:text-primary flex items-center gap-2"><span class="w-1.5 h-1.5 bg-primary rounded-full inline-block"></span>Arraigo SocioLaboral</a></li>
          <li><a href="$($root)servicios/arraigo-familiar.html" class="hover:text-primary flex items-center gap-2"><span class="w-1.5 h-1.5 bg-primary rounded-full inline-block"></span>Arraigo Familiar</a></li>
          <li><a href="$($root)servicios/nacionalidad.html" class="hover:text-primary flex items-center gap-2"><span class="w-1.5 h-1.5 bg-primary rounded-full inline-block"></span>Nacionalidad Española</a></li>
          <li><a href="$($root)servicios/reagrupacion-familiar.html" class="hover:text-primary flex items-center gap-2"><span class="w-1.5 h-1.5 bg-primary rounded-full inline-block"></span>Reagrupación Familiar</a></li>
          <li><a href="$($root)servicios/tarjeta-comunitaria.html" class="hover:text-primary flex items-center gap-2"><span class="w-1.5 h-1.5 bg-primary rounded-full inline-block"></span>Tarjeta Comunitaria</a></li>
        </ul>
      </div>
      <div>
        <h4 class="font-bold text-gray-900 mb-6 uppercase tracking-wider text-sm">Legal</h4>
        <ul class="space-y-3 text-sm text-gray-600">
          <li><a href="$legalA" class="hover:text-primary">Aviso Legal</a></li>
          <li><a href="$legalP" class="hover:text-primary">Política de Privacidad</a></li>
          <li><a href="$legalC" class="hover:text-primary">Política de Cookies</a></li>
        </ul>
      </div>
    </div>
    <div class="pt-8 border-t border-gray-200 text-center flex flex-col md:flex-row justify-between items-center gap-4">
      <p class="text-gray-500 text-xs">© 2026 EXTRANJERÍA EXPERTOS by Grupo RG Asesores. Todos los derechos reservados.</p>
      <p class="text-gray-400 text-[10px] uppercase tracking-widest">Cáceres, España</p>
    </div>
  </div>



</footer>
"@
}
$SCRIPTS = @'
<script>
  // Mobile menu toggle
  const btnOpen = document.getElementById('btn-mobile-menu');
  const mobileMenu = document.getElementById('mobile-menu-dropdown');

  if(btnOpen && mobileMenu) {
    btnOpen.addEventListener('click', () => {
      mobileMenu.classList.toggle('hidden');
      mobileMenu.classList.toggle('flex');
    });
  }

  // Accordion
  document.querySelectorAll('.js-accordion').forEach(item => {
    item.querySelector('.js-acc-trigger').addEventListener('click', function() {
      const open = item.classList.contains('open');
      document.querySelectorAll('.js-accordion').forEach(i => i.classList.remove('open'));
      if(!open) item.classList.add('open');
    });
  });

  // Highlight active nav link
  const page = document.body.dataset.page;
  document.querySelectorAll('.nav-link').forEach(a => {
    if(a.dataset.page === page) {
      a.classList.add('text-primary','border-b-2','border-primary');
      a.classList.remove('text-gray-600');
    }
  });



  // Formulario a WhatsApp y redirección temporal para feedback visual
  document.querySelectorAll('.js-whatsapp-form').forEach(form => {
    form.addEventListener('submit', function(e) {
      e.preventDefault();
      const formData = new FormData(form);
      const nombre = formData.get('nombre') || '';
      const email = formData.get('email') || '';
      const whatsapp = formData.get('whatsapp') || '';
      const situacion = formData.get('situacion') || form.dataset.service || 'Consulta General';
      const mensaje = formData.get('mensaje') || '';
      
      const texto = `¡Hola! Me gustaría hacer una consulta:\n\n*Nombre:* ${nombre}\n*Email:* ${email}\n*Teléfono:* ${whatsapp}\n*Situación/Servicio:* ${situacion}\n\n*Mensaje:* ${mensaje}`;
      const url = `https://wa.me/34604804380?text=${encodeURIComponent(texto)}`;
      
      // Guardar URL en localStorage para que la página de gracias pueda abrir WhatsApp
      try { localStorage.setItem('wa_pending_url', url); } catch (err) {}
      
      // Mostrar página de gracias en la actual
      window.location.href = 'gracias.html';
    });
  });

  // Animaciones Fade-Up
  const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        entry.target.classList.add('visible');
        observer.unobserve(entry.target);
      }
    });
  }, { threshold: 0.1 });

  document.querySelectorAll('.fade-up').forEach(el => observer.observe(el));
</script>
'@

# ─── PAGE BUILDER ───────────────────────────────────────────────────────────

function Build-Page($file, $title, $pageId, $root, $body, $desc = "") {
  $nav = Get-Nav $root
  $foot = Get-Footer $root
  $html = @"
<!DOCTYPE html>
<html lang="es" class="scroll-smooth">
<head>
$(Get-Head $root $desc)
<title>$title - Extranjería Expertos</title>
</head>
<body class="bg-white text-text-light font-body antialiased selection:bg-primary selection:text-white" data-page="$pageId">
$nav
$body
$foot
<a href="https://wa.me/34604804380" target="_blank" rel="noopener noreferrer" class="fixed bottom-6 right-6 z-[999] bg-[#25D366] text-white w-14 h-14 rounded-full flex items-center justify-center shadow-2xl hover:bg-[#1ebe5d] hover:scale-110 transition-all duration-300" aria-label="WhatsApp">
  <svg class="w-8 h-8 fill-current" viewBox="0 0 24 24"><path d="M12.031 0C5.385 0 0 5.385 0 12.031c0 2.126.549 4.167 1.594 5.975L.234 23.518l5.655-1.482a12.008 12.008 0 006.142 1.684c6.646 0 12.031-5.385 12.031-12.031S18.677 0 12.031 0zM12.031 22A9.974 9.974 0 016.92 20.6l-.367-.218-3.793.996.993-3.7-.24-.38A9.917 9.917 0 012.031 12.03 c0-5.518 4.482-10 10-10 5.517 0 10 4.482 10 10s-4.483 10-10 10zm5.494-7.514c-.302-.151-1.783-.881-2.062-.982-.279-.101-.482-.151-.684.151-.202.302-.782.982-.958 1.183-.176.202-.352.227-.654.076-1.551-.776-2.697-1.472-3.75-3.32-.105-.183-.012-.284.14-.436.136-.137.302-.352.453-.529.151-.176.202-.302.302-.503.1-.202.05-.378-.025-.529-.076-.151-.684-1.651-.938-2.261-.247-.597-.497-.516-.684-.526-.176-.009-.378-.009-.58-.009-.202 0-.529.076-.806.378-.277.302-1.058 1.033-1.058 2.518s1.083 2.92 1.234 3.121c.151.202 2.131 3.253 5.161 4.561 2.378 1.026 3.193.921 3.793.776.657-.156 2.062-.843 2.352-1.657.29-.815.29-1.516.204-1.662-.086-.146-.312-.232-.614-.383z"/></svg>
</a>
$SCRIPTS
</body>
</html>
"@
  $html | Out-File -FilePath $file -Encoding utf8 -Force
  Write-Host "✓ Built: $file"
}

# ─── SERVICE SUB-PAGE TEMPLATE ──────────────────────────────────────────────

function Build-Service($slug, $title, $subtitle, $icon, $heroText, $reqItems, $includesItems, $faqItems, $errorsItems, $selectOptions) {
  $file = "$PSScriptRoot\servicios\$slug.html"
  $root = "../"

  $incHtml = ($includesItems | ForEach-Object { "<li class='flex items-start gap-3 mb-4'><span class='material-symbols-outlined text-primary text-xl mt-0.5 flex-shrink-0'>check_circle</span><span class='text-sm text-gray-700 font-medium'>$_</span></li>" }) -join "`n"
    
  $faqHtml = ($faqItems | ForEach-Object {
      $q = $_.q; $a = $_.a
      @"
<div class="accordion-item border border-gray-100 rounded-md mb-4 bg-white js-accordion shadow-sm" tabindex="0">
<button class="w-full flex justify-between items-center px-6 py-5 cursor-pointer text-left js-acc-trigger">
<h4 class="text-sm md:text-base font-bold text-[#0b132b]">$q</h4>
<svg class="w-5 h-5 text-primary transition-transform chevron ml-4 flex-shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path></svg>
</button>
<div class="accordion-content">
<p class="px-6 pb-6 text-sm text-gray-500 leading-relaxed">$a</p>
</div>
</div>
"@
    }) -join "`n"
    
  $errHtml = ($errorsItems | ForEach-Object {
      $t = $_.t; $d = $_.d
      @"
<div class="bg-white p-6 border-l-[3px] border-primary mb-4 shadow-[0_2px_15px_rgba(0,0,0,0.04)] rounded-r-md">
<h4 class="font-bold text-sm text-[#0b132b] mb-2">$t</h4>
<p class="text-[13px] text-gray-500 leading-relaxed">$d</p>
</div>
"@
    }) -join "`n"

  $body = @"
<!-- HERO -->
<section class="relative pt-24 pb-32 bg-white overflow-hidden" data-purpose="hero-section">
<div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 text-center pt-8">
<h1 class="text-6xl md:text-7xl font-extrabold font-display leading-[1.1] tracking-tight mb-8">
        <span class="block text-[#0b132b]">$title</span>
        <span class="block text-primary">$subtitle</span>
</h1>
<p class="text-gray-500 text-sm md:text-base mb-12 font-medium tracking-wide max-w-lg mx-auto leading-relaxed">
        $heroText
      </p>
<div class="flex justify-center">
<a href="#contacto" class="inline-flex items-center gap-2 bg-primary text-white px-10 py-4 rounded-md text-sm font-bold shadow-lg shadow-red-500/30 hover:bg-primary-dark transition transform hover:-translate-y-0.5">
          Solicitar Consulta
        </a>
</div>
</div>
</section>

<!-- PROCESO -->
<section class="bg-[#050505] py-24 text-white" data-purpose="process-timeline">
<div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
<div class="text-center mb-20">
<h2 class="text-3xl md:text-4xl font-extrabold font-display mb-4">Nuestro Proceso</h2>
<p class="text-gray-400 text-sm font-medium">Simplificamos la burocracia en 5 pasos claros</p>
</div>
<div class="relative">
<!-- Connecting Line -->
<div class="hidden md:block absolute top-[24px] left-[10%] right-[10%] h-[1px] bg-gray-800 z-0"></div>
<div class="grid grid-cols-2 md:grid-cols-5 gap-8 text-center relative z-10">
<!-- Step 1 -->
<div>
<div class="w-12 h-12 bg-black rounded-full flex items-center justify-center mx-auto mb-6 border-2 border-primary shadow-[0_0_15px_rgba(200,30,30,0.2)]">
<span class="text-sm font-bold font-display">01</span>
</div>
<h3 class="text-[10px] font-bold uppercase tracking-widest mb-3 text-primary">ESTUDIO DE SITUACIÓN</h3>
<p class="text-[11px] text-gray-400 leading-relaxed px-2">Analizamos tu situación personal y viabilidad del trámite.</p>
</div>
<!-- Step 2 -->
<div>
<div class="w-12 h-12 bg-black rounded-full flex items-center justify-center mx-auto mb-6 border-2 border-primary shadow-[0_0_15px_rgba(200,30,30,0.2)]">
<span class="text-sm font-bold font-display">02</span>
</div>
<h3 class="text-[10px] font-bold uppercase tracking-widest mb-3 text-primary">PREPARACIÓN</h3>
<p class="text-[11px] text-gray-400 leading-relaxed px-2">Recopilación y revisión exhaustiva de toda tu documentación.</p>
</div>
<!-- Step 3 -->
<div>
<div class="w-12 h-12 bg-black rounded-full flex items-center justify-center mx-auto mb-6 border-2 border-primary shadow-[0_0_15px_rgba(200,30,30,0.2)]">
<span class="text-sm font-bold font-display">03</span>
</div>
<h3 class="text-[10px] font-bold uppercase tracking-widest mb-3 text-primary">PRESENTACIÓN</h3>
<p class="text-[11px] text-gray-400 leading-relaxed px-2">Registro telemático oficial ante la Oficina de Extranjería.</p>
</div>
<!-- Step 4 -->
<div>
<div class="w-12 h-12 bg-black rounded-full flex items-center justify-center mx-auto mb-6 border-2 border-primary shadow-[0_0_15px_rgba(200,30,30,0.2)]">
<span class="text-sm font-bold font-display">04</span>
</div>
<h3 class="text-[10px] font-bold uppercase tracking-widest mb-3 text-primary">SEGUIMIENTO</h3>
<p class="text-[11px] text-gray-400 leading-relaxed px-2">Controlamos el expediente y respondemos posibles requerimientos.</p>
</div>
<!-- Step 5 -->
<div class="col-span-2 md:col-span-1">
<div class="w-12 h-12 bg-primary rounded-full flex items-center justify-center mx-auto mb-6 shadow-[0_0_20px_rgba(200,30,30,0.5)]">
<span class="material-symbols-outlined text-white text-xl">check</span>
</div>
<h3 class="text-[10px] font-bold uppercase tracking-widest mb-3 text-primary">RESOLUCIÓN</h3>
<p class="text-[11px] text-gray-400 leading-relaxed px-2">Asistencia final para la concesión y recogida de tu TIE.</p>
</div>
</div>
</div>
</div>
</section>

<!-- ERRORES + INCLUYE -->
<section class="py-24 bg-surface-light" data-purpose="services-details">
<div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
<div class="grid grid-cols-1 lg:grid-cols-2 gap-12 lg:gap-16 items-start">
<!-- Errors Column -->
<div>
<h2 class="text-2xl font-extrabold font-display text-[#0b132b] mb-10">Errores Frecuentes que evitamos</h2>
<div>
$errHtml
</div>
</div>
<!-- Services Included Column -->
<div>
<h2 class="text-2xl font-extrabold font-display text-[#0b132b] mb-10">¿Qué incluye nuestro servicio?</h2>
<div class="bg-white p-10 md:p-12 shadow-[0_4px_30px_rgba(0,0,0,0.03)] rounded-2xl relative overflow-hidden h-full border border-gray-100">
<div class="absolute right-[-40px] bottom-[-40px] opacity-[0.03] pointer-events-none">
<svg class="w-72 h-72" viewBox="0 0 24 24" fill="currentColor"><path d="M12 2L2 22h20L12 2zm0 4.5l6.5 13h-13l6.5-13z"></path></svg>
</div>
<ul class="relative z-10">
$incHtml
</ul>
<div class="mt-10 pt-8 border-t border-gray-100 relative z-10">
<a class="text-primary font-bold text-[11px] uppercase tracking-widest flex items-center hover:text-primary-dark transition group" href="#contacto">
            Consultar precio y disponibilidad <span class="ml-2 font-normal text-lg leading-none transform group-hover:translate-x-1 transition-transform">&rarr;</span>
</a>
</div>
</div>
</div>
</div>
</div>
</section>

<!-- FAQ -->
<section class="py-24 bg-white" data-purpose="faq-section">
<div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
<div class="text-center mb-16">
<h2 class="text-3xl font-extrabold font-display text-[#0b132b] mb-4">Preguntas Frecuentes</h2>
<p class="text-gray-500 text-sm font-medium">Resolvemos tus dudas sobre el <strong>$title $subtitle</strong></p>
</div>
<div>
$faqHtml
</div>
</div>
</section>

<!-- LEAD FORM -->
<section id="contacto" class="bg-[#0b132b] py-24" data-purpose="contact-form-section">
<div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
<div class="grid grid-cols-1 lg:grid-cols-2 gap-16 lg:gap-24 items-center">
<div class="text-white">
<h2 class="text-4xl md:text-5xl font-extrabold font-display mb-8 leading-[1.15]">¿Listo para regularizar tu situación?</h2>
<p class="text-gray-400 mb-12 text-sm md:text-base leading-relaxed max-w-md font-light">
            No dejes pasar más tiempo. Convierte tu estancia en residencia legal hoy mismo con el respaldo de abogados expertos.
          </p>
<div class="space-y-6">
<div class="flex items-center">
<div class="w-12 h-12 rounded-full flex items-center justify-center mr-5 border border-gray-700/50 bg-gray-800/30">
<span class="material-symbols-outlined text-primary text-[20px]">call</span>
</div>
<span class="text-sm font-bold tracking-wide">+34 604 80 43 80</span>
</div>
<div class="flex items-center">
<div class="w-12 h-12 rounded-full flex items-center justify-center mr-5 border border-gray-700/50 bg-gray-800/30">
<span class="material-symbols-outlined text-primary text-[20px]">mail</span>
</div>
<span class="text-sm font-bold tracking-wide">info@extranjeriaexpertos.es</span>
</div>
</div>
</div>
<div class="bg-white rounded-2xl p-8 md:p-10 shadow-2xl">
<h3 class="text-xl font-bold font-display mb-8 text-[#0b132b]">Solicita tu Evaluación Gratuita</h3>
<form class="space-y-5 js-whatsapp-form" data-service="$title $subtitle">
<div>
<label for="svc-nombre" class="block text-[10px] font-bold uppercase text-gray-500 mb-2">Nombre Completo</label>
<input id="svc-nombre" name="nombre" required class="w-full border-gray-200 rounded-lg focus:ring-primary focus:border-primary text-sm py-3 px-4 shadow-sm" placeholder="Tu nombre" type="text"/>
</div>
<div class="grid grid-cols-2 gap-5">
<div>
<label for="svc-whatsapp" class="block text-[10px] font-bold uppercase text-gray-500 mb-2">WhatsApp</label>
<input id="svc-whatsapp" name="whatsapp" required class="w-full border-gray-200 rounded-lg focus:ring-primary focus:border-primary text-sm py-3 px-4 shadow-sm" placeholder="+34 600..." type="tel"/>
</div>
<div>
<label for="svc-email" class="block text-[10px] font-bold uppercase text-gray-500 mb-2">Email</label>
<input id="svc-email" name="email" required class="w-full border-gray-200 rounded-lg focus:ring-primary focus:border-primary text-sm py-3 px-4 shadow-sm" placeholder="tu@email.com" type="email"/>
</div>
</div>
<div>
<label for="svc-situacion" class="block text-[10px] font-bold uppercase text-gray-500 mb-2">Tu situación actual</label>
<select id="svc-situacion" name="situacion" required class="w-full border-gray-200 rounded-lg focus:ring-primary focus:border-primary text-sm py-3 px-4 shadow-sm bg-white">
<option disabled selected value="">Selecciona la opción que mejor te describa...</option>
$($selectOptions | ForEach-Object { "<option value='$_'>$_</option>" })
<option value="Otra situación distinta">Otra situación distinta</option>
</select>
</div>
<div>
<label for="svc-mensaje" class="block text-[10px] font-bold uppercase text-gray-500 mb-2">Breve descripción extra (Opcional)</label>
<textarea id="svc-mensaje" name="mensaje" class="w-full border-gray-200 rounded-lg focus:ring-primary focus:border-primary text-sm px-4 py-3 shadow-sm" placeholder="Ej: Llevo X años, trabajo en..." rows="3"></textarea>
</div>
<button class="w-full bg-primary text-white font-bold py-4 rounded-lg uppercase tracking-widest text-xs hover:bg-primary-dark transition mt-4 flex items-center justify-center shadow-lg shadow-red-500/20" type="submit">
              ENVIAR CONSULTA <span class="ml-2 font-normal text-lg leading-none transform translate-y-[-1px]">&rarr;</span>
</button>
<p class="text-[9px] text-gray-400 text-center mt-5 leading-relaxed px-4">Tus datos están protegidos y serán usados solo para contactarte. Al enviar aceptas nuestra política de privacidad.</p>
</form>
</div>
</div>
</div>
</section>
"@

  Build-Page $file "$title $subtitle en España: Requisitos y Tramitación" "servicios" $root $body "$heroText Asesoramiento legal experto por abogados de extranjería en España."
}


# ═══════════════════════════════════════════════════════════════════════════════

$indexBody = @'
<!-- HERO -->
<section class="relative bg-[#050505] text-white py-24 lg:py-32 overflow-hidden" id="inicio">
  <div class="absolute inset-0 z-0">
    <img alt="Documentos legales y mazo" class="w-full h-full object-cover opacity-30" src="https://lh3.googleusercontent.com/aida-public/AB6AXuAFIqem-ACD86E2VdpmxEi7yYWSV0Qmzzju3gvbtHJR3KlM1isqItRz2_s9Mc3Bsg0Hg_-xtiQWYlv_H9kyqIf-L9vgUUMJhEnpsJcmQE24jpOdyt2ZZezL1ZJyNPeqRCQTHDVINhApF5u6QhgLt4s4VBaaOKpehF8vA0mZ0tJVp-efRgofd4UFlG6fox6WE-Drwr6dI49k0tsBmUSzx7PpqKjYDz4BlNYWoTvjy1DLG21PBVFYRN-dxnDS8yFZadZCmoRO-C6D22E"/>
    <div class="absolute inset-0 bg-gradient-to-r from-[#050505] via-[#050505]/95 to-[#0b132b]/80"></div>
  </div>
  <div class="relative z-10 max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
    <div class="grid lg:grid-cols-2 gap-12 items-center w-full">
      <div class="animate-fade-in-up">
        <h1 class="text-5xl md:text-7xl font-extrabold font-display leading-[1.1] mb-8 tracking-tight">ABOGADOS DE EXTRANJERÍA <span class="text-primary block mt-2">EN TODA ESPAÑA</span></h1>
        <p class="text-lg md:text-xl text-gray-400 font-light max-w-2xl mb-12 leading-relaxed">Conseguimos tu residencia legal, arraigo y nacionalidad española. Más de 10 años de experiencia, sede física en Cáceres y tramitación 100% telemática oficial en toda España con el respaldo del Grupo RG Asesores.</p>
        <div class="flex flex-col sm:flex-row gap-5 mb-14">
          <a class="bg-primary text-white px-8 py-4 rounded-md text-center font-bold text-sm tracking-widest uppercase shadow-lg shadow-red-500/30 hover:bg-primary-dark transition transform hover:-translate-y-0.5" href="contacto.html">Consulta Gratuita</a>
          <a class="bg-gray-800 text-white border border-gray-700 px-8 py-4 rounded-md text-center font-bold text-sm tracking-widest uppercase hover:bg-gray-700 transition transform hover:-translate-y-0.5" href="servicios.html">Ver Servicios</a>
        </div>
      </div>
      <div class="hidden lg:block relative group">
<!-- Floating Trust Card REMOVED -->
        <!-- Right side graphic / box -->
        <div class="bg-gradient-to-br from-gray-800 to-[#0b132b] p-8 rounded-2xl shadow-2xl ml-auto border border-gray-700 relative overflow-hidden h-[450px]">
            <div class="absolute inset-0 opacity-10 blur-xl">
               <div class="w-full h-full bg-primary rounded-full filter transform translate-x-1/2 translate-y-1/2"></div>
            </div>
            <h3 class="text-white font-bold font-display text-2xl mb-4 relative z-10">Más de 10 años de experiencia</h3>
            <p class="text-gray-400 text-sm mb-8 relative z-10 leading-relaxed">Especialistas en procesos complejos de extranjería: Arraigos, Nacionalidades y Reagrupación.</p>
            
            <div class="space-y-4 relative z-10">
                <div class="bg-gray-900/50 p-4 rounded-lg border border-gray-700 backdrop-blur-sm flex items-start gap-4 transform transition hover:-translate-y-1 hover:border-gray-500">
                    <span class="material-symbols-outlined text-primary text-2xl mt-1">handshake</span>
                    <div>
                        <h4 class="font-bold text-white text-sm">Estudio Personalizado</h4>
                        <p class="text-[11px] text-gray-400 mt-1">Evaluamos la viabilidad sin compromiso.</p>
                    </div>
                </div>
                <div class="bg-gray-900/50 p-4 rounded-lg border border-gray-700 backdrop-blur-sm flex items-start gap-4 transform transition hover:-translate-y-1 hover:border-gray-500">
                    <span class="material-symbols-outlined text-primary text-2xl mt-1">gavel</span>
                    <div>
                        <h4 class="font-bold text-white text-sm">Tramitación Integral</h4>
                        <p class="text-[11px] text-gray-400 mt-1">Presentación telemática oficial garantizada.</p>
                    </div>
                </div>
            </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- THE TIMELINE LIKE THE ARRAIGO PAGES -->
<section class="bg-[#050505] py-24 text-white" data-purpose="process-timeline">
<div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
<div class="text-center mb-20">
<h2 class="text-3xl md:text-5xl font-extrabold font-display mb-4">Nuestro Proceso</h2>
<p class="text-gray-400 text-sm font-medium tracking-wide">De tu primera consulta, a tu residencia legal, en 5 sencillos pasos.</p>
</div>
<div class="relative">
<!-- Connecting Line -->
<div class="hidden md:block absolute top-[24px] left-[10%] right-[10%] h-[1px] bg-gray-800 z-0"></div>
<div class="grid grid-cols-2 md:grid-cols-5 gap-8 text-center relative z-10">
<!-- Step 1 -->
<div>
<div class="w-12 h-12 bg-black rounded-full flex items-center justify-center mx-auto mb-6 border-2 border-primary shadow-[0_0_15px_rgba(200,30,30,0.2)]">
<span class="text-sm font-bold font-display">01</span>
</div>
<h3 class="text-[10px] font-bold uppercase tracking-widest mb-3 text-primary">Consulta</h3>
<p class="text-[11px] text-gray-400 leading-relaxed px-2">Análisis inicial gratuito para enfocar el expediente.</p>
</div>
<!-- Step 2 -->
<div>
<div class="w-12 h-12 bg-black rounded-full flex items-center justify-center mx-auto mb-6 border-2 border-primary shadow-[0_0_15px_rgba(200,30,30,0.2)]">
<span class="text-sm font-bold font-display">02</span>
</div>
<h3 class="text-[10px] font-bold uppercase tracking-widest mb-3 text-primary">Preparación</h3>
<p class="text-[11px] text-gray-400 leading-relaxed px-2">Recopilación de documentos con nuestro respaldo.</p>
</div>
<!-- Step 3 -->
<div>
<div class="w-12 h-12 bg-black rounded-full flex items-center justify-center mx-auto mb-6 border-2 border-primary shadow-[0_0_15px_rgba(200,30,30,0.2)]">
<span class="text-sm font-bold font-display">03</span>
</div>
<h3 class="text-[10px] font-bold uppercase tracking-widest mb-3 text-primary">Presentación</h3>
<p class="text-[11px] text-gray-400 leading-relaxed px-2">Registro electrónico ante las autoridades competentes.</p>
</div>
<!-- Step 4 -->
<div>
<div class="w-12 h-12 bg-black rounded-full flex items-center justify-center mx-auto mb-6 border-2 border-primary shadow-[0_0_15px_rgba(200,30,30,0.2)]">
<span class="text-sm font-bold font-display">04</span>
</div>
<h3 class="text-[10px] font-bold uppercase tracking-widest mb-3 text-primary">Seguimiento</h3>
<p class="text-[11px] text-gray-400 leading-relaxed px-2">Atención a requerimientos de extranjería al instante.</p>
</div>
<!-- Step 5 -->
<div class="col-span-2 md:col-span-1">
<div class="w-12 h-12 bg-primary rounded-full flex items-center justify-center mx-auto mb-6 shadow-[0_0_20px_rgba(200,30,30,0.5)]">
<span class="material-symbols-outlined text-white text-xl">check_circle</span>
</div>
<h3 class="text-[10px] font-bold uppercase tracking-widest mb-3 text-primary">Resolución</h3>
<p class="text-[11px] text-gray-400 leading-relaxed px-2">Obtención de tu TIE y nuevo estatus legal en España.</p>
</div>
</div>
</div>
</div>
</section>

<!-- SERVICES GRID WITH HOVER -->
<section class="py-24 bg-surface-light relative z-0">
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
    <div class="flex flex-col md:flex-row justify-between items-end mb-16 gap-8">
      <div class="max-w-2xl">
                <h2 class="text-3xl md:text-5xl font-extrabold font-display text-[#0b132b] mb-4">Expertos En Todo Tipo<br/>De Trámites De Extranjería</h2>
      </div>
      <a href="servicios.html" class="flex items-center text-sm font-bold uppercase tracking-widest text-primary hover:text-primary-dark transition group pb-2">Ver Todos los Servicios <span class="material-symbols-outlined ml-2 transform group-hover:translate-x-1 transition text-lg">arrow_forward</span></a>
    </div>

    <!-- CARDS -->
    <div class="grid md:grid-cols-3 gap-8">
      <!-- Arraigo Social -->
      <a href="servicios/arraigo-social.html" class="fade-up group bg-white rounded-2xl p-8 hover:shadow-[0_20px_50px_rgba(0,0,0,0.08)] transition duration-300 transform hover:-translate-y-2 border border-gray-100 flex flex-col h-full relative overflow-hidden">
        <div class="absolute top-0 right-0 p-4 opacity-5 pointer-events-none transform group-hover:scale-110 transition duration-500">
           <span class="material-symbols-outlined text-8xl">handshake</span>
        </div>
        <div class="w-14 h-14 bg-red-50 text-primary rounded-xl flex items-center justify-center mb-6 shadow-sm">
          <span class="material-symbols-outlined text-2xl">handshake</span>
        </div>
        <h3 class="text-xl font-bold font-display text-[#0b132b] mb-3">Arraigo Social</h3>
        <p class="text-gray-500 text-sm mb-6 flex-grow leading-relaxed">Para aquellos que llevan 3 años en España de forma irregular y cuentan con una oferta de empleo.</p>
        <span class="font-bold text-[11px] text-primary uppercase tracking-widest flex items-center group-hover:underline">Leer Detalles &rarr;</span>
      </a>

      <!-- Nacionalidad -->
      <a href="servicios/nacionalidad.html" class="fade-up group bg-white rounded-2xl p-8 hover:shadow-[0_20px_50px_rgba(0,0,0,0.08)] transition duration-300 transform hover:-translate-y-2 border border-gray-100 flex flex-col h-full relative overflow-hidden">
        <div class="absolute top-0 right-0 p-4 opacity-5 pointer-events-none transform group-hover:scale-110 transition duration-500">
           <span class="material-symbols-outlined text-8xl">flag</span>
        </div>
        <div class="w-14 h-14 bg-red-50 text-primary rounded-xl flex items-center justify-center mb-6 shadow-sm">
          <span class="material-symbols-outlined text-2xl">flag</span>
        </div>
        <h3 class="text-xl font-bold font-display text-[#0b132b] mb-3">Nacionalidad Española</h3>
        <p class="text-gray-500 text-sm mb-6 flex-grow leading-relaxed">Gestión integral, desde exámenes CCSE y DELE hasta la solicitud telemática y concesión de nacionalidad.</p>
        <span class="font-bold text-[11px] text-primary uppercase tracking-widest flex items-center group-hover:underline">Leer Detalles &rarr;</span>
      </a>

      <!-- Arraigo Familiar -->
      <a href="servicios/arraigo-familiar.html" class="fade-up group bg-white rounded-2xl p-8 hover:shadow-[0_20px_50px_rgba(0,0,0,0.08)] transition duration-300 transform hover:-translate-y-2 border border-gray-100 flex flex-col h-full relative overflow-hidden">
        <div class="absolute top-0 right-0 p-4 opacity-5 pointer-events-none transform group-hover:scale-110 transition duration-500">
           <span class="material-symbols-outlined text-8xl">family_restroom</span>
        </div>
        <div class="w-14 h-14 bg-red-50 text-primary rounded-xl flex items-center justify-center mb-6 shadow-sm">
          <span class="material-symbols-outlined text-2xl">family_restroom</span>
        </div>
        <h3 class="text-xl font-bold font-display text-[#0b132b] mb-3">Arraigo Familiar</h3>
        <p class="text-gray-500 text-sm mb-6 flex-grow leading-relaxed">Para familiares o progenitores de menor con nacionalidad española o comunitaria.</p>
        <span class="font-bold text-[11px] text-primary uppercase tracking-widest flex items-center group-hover:underline">Leer Detalles &rarr;</span>
      </a>
    </div>
  </div>
</section>

<!-- SECCION TESTIMONIOS/CONFIANZA (NUEVA) -->
<section class="py-24 bg-white">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center mb-16">
            <h2 class="text-3xl md:text-5xl font-extrabold font-display text-[#0b132b] mb-4">Casos de Éxito</h2>
            <p class="text-gray-500 text-sm font-medium tracking-wide">Más de 5,000 expedientes cerrados con éxito.</p>
        </div>
        <div class="grid md:grid-cols-3 gap-8">
            <div class="bg-surface-light p-8 rounded-2xl border border-gray-100 shadow-sm relative">
                <div class="text-yellow-400 text-xl mb-4">★★★★★</div>
                <p class="text-gray-600 text-sm leading-relaxed mb-6">"Despacho totalmente recomendable. Hicieron todo el trámite de Arraigo Laboral para mí y mi marido fue muy bien, y muy rápido. Gracias por vuestra paciencia."</p>
                <div class="flex items-center gap-3">
                    <div class="w-10 h-10 bg-blue-100 rounded-full flex items-center justify-center font-bold text-blue-800">C</div>
                    <div>
                        <p class="font-bold text-xs text-[#0b132b]">Carlos M.</p>
                        <p class="text-[10px] text-gray-400 uppercase">Hace 2 semanas</p>
                    </div>
                </div>
            </div>
            <div class="bg-surface-light p-8 rounded-2xl border border-gray-100 shadow-sm relative">
                <div class="text-yellow-400 text-xl mb-4">★★★★★</div>
                <p class="text-gray-600 text-sm leading-relaxed mb-6">"Muy buenos profesionales, me sacaron de un verdadero aprieto con una denegación de extranjería. Interpusieron el recurso y finalmente obtuvimos la residencia."</p>
                <div class="flex items-center gap-3">
                    <div class="w-10 h-10 bg-purple-100 rounded-full flex items-center justify-center font-bold text-purple-800">R</div>
                    <div>
                        <p class="font-bold text-xs text-[#0b132b]">Rosa P.</p>
                        <p class="text-[10px] text-gray-400 uppercase">Hace 1 mes</p>
                    </div>
                </div>
            </div>
            <div class="bg-surface-light p-8 rounded-2xl border border-gray-100 shadow-sm relative">
                <div class="text-yellow-400 text-xl mb-4">★★★★★</div>
                <p class="text-gray-600 text-sm leading-relaxed mb-6">"Trámite de nacionalidad por residencia concedido. Destaco no solo su éxito sino el contacto cercano. Siempre disponibles por WhatsApp para cualquier mínima duda."</p>
                <div class="flex items-center gap-3">
                    <div class="w-10 h-10 bg-orange-100 rounded-full flex items-center justify-center font-bold text-orange-800">A</div>
                    <div>
                        <p class="font-bold text-xs text-[#0b132b]">Armando S.</p>
                        <p class="text-[10px] text-gray-400 uppercase">Hace 3 meses</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- SECCION SEO: COBERTURA NACIONAL Y SEDE EN CACERES -->
<section class="py-20 bg-gray-900 text-white border-t border-gray-800">
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
    <div class="grid lg:grid-cols-2 gap-12 items-center">
      <div>
        <h2 class="text-3xl md:text-4xl font-extrabold font-display mb-6">Atención Presencial en Cáceres y Telemática en Toda España</h2>
        <p class="text-gray-400 leading-relaxed mb-6">Presentamos tu expediente directamente a través de la plataforma telemática oficial de Extranjería (Mercurio), sin que tengas que pedir cita previa en las Oficinas de Extranjería de tu provincia ni esperar colas interminables.</p>
        <ul class="space-y-4 text-sm text-gray-300">
          <li class="flex items-center gap-3"><span class="material-symbols-outlined text-primary">check_circle</span><span><strong>Presentación telemática oficial</strong> con registro ministerial inmediato y justificante con número de expediente.</span></li>
          <li class="flex items-center gap-3"><span class="material-symbols-outlined text-primary">check_circle</span><span><strong>Atención en cualquier provincia:</strong> Madrid, Barcelona, Valencia, Alicante, Málaga, Sevilla, Cáceres, Badajoz y toda España.</span></li>
          <li class="flex items-center gap-3"><span class="material-symbols-outlined text-primary">check_circle</span><span><strong>Despacho físico:</strong> Si estás en Extremadura, te atendemos personalmente en nuestra sede de Av. de España 9, Cáceres.</span></li>
        </ul>
      </div>
      <div class="bg-gray-800/80 p-8 rounded-2xl border border-gray-700 shadow-2xl">
        <h3 class="text-xl font-bold font-display text-white mb-4 flex items-center gap-2"><span class="material-symbols-outlined text-primary">help</span>¿Por qué contratar un abogado de extranjería?</h3>
        <p class="text-gray-400 text-sm leading-relaxed mb-6">Más del 40% de las solicitudes presentadas sin asesoramiento especializado sufren denegaciones o retrasos de meses por errores en tasas, legalizaciones o falta de acreditación documental. En Extranjería Expertos revisamos cada requisito antes del envío.</p>
        <div class="grid grid-cols-2 gap-4 text-center">
          <div class="bg-gray-900 p-4 rounded-xl border border-gray-700">
            <span class="text-3xl font-extrabold font-display text-primary block">98%</span>
            <span class="text-xs text-gray-400 uppercase tracking-wider">Tasa de éxito</span>
          </div>
          <div class="bg-gray-900 p-4 rounded-xl border border-gray-700">
            <span class="text-3xl font-extrabold font-display text-primary block">24h</span>
            <span class="text-xs text-gray-400 uppercase tracking-wider">Respuesta a tu caso</span>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- CALL TO ACTION FINAL -->
<section class="bg-gradient-to-r from-primary to-primary-dark py-20 text-white relative overflow-hidden border-b-[8px] border-[#0b132b]">
<div class="max-w-4xl mx-auto px-4 text-center relative z-10">
<h2 class="text-3xl md:text-5xl font-extrabold font-display mb-6">El primer paso hacia la tranquilidad</h2>
<p class="text-lg md:text-xl text-white/90 mb-10 max-w-2xl mx-auto font-light">
          Analizamos la viabilidad de tu caso sin compromiso. Solo aceptamos expedientes que sabemos que podemos ganar.
        </p>
<a class="bg-white text-primary px-10 py-5 rounded-md font-bold uppercase tracking-widest text-sm shadow-xl hover:bg-gray-100 transition inline-flex items-center transform hover:scale-105" href="contacto.html">
<span class="material-symbols-outlined mr-3">chat</span>
          Solicita Valoración de tu Caso
        </a>
</div>
</section>

'@

Build-Page "$PSScriptRoot\index.html" "Abogados de Extranjería en España | Trámites y Residencia Legal" "inicio" "" $indexBody "Despacho de abogados especialistas en extranjería en España. Tramitamos tu Arraigo Social, Familiar, Nacionalidad Española y Permisos de Residencia. Consulta gratuita en Cáceres y Online."

Write-Host "✓ index.html built"

# ═══════════════════════════════════════════════════════════════════════════════
# BUILD: servicios.html
# ═══════════════════════════════════════════════════════════════════════════════

$serviciosBody = @"
<!-- HERO -->
<section class="relative h-[70vh] flex items-center justify-center overflow-hidden bg-gray-900">
  <div class="absolute inset-0 z-0">
    <img alt="Fondo de despacho de abogados" class="w-full h-full object-cover opacity-25" src="https://lh3.googleusercontent.com/aida-public/AB6AXuAFIqem-ACD86E2VdpmxEi7yYWSV0Qmzzju3gvbtHJR3KlM1isqItRz2_s9Mc3Bsg0Hg_-xtiQWYlv_H9kyqIf-L9vgUUMJhEnpsJcmQE24jpOdyt2ZZezL1ZJyNPeqRCQTHDVINhApF5u6QhgLt4s4VBaaOKpehF8vA0mZ0tJVp-efRgofd4UFlG6fox6WE-Drwr6dI49k0tsBmUSzx7PpqKjYDz4BlNYWoTvjy1DLG21PBVFYRN-dxnDS8yFZadZCmoRO-C6D22E"/>
    <div class="absolute inset-0 bg-gradient-to-t from-black via-transparent to-black/40"></div>
  </div>
  <div class="relative z-10 max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center text-white">
        <h1 class="text-5xl md:text-7xl font-extrabold font-display tracking-tight leading-tight mb-8">Servicios de <span class="text-primary">Extranjería</span><br/>en España</h1>
    <p class="text-lg md:text-xl text-gray-300 max-w-2xl mx-auto mb-10">Soluciones jurídicas definitivas para tu residencia y nacionalidad.</p>
    <div class="flex flex-col sm:flex-row justify-center gap-5">
      <a class="bg-primary text-white px-10 py-4 rounded font-bold text-lg hover:bg-primary-dark transition shadow-[0_0_20px_rgba(200,30,30,0.4)] transform hover:-translate-y-1" href="contacto.html">SOLICITAR CONSULTA</a>
    </div>
  </div>
</section>

<!-- ESTUDIO DE VIABILIDAD GRATUITO -->
<section class="relative -mt-10 z-20 pb-10 px-4">
  <div class="max-w-5xl mx-auto">
    <div class="bg-white rounded-xl shadow-premium border-l-[6px] border-primary p-8 md:p-10 flex flex-col md:flex-row items-center justify-between gap-8">
      <div class="flex-1">
        <div class="flex items-center gap-3 mb-3">
          <span class="text-gray-600 font-semibold text-sm flex items-center gap-1"><span class="material-symbols-outlined text-primary text-lg">verified</span>Respuesta en 24h</span>
        </div>
        <h2 class="text-3xl font-display font-bold text-gray-900 mb-2">¿Cumples los requisitos para tu residencia?</h2>
        <p class="text-gray-600">Analizamos tu documentación y situación administrativa para indicarte la vía legal más rápida y segura para tu estancia legal o nacionalidad en España.</p>
      </div>
      <a class="bg-primary text-white px-8 py-3 rounded font-bold hover:bg-primary-dark transition shadow-lg whitespace-nowrap" href="contacto.html">Evaluar mi caso gratis</a>
    </div>
  </div>
</section>

<!-- CONFIANZA STRIP -->
<section class="py-16 bg-surface-light">
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 grid md:grid-cols-4 gap-8 text-center md:text-left items-center">
    <div class="md:col-span-1"><h3 class="text-2xl font-bold font-display text-gray-900">¿Por qué elegirnos?</h3><p class="text-sm text-gray-500 mt-2">Resultados comprobados y transparencia total.</p></div>
    <div class="md:col-span-3 grid grid-cols-1 sm:grid-cols-3 gap-6">
      <div class="flex flex-col items-center md:items-start p-4 bg-white rounded-lg shadow-sm">
        <div class="flex items-center gap-2 mb-2"><span class="material-symbols-outlined text-yellow-500">star</span><span class="font-bold text-gray-900">4.9/5</span></div>
        <p class="text-xs text-gray-500 uppercase tracking-wide font-semibold">Google Reviews</p>
        <p class="text-sm text-gray-600 mt-1">Más de 500 reseñas positivas.</p>
      </div>
      <div class="flex flex-col items-center md:items-start p-4 bg-white rounded-lg shadow-sm">
        <div class="flex items-center gap-2 mb-2"><span class="material-symbols-outlined text-primary">verified</span><span class="font-bold text-gray-900">Certificados</span></div>
        <p class="text-xs text-gray-500 uppercase tracking-wide font-semibold">Equipo Especializado</p>
        <p class="text-sm text-gray-600 mt-1">Abogados con experiencia en extranjería.</p>
      </div>
      <div class="flex flex-col items-center md:items-start p-4 bg-white rounded-lg shadow-sm">
        <div class="flex items-center gap-2 mb-2"><span class="material-symbols-outlined text-primary">task_alt</span><span class="font-bold text-gray-900">98% Éxito</span></div>
        <p class="text-xs text-gray-500 uppercase tracking-wide font-semibold">Tasa de Aprobación</p>
        <p class="text-sm text-gray-600 mt-1">Análisis previo riguroso de cada caso.</p>
      </div>
    </div>
  </div>
</section>

<!-- PERMISOS DE TRABAJO -->
<section class="py-20 bg-white">
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
    <div class="flex items-end gap-4 mb-10 border-b-2 border-gray-100 pb-6">
      <h2 class="text-4xl font-extrabold font-display text-gray-900">Permisos de Trabajo</h2>
      <span class="text-gray-400 text-lg font-light pb-1 hidden sm:inline-block">/ Desarrolla tu carrera profesional</span>
    </div>
    <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
      <a href="servicios/cuenta-ajena.html" class="fade-up group bg-white rounded-xl shadow-lg border border-gray-100 p-8 hover:shadow-xl transition duration-300 flex flex-col relative overflow-hidden">
        <div class="absolute top-0 left-0 w-1 h-full bg-gray-200 group-hover:bg-primary transition-colors duration-300"></div>
        <div class="mb-6 bg-gray-50 w-16 h-16 rounded-full flex items-center justify-center group-hover:scale-110 transition-transform"><span class="material-symbols-outlined text-3xl text-gray-800">work</span></div>
        <h3 class="text-xl font-bold font-display text-gray-900 mb-3">Cuenta Ajena</h3>
        <p class="text-gray-600 text-sm mb-8 flex-grow">Gestión integral para contrataciones. Verificamos la situación nacional de empleo.</p>
        <span class="w-full bg-primary text-white py-3 rounded font-bold text-sm text-center hover:bg-primary-dark transition shadow-md block">VER DETALLES</span>
      </a>
      <a href="servicios/cuenta-propia.html" class="fade-up group bg-white rounded-xl shadow-lg border border-gray-100 p-8 hover:shadow-xl transition duration-300 flex flex-col relative overflow-hidden">
        <div class="absolute top-0 left-0 w-1 h-full bg-gray-200 group-hover:bg-primary transition-colors duration-300"></div>
        <div class="mb-6 bg-gray-50 w-16 h-16 rounded-full flex items-center justify-center group-hover:scale-110 transition-transform"><span class="material-symbols-outlined text-3xl text-gray-800">storefront</span></div>
        <h3 class="text-xl font-bold font-display text-gray-900 mb-3">Cuenta Propia</h3>
        <p class="text-gray-600 text-sm mb-8 flex-grow">Plan de viabilidad y trámites para emprendedores que quieren residir en España.</p>
        <span class="w-full bg-primary text-white py-3 rounded font-bold text-sm text-center hover:bg-primary-dark transition shadow-md block">VER DETALLES</span>
      </a>
      <a href="servicios/profesional-cualificado.html" class="fade-up group bg-white rounded-xl shadow-lg border border-gray-100 p-8 hover:shadow-xl transition duration-300 flex flex-col relative overflow-hidden">
        <div class="absolute top-0 left-0 w-1 h-full bg-gray-200 group-hover:bg-primary transition-colors duration-300"></div>
        <div class="mb-6 bg-gray-50 w-16 h-16 rounded-full flex items-center justify-center group-hover:scale-110 transition-transform"><span class="material-symbols-outlined text-3xl text-gray-800">diamond</span></div>
        <h3 class="text-xl font-bold font-display text-gray-900 mb-3">Altamente Cualificado</h3>
        <p class="text-gray-600 text-sm mb-8 flex-grow">Tramitación para perfiles profesionales de alta cualificación.</p>
        <span class="w-full bg-primary text-white py-3 rounded font-bold text-sm text-center hover:bg-primary-dark transition shadow-md block">VER DETALLES</span>
      </a>
    </div>
  </div>
</section>

<!-- TIPOS DE ARRAIGO -->
<section class="py-20 bg-surface-light">
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
    <div class="flex items-end gap-4 mb-10 border-b-2 border-gray-200 pb-6">
      <h2 class="text-4xl font-extrabold font-display text-gray-900">Tipos de Arraigo</h2>
      <span class="text-gray-400 text-lg font-light pb-1 hidden sm:inline-block">/ Residencia legal por circunstancias excepcionales</span>
    </div>
    <div class="grid md:grid-cols-2 lg:grid-cols-4 gap-6">
      <a href="servicios/arraigo-social.html" class="group bg-white rounded-xl shadow-lg border border-gray-100 p-6 hover:shadow-xl transition duration-300 flex flex-col relative overflow-hidden">
        <div class="absolute top-0 left-0 w-1 h-full bg-gray-200 group-hover:bg-primary transition-colors duration-300"></div>
        <div class="mb-5 bg-gray-50 w-14 h-14 rounded-full flex items-center justify-center"><span class="material-symbols-outlined text-2xl text-gray-800">handshake</span></div>
        <h3 class="text-lg font-bold font-display text-gray-900 mb-2">Arraigo Social</h3>
        <p class="text-gray-600 text-xs mb-6 flex-grow">Si llevas 2 años en España.</p>
        <span class="w-full bg-primary text-white py-2.5 rounded font-bold text-xs text-center hover:bg-primary-dark transition block">VER DETALLES</span>
      </a>
      <a href="servicios/arraigo-sociolaboral.html" class="group bg-white rounded-xl shadow-lg border border-gray-100 p-6 hover:shadow-xl transition duration-300 flex flex-col relative overflow-hidden">
        <div class="absolute top-0 left-0 w-1 h-full bg-gray-200 group-hover:bg-primary transition-colors duration-300"></div>
        <div class="mb-5 bg-gray-50 w-14 h-14 rounded-full flex items-center justify-center"><span class="material-symbols-outlined text-2xl text-gray-800">engineering</span></div>
        <h3 class="text-lg font-bold font-display text-gray-900 mb-2">Arraigo SocioLaboral</h3>
        <p class="text-gray-600 text-xs mb-6 flex-grow">2 años de estancia y contrato de trabajo.</p>
        <span class="w-full bg-primary text-white py-2.5 rounded font-bold text-xs text-center hover:bg-primary-dark transition block">VER DETALLES</span>
      </a>
      <a href="servicios/arraigo-socioformativo.html" class="group bg-white rounded-xl shadow-lg border border-gray-100 p-6 hover:shadow-xl transition duration-300 flex flex-col relative overflow-hidden">
        <div class="absolute top-0 left-0 w-1 h-full bg-gray-200 group-hover:bg-primary transition-colors duration-300"></div>
        <div class="mb-5 bg-gray-50 w-14 h-14 rounded-full flex items-center justify-center"><span class="material-symbols-outlined text-2xl text-gray-800">school</span></div>
        <h3 class="text-lg font-bold font-display text-gray-900 mb-2">Arraigo Socioformativo</h3>
        <p class="text-gray-600 text-xs mb-6 flex-grow">Compromiso de formación reglada o profesional de 12 meses.</p>
        <span class="w-full bg-primary text-white py-2.5 rounded font-bold text-xs text-center hover:bg-primary-dark transition block">VER DETALLES</span>
      </a>
      <a href="servicios/arraigo-familiar.html" class="group bg-white rounded-xl shadow-lg border border-gray-100 p-6 hover:shadow-xl transition duration-300 flex flex-col relative overflow-hidden">
        <div class="absolute top-0 left-0 w-1 h-full bg-gray-200 group-hover:bg-primary transition-colors duration-300"></div>
        <div class="mb-5 bg-gray-50 w-14 h-14 rounded-full flex items-center justify-center"><span class="material-symbols-outlined text-2xl text-gray-800">family_restroom</span></div>
        <h3 class="text-lg font-bold font-display text-gray-900 mb-2">Arraigo Familiar</h3>
        <p class="text-gray-600 text-xs mb-6 flex-grow">Para familiares de españoles. Derecho a trabajo inmediato.</p>
        <span class="w-full bg-primary text-white py-2.5 rounded font-bold text-xs text-center hover:bg-primary-dark transition block">VER DETALLES</span>
      </a>
    </div>
  </div>
</section>

<!-- CIUDADANÍA Y FAMILIA -->
<section class="py-20 bg-white">
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
    <div class="flex items-end gap-4 mb-10 border-b-2 border-gray-100 pb-6">
      <h2 class="text-4xl font-extrabold font-display text-gray-900">Ciudadanía y Familia</h2>
      <span class="text-gray-400 text-lg font-light pb-1 hidden sm:inline-block">/ Une a tu familia y obtén el DNI</span>
    </div>
    <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
      <a href="servicios/nacionalidad.html" class="group bg-white rounded-xl shadow-lg border border-gray-100 p-8 hover:shadow-xl transition duration-300 flex flex-col relative overflow-hidden">
        <div class="absolute top-0 left-0 w-1 h-full bg-gray-200 group-hover:bg-primary transition-colors duration-300"></div>
        <div class="mb-6 bg-gray-50 w-16 h-16 rounded-full flex items-center justify-center group-hover:scale-110 transition-transform"><span class="material-symbols-outlined text-3xl text-gray-800">flag</span></div>
        <h3 class="text-xl font-bold font-display text-gray-900 mb-3">Nacionalidad Española</h3>
        <p class="text-gray-600 text-sm mb-8 flex-grow">Por residencia, opción o carta de naturaleza. Preparación de exámenes CCSE y DELE.</p>
        <span class="w-full bg-primary text-white py-3 rounded font-bold text-sm text-center hover:bg-primary-dark transition shadow-md block">VER DETALLES</span>
      </a>
      <a href="servicios/reagrupacion-familiar.html" class="group bg-white rounded-xl shadow-lg border border-gray-100 p-8 hover:shadow-xl transition duration-300 flex flex-col relative overflow-hidden">
        <div class="absolute top-0 left-0 w-1 h-full bg-gray-200 group-hover:bg-primary transition-colors duration-300"></div>
        <div class="mb-6 bg-gray-50 w-16 h-16 rounded-full flex items-center justify-center group-hover:scale-110 transition-transform"><span class="material-symbols-outlined text-3xl text-gray-800">diversity_3</span></div>
        <h3 class="text-xl font-bold font-display text-gray-900 mb-3">Reagrupación Familiar</h3>
        <p class="text-gray-600 text-sm mb-8 flex-grow">Trae a tus hijos, cónyuge o ascendientes. Aseguramos la resolución favorable.</p>
        <span class="w-full bg-primary text-white py-3 rounded font-bold text-sm text-center hover:bg-primary-dark transition shadow-md block">VER DETALLES</span>
      </a>
      <a href="servicios/tarjeta-comunitaria.html" class="group bg-white rounded-xl shadow-lg border border-gray-100 p-8 hover:shadow-xl transition duration-300 flex flex-col relative overflow-hidden">
        <div class="absolute top-0 left-0 w-1 h-full bg-gray-200 group-hover:bg-primary transition-colors duration-300"></div>
        <div class="mb-6 bg-gray-50 w-16 h-16 rounded-full flex items-center justify-center group-hover:scale-110 transition-transform"><span class="material-symbols-outlined text-3xl text-gray-800">euro_symbol</span></div>
        <h3 class="text-xl font-bold font-display text-gray-900 mb-3">Tarjeta Comunitaria</h3>
        <p class="text-gray-600 text-sm mb-8 flex-grow">Para ciudadanos de la UE que trabajen y residan en España.</p>
        <span class="w-full bg-primary text-white py-3 rounded font-bold text-sm text-center hover:bg-primary-dark transition shadow-md block">VER DETALLES</span>
      </a>
    </div>
  </div>
</section>

<!-- EVALUACION GRATUITA CTA -->
<section class="py-24 bg-black text-white text-center relative overflow-hidden">
  <div class="absolute right-0 top-0 w-96 h-96 bg-primary rounded-full mix-blend-multiply filter blur-3xl opacity-20 animate-pulse"></div>
  <div class="max-w-5xl mx-auto px-4 relative z-10">
    <h2 class="text-4xl md:text-6xl font-extrabold font-display mb-8">¿No sabes qué permiso necesitas?</h2>
    <p class="text-gray-300 text-xl md:text-2xl mb-12 max-w-3xl mx-auto font-light">Deja que nuestros expertos analicen tu caso gratuitamente y te guíen hacia el éxito.</p>
    <a class="inline-block bg-primary text-white px-12 py-6 rounded font-bold text-xl md:text-2xl hover:bg-primary-dark transition transform hover:scale-105 shadow-[0_20px_50px_rgba(200,30,30,0.5)]" href="contacto.html">AGENDAR EVALUACIÓN GRATUITA</a>
    <p class="mt-6 text-sm text-gray-500 uppercase tracking-widest">Sin compromiso • Respuesta en 24h</p>
  </div>
</section>
"@

Build-Page "$PSScriptRoot\servicios.html" "Servicios de Extranjería en España | Abogados Especialistas en Residencia y Nacionalidad" "servicios" "" $serviciosBody "Conoce todos los trámites legales de Extranjería en España: Arraigos, Permisos de Trabajo, Nacionalidad Española por Residencia, Reagrupación Familiar y Tarjeta Comunitaria."

Write-Host "✓ servicios.html built"

# ═══════════════════════════════════════════════════════════════════════════════
# BUILD: contacto.html
# ═══════════════════════════════════════════════════════════════════════════════

$contactoBody = @"
<!-- HERO -->
<section class="relative bg-white pt-12 pb-24 lg:pt-20 lg:pb-32 overflow-hidden" id="solicitar">
  <div class="absolute top-0 right-0 w-1/3 h-full bg-gray-50 -skew-x-12 transform origin-top-right z-0 hidden lg:block"></div>
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 relative z-10">
    <div class="grid lg:grid-cols-2 gap-12 xl:gap-24 items-start">
      <div class="pt-8 lg:pt-16">
                <h1 class="text-4xl lg:text-6xl font-extrabold font-display text-gray-900 leading-tight mb-6">Solicitar <br/><span class="text-primary">Consulta</span></h1>
        <p class="text-lg text-gray-600 mb-8 leading-relaxed max-w-lg">Obtenga orientación legal experta para su trámite de extranjería. Analizamos su caso con rigor jurídico y honestidad.</p>
        <div class="hidden lg:block mt-12 pt-8 border-t border-gray-100">
          <div class="flex items-center gap-4">
            <div class="text-4xl font-bold font-display text-gray-900">4.9<span class="text-lg text-gray-400 font-normal">/5</span></div>
            <div class="flex flex-col">
              <div class="flex text-yellow-400 text-xl">★★★★★</div>
              <span class="text-xs text-gray-500 uppercase tracking-wide font-semibold mt-1">Google Reviews RG Asesores</span>
            </div>
          </div>
          <p class="text-sm text-gray-500 mt-4 italic border-l-2 border-primary pl-4">"Excelente trato y profesionalidad. Me ayudaron con mi nacionalidad cuando otros me decían que no era posible." — <span class="not-italic font-semibold text-gray-700">María G.</span></p>
        </div>
      </div>
      <!-- FORM -->
      <div class="relative" id="form-card">
        <div class="bg-white p-8 rounded-xl shadow-2xl border border-gray-100">
          <div class="mb-6"><h2 class="text-2xl font-bold font-display text-gray-900">Formulario de Contacto</h2><p class="text-sm text-gray-500 mt-1">Complete sus datos para agendar una evaluación gratuita.</p></div>
          <form class="space-y-5 js-whatsapp-form" data-service="Consulta General Contactos">
            <div>
              <label class="block text-sm font-medium text-gray-700 mb-1" for="fullname">Nombre Completo</label>
              <div class="relative"><span class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none text-gray-400"><span class="material-symbols-outlined text-[20px]">person</span></span>
              <input name="nombre" required class="pl-10 w-full rounded-lg border border-gray-300 bg-gray-50 text-gray-900 py-3 focus:ring-primary focus:border-primary transition-colors" id="fullname" placeholder="Su nombre y apellidos" type="text"/></div>
            </div>
            <div class="grid grid-cols-1 md:grid-cols-2 gap-5">
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-1" for="phone">Teléfono / WhatsApp</label>
                <div class="relative"><span class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none text-gray-400"><span class="material-symbols-outlined text-[20px]">call</span></span>
                <input name="whatsapp" required class="pl-10 w-full rounded-lg border border-gray-300 bg-gray-50 text-gray-900 py-3 focus:ring-primary focus:border-primary transition-colors" id="phone" placeholder="600 000 000" type="tel"/></div>
              </div>
              <div>
                <label class="block text-sm font-medium text-gray-700 mb-1" for="email">Email</label>
                <div class="relative"><span class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none text-gray-400"><span class="material-symbols-outlined text-[20px]">mail</span></span>
                <input name="email" required class="pl-10 w-full rounded-lg border border-gray-300 bg-gray-50 text-gray-900 py-3 focus:ring-primary focus:border-primary transition-colors" id="email" placeholder="ejemplo@correo.com" type="email"/></div>
              </div>
            </div>
            <div>
              <label class="block text-sm font-medium text-gray-700 mb-1" for="situation">Situación actual</label>
              <select name="situacion" required class="w-full rounded-lg border border-gray-300 bg-gray-50 text-gray-900 py-3 focus:ring-primary focus:border-primary transition-colors" id="situation">
                <option disabled selected value="">Seleccione una opción</option>
                <option value="irregular">Situación Irregular</option>
                <option value="turista">Turista (Estancia)</option>
                <option value="estudiante">Estudiante</option>
                <option value="trabajador">Trabajador con permiso</option>
                <option value="ue">Ciudadano UE / Familiar UE</option>
                <option value="asilo">Solicitante de Asilo</option>
                <option value="otro">Otro</option>
              </select>
            </div>
            <div>
              <label class="block text-sm font-medium text-gray-700 mb-1" for="message">Cuéntenos su caso</label>
              <textarea name="mensaje" required class="w-full rounded-lg border border-gray-300 bg-gray-50 text-gray-900 py-3 px-4 focus:ring-primary focus:border-primary transition-colors h-28" id="message" placeholder="Brevemente describa su situación..."></textarea>
            </div>
            <div class="pt-2">
              <button class="w-full bg-primary text-white font-bold text-lg py-4 rounded-lg shadow-lg hover:bg-primary-dark transition transform hover:-translate-y-0.5 flex items-center justify-center gap-2" type="submit">
                <span class="w-3 h-3 rounded-full bg-white animate-pulse"></span>
                Solicitar consulta gratuita
                <span class="material-symbols-outlined text-xl">arrow_forward</span>
              </button>
              <p class="text-[10px] text-gray-400 text-center mt-3 leading-tight">Al enviar este formulario acepta nuestra Política de Privacidad. Sus datos serán tratados confidencialmente.</p>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- CANALES DE CONTACTO -->
<section class="bg-gray-100 py-16 lg:py-24">
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
    <div class="text-center mb-16">
      <h2 class="text-3xl font-extrabold font-display text-gray-900 mb-4">Contacta directamente con nosotros</h2>
      <p class="text-lg text-gray-600 max-w-2xl mx-auto">Si prefiere una comunicación más directa, nuestros canales oficiales están abiertos.</p>
    </div>
    <div class="grid md:grid-cols-3 gap-8">
      <div class="bg-white p-8 rounded-xl shadow-lg hover:shadow-xl transition-all border border-gray-100 flex flex-col items-center text-center group">
        <div class="w-16 h-16 rounded-full bg-green-50 flex items-center justify-center mb-6 group-hover:scale-110 transition-transform"><span class="material-symbols-outlined text-green-600 text-3xl">chat</span></div>
        <h3 class="text-xl font-bold font-display text-gray-900 mb-2">WhatsApp</h3>
        <p class="text-gray-500 mb-6 text-sm">Respuesta rápida para consultas breves</p>
        <a class="text-green-600 font-bold hover:underline flex items-center gap-2" href="https://wa.me/34604804380" target="_blank">Iniciar chat <span class="material-symbols-outlined text-sm">arrow_outward</span></a>
      </div>
      <div class="bg-white p-8 rounded-xl shadow-lg hover:shadow-xl transition-all border border-gray-100 flex flex-col items-center text-center group">
        <div class="w-16 h-16 rounded-full bg-red-50 flex items-center justify-center mb-6 group-hover:scale-110 transition-transform"><span class="material-symbols-outlined text-primary text-3xl">call</span></div>
        <h3 class="text-xl font-bold font-display text-gray-900 mb-2">Teléfono</h3>
        <p class="text-gray-500 mb-6 text-sm">Lunes a Viernes de 09:00 a 19:30</p>
        <a class="text-primary font-bold hover:underline flex items-center gap-2" href="tel:+34604804380">+34 604 80 43 80 <span class="material-symbols-outlined text-sm">arrow_outward</span></a>
      </div>
      <div class="bg-white p-8 rounded-xl shadow-lg hover:shadow-xl transition-all border border-gray-100 flex flex-col items-center text-center group">
        <div class="w-16 h-16 rounded-full bg-blue-50 flex items-center justify-center mb-6 group-hover:scale-110 transition-transform"><span class="material-symbols-outlined text-blue-600 text-3xl">mail</span></div>
        <h3 class="text-xl font-bold font-display text-gray-900 mb-2">Email</h3>
        <p class="text-gray-500 mb-6 text-sm">Para envío de documentación</p>
        <a class="text-blue-600 font-bold hover:underline flex items-center gap-2" href="mailto:info@extranjeriaexpertos.com">info@extranjeriaexpertos.com <span class="material-symbols-outlined text-sm">arrow_outward</span></a>
      </div>
    </div>
  </div>
</section>

<!-- OFICINA + MAPA -->
<section class="bg-white py-20 border-t border-gray-200">
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
    <div class="grid lg:grid-cols-2 gap-0 rounded-2xl overflow-hidden shadow-xl bg-gray-50 border border-gray-100">
      <div class="p-10 lg:p-16 flex flex-col justify-center">
        <h3 class="text-2xl font-bold font-display text-gray-900 mb-8 border-b-2 border-primary inline-block pb-2 w-max">Nuestra Oficina</h3>
        <div class="space-y-8">
          <div class="flex items-start gap-4">
            <div class="w-12 h-12 rounded-full bg-white shadow-sm flex items-center justify-center shrink-0 border border-gray-100"><span class="material-symbols-outlined text-primary text-2xl">location_on</span></div>
            <div><h4 class="font-bold text-gray-900 text-lg">Dirección</h4><p class="text-gray-600 mt-1">Av. de España, 9, 1º 4<br/>10002 Cáceres, España</p></div>
          </div>
          <div class="flex items-start gap-4">
            <div class="w-12 h-12 rounded-full bg-white shadow-sm flex items-center justify-center shrink-0 border border-gray-100"><span class="material-symbols-outlined text-primary text-2xl">schedule</span></div>
            <div><h4 class="font-bold text-gray-900 text-lg">Horario de Atención</h4><p class="text-gray-600 mt-1">Lunes a Viernes: 09:00 - 14:00 | 16:30 - 19:30<br/>Sábados y Domingos: Cerrado</p></div>
          </div>
        </div>
      </div>
      <div class="relative h-96 lg:h-auto min-h-[400px]">
        <iframe allowfullscreen="" class="absolute inset-0" height="100%" loading="lazy" referrerpolicy="no-referrer-when-downgrade" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3066.4526715694295!2d-6.375685623485759!3d39.472758917871485!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd15df00086d4999%3A0x6b80155b9394666f!2sRG%20Asesores!5e0!3m2!1ses!2ses!4v1709228585641!5m2!1ses!2ses" style="border:0;" width="100%"></iframe>
      </div>
    </div>
  </div>
</section>

<!-- CONFIDENCIALIDAD -->
<section class="py-20 bg-black text-white text-center">
  <div class="max-w-4xl mx-auto px-4">
    <div class="inline-flex items-center justify-center w-16 h-16 rounded-full bg-gray-800 mb-8"><span class="material-symbols-outlined text-primary text-3xl">verified_user</span></div>
    <h2 class="text-3xl font-extrabold font-display mb-4">Garantizamos máxima confidencialidad</h2>
    <p class="text-gray-400 mb-10 max-w-2xl mx-auto">Su información está protegida bajo secreto profesional y los estándares más estrictos del RGPD.</p>
    <a class="bg-primary text-white px-10 py-4 rounded font-bold text-lg hover:bg-primary-dark transition transform hover:scale-105 shadow-lg shadow-red-900/50" href="#solicitar">QUIERO EMPEZAR MI TRÁMITE</a>
  </div>
</section>
"@

Build-Page "$PSScriptRoot\contacto.html" "Contacto Abogados de Extranjería | Consulta en Cáceres y Online en España" "contacto" "" $contactoBody "Contacta con nuestro equipo de abogados de extranjería. Despacho en Cáceres y atención telemática en toda España. Evaluación de caso y respuesta en 24 horas."

Write-Host "✓ contacto.html built"

# ═══════════════════════════════════════════════════════════════════════════════
# BUILD: 10 SERVICE SUB-PAGES
# ═══════════════════════════════════════════════════════════════════════════════

Build-Service "arraigo-social" "Arraigo" "Social" "handshake" "Convierte tu permanencia en España en residencia legal. Si llevas 2 años en España y tienes oferta de trabajo, este es tu camino." `
@("Permanencia mínima continuada de 2 años en España", "Informe de inserción social emitido por el Ayuntamiento", "Oferta de trabajo vigente (mínimo 1 año y SMI)", "Carecer de antecedentes penales en España y país de origen", "Pasaporte o documento de identidad válido") `
@("Verificación del padrón histórico", "Redacción y revisión del contrato laboral", "Gestión del Informe de Arraigo municipal", "Preparación y presentación del expediente", "Contestación a requerimientos de Extranjería", "Seguimiento hasta la resolución") `
@(@{q = "¿Puedo salir de España durante el trámite?"; a = "No es recomendable. Salir de España durante la tramitación puede causar denegación por pérdida de la continuidad en la permanencia necesaria para el arraigo." },
  @{q = "¿Sirve cualquier oferta de trabajo?"; a = "Debe ser un contrato de al menos un año de duración y garantizar el Salario Mínimo Interprofesional (SMI). La empresa debe estar al corriente con Hacienda y Seguridad Social." },
  @{q = "¿Puedo solicitarlo si tengo familiares en España?"; a = "Sí, tener vínculos familiares (cónyuge, pareja de hecho registrada, ascendientes o descendientes en primer grado) que sean residentes legales puede eximirte de presentar el informe de inserción social." },
  @{q = "¿Cuánto tiempo tarda la resolución?"; a = "Legalmente el plazo es de 3 meses, aunque dependiendo de la oficina de extranjería este plazo puede variar ligeramente." }) `
@(@{t = "Falta de requisitos"; d = "No cumplir con los criterios exigidos para el trámite." }, @{t = "Documentos sin apostillar"; d = "Documentación extranjera no legalizada o sin traducción jurada." }, @{t = "Antecedentes penales"; d = "Tener antecedentes penales vigentes en España o país de origen." }) `
@("Llevo más de 3 años en España y tengo oferta de empleo", "Llevo 3 años en España pero no tengo oferta asegurada", "Llevo menos de 3 años en España", "Tengo estancia legal pero quiero modificar a arraigo")

Build-Service "arraigo-sociolaboral" "Arraigo" "SocioLaboral" "engineering" "Para quienes llevan más de 2 años en España y ya tienen una relación laboral. La vía más directa si tienes vínculos laborales acreditados." `
@("2 años de estancia continuada y acreditada en España", "Acreditar relación laboral previa: contrato, nóminas, o alta en SS", "Oferta de trabajo vigente o continuación del trabajo", "Carecer de antecedentes penales en España y país de origen", "No encontrarse en situación de estancia legal vigente") `
@("Análisis de vínculos laborales previos", "Verificación del padrón y acreditación de estancia", "Preparación de la documentación laboral completa", "Presentación del expediente ante Extranjería", "Seguimiento y respuesta a requerimientos", "Asesoramiento en caso de recurso") `
@(@{q = "¿Qué diferencia hay con el Arraigo Social?"; a = "El Arraigo SocioLaboral a diferencia del Social no requiere informe de integración municipal. Basta con acreditar 2 años de estancia y relación laboral previa." },
  @{q = "¿Qué sirve como prueba de relación laboral?"; a = "Nóminas, contratos anteriores, altas y bajas en Seguridad Social, o cualquier documento que acredite haber trabajado en España. Nuestro equipo le asesorará sobre qué documentación tiene más peso." },
  @{q = "¿Tengo que tener contrato activo en el momento de la solicitud?"; a = "Sí, es necesario presentar una oferta de empleo vigente o acreditar la continuación de la actividad laboral en el momento de presentar la solicitud." },
  @{q = "¿Cuánto tiempo tiene de duración la autorización obtenida?"; a = "La autorización tiene una vigencia inicial de 2 años, renovable posteriormente por períodos más largos." }) `
@(@{t = "Falta de requisitos"; d = "No cumplir con los criterios exigidos para el trámite." }, @{t = "Documentos sin apostillar"; d = "Documentación extranjera no legalizada o sin traducción jurada." }, @{t = "Antecedentes penales"; d = "Tener antecedentes penales vigentes en España o país de origen." }) `
@("Llevo más de 2 años y he trabajado legalmente (con alta en SS)", "Llevo más de 2 años trabajando pero de forma irregular", "Tengo oferta de empleo nueva y cumplo el tiempo", "Llevo menos de 2 años en España")

Build-Service "arraigo-socioformativo" "Arraigo" "Socioformativo" "school" "Para aquellos que se comprometen a realizar una formación reglada o profesional de al menos 12 meses. Una alternativa innovadora sin necesidad de acreditar 2 años previos." `
@("Estancia en España (no se exige tiempo mínimo fijo)", "Compromiso de matriculación en formación oficial de mínimo 12 meses", "No haber sido expulsado del territorio español", "Carecer de antecedentes penales en España y país de origen", "Pasaporte vigente") `
@("Asesoramiento sobre qué cursos son válidos", "Verificación de la formación elegida", "Preparación del expediente completo", "Presentación ante la Oficina de Extranjería", "Comunicación de inicio de la formación", "Seguimiento hasta la resolución final") `
@(@{q = "¿Qué tipo de formación es válida?"; a = "La formación debe ser formación profesional reglada, grado universitario, o curso de al menos 12 meses impartido por una entidad oficial o acreditada. No sirven cursos online no oficiales." },
  @{q = "¿Necesito estar empadronado?"; a = "Sí, es necesario acreditar la estancia en España mediante el padrón municipal u otras pruebas admitidas en derecho." },
  @{q = "¿Puedo trabajar durante la formación?"; a = "El arraigo socioformativo se tramita en primera instancia sin autorización de trabajo, pero se puede solicitar autorización de trabajo por cuenta ajena una vez completada la formación." },
  @{q = "¿La matrícula debe estar formalizada al presentar la solicitud?"; a = "Generalmente se puede presentar el compromiso de matriculación, aunque es altamente recomendable tener al menos la pre-matrícula confirmada." }) `
@(@{t = "Falta de requisitos"; d = "No cumplir con los criterios exigidos para el trámite." }, @{t = "Documentos sin apostillar"; d = "Documentación extranjera no legalizada o sin traducción jurada." }, @{t = "Antecedentes penales"; d = "Tener antecedentes penales vigentes en España o país de origen." }) `
@("Ya estoy matriculado en una formación reglada de +12 meses", "Quiero matricularme pero no sé qué cursos son válidos", "Quiero información para poder pasar a trabajar después de formarme")

Build-Service "arraigo-familiar" "Arraigo" "Familiar" "family_restroom" "Autorización de residencia temporal por circunstancias excepcionales para familiares de ciudadanos españoles (o de la UE). Concede un permiso de 5 años con derecho a trabajar." `
@("Impreso de solicitud EX-10 y pago de tasas (Modelo 790 código 052)", "Ser cónyuge, pareja de hecho, descendiente o ascendiente dependiente de un ciudadano español", "Ser padre/madre/tutor de un menor de nacionalidad española o UE", "Carecer de antecedentes penales en España y el país de origen (últimos 5 años)", "Pasaporte completo en vigor (admitiéndose caducado en algunos supuestos)") `
@("Evaluación y acreditación oficial del vínculo familiar (apostillas y legalizaciones)", "Examen de la dependencia económica (obligatoria para ascendientes y descendientes mayores)", "Cumplimentación de tasas y modelo EX-10", "Presentación electrónica del expediente en Extranjería", "Seguimiento integral y asistencia para la toma de huellas de la TIE de 5 años") `
@(@{q = "¿Qué modelo y tasa debo presentar?"; a = "La solicitud se realiza mediante el formulario EX-10, y conlleva el abono de la tasa correspondiente que se abona mediante el Modelo 790 código 052 de la Administración Geeneral del Estado." },
  @{q = "¿Puedo trabajar con este permiso?"; a = "Sí, la autorización por arraigo familiar permite trabajar tanto por cuenta ajena como por cuenta propia sin ninguna limitación sectorial ni territorial desde su concesión." },
  @{q = "¿Qué familiares en concreto pueden aplicar?"; a = "Aplica al cónyuge o pareja registrada de español, hijos menores de 21 o mayores a cargo, ascendientes directos a cargo, y padres/tutores de menores españoles. También a cuidadores de españoles con discapacidad." },
  @{q = "¿Cuánto tiempo de residencia me otorgan y cómo se renueva?"; a = "Se otorga un permiso inmediato de 5 años. Una vez que caduque, al residir legalmente en España por 5 años de forma continuada, el siguiente paso será solicitar la Residencia de Larga Duración." }) `
@(@{t = "Falta de requisitos"; d = "No cumplir con los criterios exigidos para el trámite." }, @{t = "Documentos sin apostillar"; d = "Documentación extranjera no legalizada o sin traducción jurada." }, @{t = "Antecedentes penales"; d = "Tener antecedentes penales vigentes en España o país de origen." }) `
@("Soy familiar de Español o Comunitario (UE)", "Soy padre/madre de un menor español", "Quiero reagrupar a mis padres pero depende de mí económicamente")


Build-Service "cuenta-ajena" "Permiso de Trabajo" "Cuenta Ajena" "work" "Permiso para trabajar en España por cuenta de un empleador. Gestionamos el expediente completo coordinando con tu empresa contratante." `
@("Oferta de trabajo con contrato de al menos 1 año", "Empleador inscrito en la Seguridad Social al corriente de pagos", "Titulación o cualificación profesional requerida para el puesto", "Carecer de antecedentes penales", "Situación nacional de empleo (no haber trabajador en España disponible para el puesto)") `
@("Verificación de la situación nacional de empleo (SNE)", "Asesoramiento al empleador sobre los trámites", "Revisión y redacción del contrato de trabajo", "Preparación del expediente completo", "Presentación ante la Oficina de Extranjería", "Seguimiento y atención de requerimientos") `
@(@{q = "¿Qué es la situación nacional de empleo?"; a = "Es un trámite previo en el que se verifica que no existen trabajadores disponibles en España o la UE para el puesto ofertado. Tiene ciertas excepciones para determinadas ocupaciones." },
  @{q = "¿Cuánto tiempo tarda el permiso?"; a = "El procedimiento puede tardar entre 1 y 3 meses desde la presentación. Si existe oficio de subsanación, el plazo puede extenderse." },
  @{q = "¿El trabajador debe pedir el visado?"; a = "Sí, una vez aprobado el permiso en España, el trabajador debe solicitar el visado de trabajo en el Consulado español de su país de origen." },
  @{q = "¿Qué pasa si la empresa quiebra o cierra?"; a = "El permiso de trabajo queda vinculado al empleador inicialmente, pero en ciertos supuestos se puede modificar el empleador. Consúltenos su caso concreto." }) `
@(@{t = "Falta de requisitos"; d = "No cumplir con los criterios exigidos para el trámite." }, @{t = "Documentos sin apostillar"; d = "Documentación extranjera no legalizada o sin traducción jurada." }, @{t = "Antecedentes penales"; d = "Tener antecedentes penales vigentes en España o país de origen." }) `
@("Soy EMPRESA y quiero contratar a un extranjero", "Tengo una OFERTA formal de contratación de una empresa de España", "Busco información porque quiero buscar empleo en España")

Build-Service "cuenta-propia" "Permiso de Trabajo" "Cuenta Propia" "storefront" "Para emprendedores y autónomos que quieren iniciar una actividad empresarial en España. Tu proyecto de negocio como llave para residir legalmente." `
@("Plan de negocio viable y detallado", "Inversión suficiente o solvencia acreditada para el proyecto", "Cualificación profesional o experiencia en el sector", "Carecer de antecedentes penales", "No encontrarse en situación irregular de larga duración sin posibilidad de regularización") `
@("Elaboración y asesoramiento del plan de negocio", "Preparación de la documentación económica", "Gestión de informes de viabilidad", "Presentación del expediente completo", "Seguimiento ante la Unidad de Grandes Empresas o Colectivos Especiales (UGE-CE)", "Apoyo en la constitución de la empresa") `
@(@{q = "¿Necesito tener ya la empresa creada?"; a = "La empresa no tiene que estar constituida en el momento de la solicitud, pero sí debes tener un plan de negocio sólido y los documentos que acrediten la viabilidad del proyecto." },
  @{q = "¿Dónde se tramita este permiso?"; a = "Este permiso se tramita en la Unidad de Grandes Empresas y Colectivos Especiales (UGE-CE) del Ministerio de Inclusión, Seguridad Social y Migraciones." },
  @{q = "¿Qué actividades se incluyen?"; a = "Cualquier actividad económica lícita: comercio, hostelería, servicios profesionales, tecnología, etc. También incluye profesiones liberales." },
  @{q = "¿Cuánto tiempo tarda?"; a = "El plazo legal de resolución es de 30 días hábiles desde la presentación completa de la solicitud." }) `
@(@{t = "Falta de requisitos"; d = "No cumplir con los criterios exigidos para el trámite." }, @{t = "Documentos sin apostillar"; d = "Documentación extranjera no legalizada o sin traducción jurada." }, @{t = "Antecedentes penales"; d = "Tener antecedentes penales vigentes en España o país de origen." }) `
@("Tengo un plan de negocio listo e inversión", "Trabajo como autónomo fuera y quiero venir a España", "Necesito apoyo para armar la documentación financiera")

Build-Service "profesional-cualificado" "Profesional" "Altamente Cualificado" "diamond" "Para trabajadores extranjeros con alta cualificación profesional. Proceso ágil a través de la Tarjeta Azul UE o permiso de trabajador altamente cualificado." `
@("Titulación universitaria superior reconocida o experiencia equivalente (mínimo 5 años)", "Contrato de trabajo con salario superior a 1,5 veces el salario medio en España (aprox. 45.000€/año)", "Empleador en España inscrito en la Seguridad Social", "Carecer de antecedentes penales", "Seguro médico o cobertura sanitaria") `
@("Análisis de cualificación y elegibilidad", "Verificación del salario en relación al umbral exigido", "Preparación del expediente completo (Tarjeta Azul UE u otro)", "Tramitación ante la UGE-CE", "Seguimiento del expediente", "Gestión de la documentación del empleador") `
@(@{q = "¿Qué es la Tarjeta Azul UE?"; a = "Es un permiso de residencia y trabajo para profesionales altamente cualificados que permite mayor movilidad dentro de la UE. Su tramitación es más rápida que un permiso ordinario." },
  @{q = "¿Qué salario mínimo se requiere?"; a = "El salario bruto anual debe ser al menos 1,5 veces el salario medio anual en España. En 2024 este umbral se sitúa aproximadamente en 45.000€ anuales." },
  @{q = "¿Tengo que reconocer mi titulación?"; a = "No siempre es obligatorio el reconocimiento oficial, aunque puede ser necesario acreditar la equivalencia mediante documentos. Nuestro equipo le asesorará en cada caso." },
  @{q = "¿Puedo traer a mi familia?"; a = "Sí, los titulares de la Tarjeta Azul UE tienen facilidades adicionales para la reagrupación familiar respecto a los permisos ordinarios." }) `
@(@{t = "Falta de requisitos"; d = "No cumplir con los criterios exigidos para el trámite." }, @{t = "Documentos sin apostillar"; d = "Documentación extranjera no legalizada o sin traducción jurada." }, @{t = "Antecedentes penales"; d = "Tener antecedentes penales vigentes en España o país de origen." }) `
@("Tengo titulación superior + oferta sueldo mínimo aprox 45.000€/año", "Tengo +5 años de experiencia muy especializada y me quieren contratar", "Soy EMPRESA (UGE) y deseo contratar un perfil Key Account / Técnico")

Build-Service "nacionalidad" "Nacionalidad" "Española" "flag" "El paso definitivo: convertirte en ciudadano español. Gestionamos todos los procedimientos: por residencia, por opción y carta de naturaleza. Incluye preparación de exámenes CCSE y DELE." `
@("Residencia legal continuada en España (10 años general, 2 años iberoamericanos, 1 año para ciertos colectivos)", "Buena conducta cívica y no tener antecedentes penales", "Integración en la sociedad española (acreditable mediante exámenes CCSE y DELE A2)", "Renuncia a la nacionalidad anterior (salvo excepciones)", "Suficiencia económica acreditada") `
@("Análisis del tipo de nacionalidad aplicable a tu caso", "Revisión de antecedentes y documentación", "Asesoramiento y preparación para el CCSE y DELE A2", "Tramitación del expediente completo ante el Registro Civil o MJ", "Seguimiento de la solicitud", "Atención de requerimientos y subsanaciones") `
@(@{q = "¿Cuánto tiempo se tarda en obtener la nacionalidad?"; a = "El processo actual está tardando entre 1 y 2 años desde la presentación completa del expediente, dependiendo del Registro Civil o del órgano tramitador." },
  @{q = "¿Tengo que renunciar a mi nacionalidad de origen?"; a = "Depende de tu país de origen. Los ciudadanos de países iberoamericanos, andorra, Filipinas, Guinea Ecuatorial y Portugal tienen derecho a la doble nacionalidad con España." },
  @{q = "¿Qué es el CCSE y para qué sirve?"; a = "El CCSE es el examen de conocimientos constitucionales y socioculturales de España, exigido para la solicitud de nacionalidad. Nuestro equipo te prepara para superarlo." },
  @{q = "¿Necesito el DELE A2?"; a = "El DELE A2 de español sólo es obligatorio para personas cuya lengua materna no sea el español. Si eres hispanohablante nativo, estás exento." }) `
@(@{t = "Falta de requisitos"; d = "No cumplir con los criterios exigidos para el trámite." }, @{t = "Documentos sin apostillar"; d = "Documentación extranjera no legalizada o sin traducción jurada." }, @{t = "Antecedentes penales"; d = "Tener antecedentes penales vigentes en España o país de origen." }) `
@("Llevo más de 10 años residiendo LEGAMENTE en España", "Llevo 2 años legales (tengo pasaporte de país de LATAM)", "Estoy casado/a con un ciudadano español (1 año requerimiento)", "Por opción (tengo padre/madre/abuelo español de origen)")

Build-Service "reagrupacion-familiar" "Reagrupación" "Familiar" "diversity_3" "Reúne a tu familia en España: cónyuge, hijos y ascendientes. Analizamos tu situación para asegurar la resolución favorable y los requisitos económicos necesarios." `
@("Residencia legal en España durante al menos 1 año", "Renovación de la autorización de residencia (mínimo 1 año adicional de vigencia)", "Vivienda adecuada para el número de familiares a reagrupar", "Medios económicos suficientes (varía según número de familiares)", "Los familiares en origen deben tener pasaporte vigente") `
@("Análisis de elegibilidad y lazos familiares", "Cálculo de medios económicos exigidos", "Informe de vivienda adecuada", "Preparación del expediente completo", "Coordinación con los familiares en el exterior", "Seguimiento hasta la resolución y obtención de visado") `
@(@{q = "¿A qué familiares puedo reagrupar?"; a = "Puedes reagrupar a: cónyuge o pareja de hecho, hijos menores de edad o mayores dependientes, y ascendientes (padres) si el reagrupante es residente de larga duración." },
  @{q = "¿Cuántos medios económicos necesito?"; a = "Para el reagrupante solo: el 150% del IPREM (aprox. 1.130€/mes). Por cada familiar adicional se suma el 50% del IPREM (aprox. 376€ más por persona)." },
  @{q = "¿Cómo acredito la vivienda adecuada?"; a = "Mediante informe municipal de habitabilidad, que verifica que la vivienda es suficiente en tamaño e higiene para el número de personas que van a residir." },
  @{q = "¿Pueden mis familiares trabajar una vez reagrupados?"; a = "El cónyuge e hijos reagrupados obtienen directamente autorización de trabajo. Los ascendientes no obtienen autorización laboral de forma automática." }) `
@(@{t = "Falta de requisitos"; d = "No cumplir con los criterios exigidos para el trámite." }, @{t = "Documentos sin apostillar"; d = "Documentación extranjera no legalizada o sin traducción jurada." }, @{t = "Antecedentes penales"; d = "Tener antecedentes penales vigentes en España o país de origen." }) `
@("Quiero traer a mi cónyuge / pareja a España", "Quiero traer a un hijo (menor de edad o dependiente incapacitado)", "Quiero reagrupar a mis padres mayores de edad pero a mi cargo")

Build-Service "tarjeta-comunitaria" "Tarjeta" "Comunitaria" "euro_symbol" "Para ciudadanos de la Unión Europea y sus familiares que residan o trabajen en España. Trámite más ágil que los permisos de extranjería habituales." `
@("Ser ciudadano de un estado miembro de la UE o familiar de un ciudadano comunitario", "Disponer de medios económicos suficientes o ejercer actividad laboral en España", "Seguro médico o cobertura sanitaria pública", "NIE (Número de Identificación de Extranjero)", "No estar incurso en prohibición de entrada en España") `
@("Verificación de la condición comunitaria", "Solicitud y obtención del NIE", "Tramitación del Certificado de Registro de Ciudadano de la UE", "Asesoramiento sobre prueba de actividad laboral o medios", "Presentación del expediente en la Oficina de Extranjeros", "Seguimiento y resolución") `
@(@{q = "¿Qué familiares no comunitarios pueden beneficiarse?"; a = "El cónyuge, hijos menores de 21 años o mayores dependientes, y ascendientes dependientes del ciudadano comunitario pueden obtener la Tarjeta de Residencia de Familiar de Ciudadano de la UE." },
  @{q = "¿Qué plazo tiene la Tarjeta Comunitaria?"; a = "El Certificado de Registro de Ciudadano de la UE es de duración indefinida. La Tarjeta de Familiar (no comunitario) tiene validez de 5 años renovables." },
  @{q = "¿Qué prueba de actividad laboral necesito?"; a = "Nóminas, contrato de trabajo, alta en autónomos o en su defecto acreditar medios económicos suficientes y seguro médico privado." },
  @{q = "¿Tengo que estar en España para solicitarla?"; a = "Para el Certificado de Registro sí, ya que se tramita en la Oficina de Extranjeros de la provincia donde resides. Para la Tarjeta de Familiar también habitualmente." }) `
@(@{t = "Falta de requisitos"; d = "No cumplir con los criterios exigidos para el trámite." }, @{t = "Documentos sin apostillar"; d = "Documentación extranjera no legalizada o sin traducción jurada." }, @{t = "Antecedentes penales"; d = "Tener antecedentes penales vigentes en España o país de origen." }) `
@("Soy ciudadano de la UE y voy a trabajar (o trabajaré) en España", "Soy dependiente / familiar directo de un Comunitario con residencia española", "Quiero traer a mi pareja no-comunitaria a España legalmente")



Write-Host ""
Write-Host "ALL PAGES BUILT SUCCESSFULLY"

function Build-LegalPage($file, $title, $root, $body) {
  if (!$root) { $root = "./" }
  $nav = Get-Nav $root
  $html = @"
<!DOCTYPE html>
<html lang="es" class="scroll-smooth">
<head>
$(Get-Head $root)
<title>$title - Extranjería Expertos</title>
</head>
<body class="bg-white text-text-light font-body antialiased selection:bg-primary selection:text-white" data-page="legal">
$nav
<div class="bg-gray-50 py-12 md:py-20 border-b border-gray-200 text-center">
  <div class="max-w-4xl mx-auto px-4"><h1 class="text-4xl md:text-5xl font-extrabold font-display text-gray-900">$title</h1></div>
</div>
<div class="prose prose-lg max-w-4xl mx-auto py-16 px-4 sm:px-6 text-gray-700">
$body
</div>
$(Get-Footer $root)
<a href="https://wa.me/34604804380" target="_blank" rel="noopener noreferrer" class="fixed bottom-6 right-6 z-[999] bg-[#25D366] text-white w-14 h-14 rounded-full flex items-center justify-center shadow-2xl hover:bg-[#1ebe5d] hover:scale-110 transition-all duration-300" aria-label="WhatsApp">
  <svg class="w-8 h-8 fill-current" viewBox="0 0 24 24"><path d="M12.031 0C5.385 0 0 5.385 0 12.031c0 2.126.549 4.167 1.594 5.975L.234 23.518l5.655-1.482a12.008 12.008 0 006.142 1.684c6.646 0 12.031-5.385 12.031-12.031S18.677 0 12.031 0zM12.031 22A9.974 9.974 0 016.92 20.6l-.367-.218-3.793.996.993-3.7-.24-.38A9.917 9.917 0 012.031 12.03 c0-5.518 4.482-10 10-10 5.517 0 10 4.482 10 10s-4.483 10-10 10zm5.494-7.514c-.302-.151-1.783-.881-2.062-.982-.279-.101-.482-.151-.684.151-.202.302-.782.982-.958 1.183-.176.202-.352.227-.654.076-1.551-.776-2.697-1.472-3.75-3.32-.105-.183-.012-.284.14-.436.136-.137.302-.352.453-.529.151-.176.202-.302.302-.503.1-.202.05-.378-.025-.529-.076-.151-.684-1.651-.938-2.261-.247-.597-.497-.516-.684-.526-.176-.009-.378-.009-.58-.009-.202 0-.529.076-.806.378-.277.302-1.058 1.033-1.058 2.518s1.083 2.92 1.234 3.121c.151.202 2.131 3.253 5.161 4.561 2.378 1.026 3.193.921 3.793.776.657-.156 2.062-.843 2.352-1.657.29-.815.29-1.516.204-1.662-.086-.146-.312-.232-.614-.383z"/></svg>
</a>
$SCRIPTS
</body>
</html>
"@
  $html = $html -replace "`r`n", "`n"
  $html | Out-File -FilePath $file -Encoding utf8 -Force
  Write-Host "✓ Built: $file"
}

$avisoLegalText = Get-Content 'aviso-legal-clean.html' -Encoding UTF8 -Raw
$privacidadText = Get-Content 'politica-privacidad-clean.html' -Encoding UTF8 -Raw
$cookiesText = Get-Content 'politica-cookies-clean.html' -Encoding UTF8 -Raw

Build-LegalPage "$PSScriptRoot\aviso-legal.html" "Aviso Legal" "./" $avisoLegalText
Build-LegalPage "$PSScriptRoot\politica-privacidad.html" "Política de Privacidad" "./" $privacidadText
Build-LegalPage "$PSScriptRoot\politica-cookies.html" "Política de Cookies" "./" $cookiesText

$graciasBody = @"
<section class="min-h-[70vh] flex flex-col items-center justify-center bg-gray-50 px-4 text-center py-20">
  <div class="w-20 h-20 bg-green-100 rounded-full flex items-center justify-center mb-6 shadow-sm mx-auto">
    <span class="material-symbols-outlined text-4xl text-green-600">check_circle</span>
  </div>
  <h1 class="text-4xl md:text-5xl font-extrabold font-display text-gray-900 mb-4">¡Un paso más!</h1>
  <p class="text-lg text-gray-600 mb-8 max-w-lg mx-auto">Para completar tu solicitud, vamos a abrir WhatsApp y enviar los detalles al despacho automáticamente.</p>
  
  <div class="flex flex-col gap-4 w-full max-w-xs mx-auto">
    <a id="btn-wa-redirect" href="https://wa.me/34604804380" class="bg-[#25D366] text-white w-full px-8 py-4 rounded font-bold uppercase tracking-widest text-[13px] hover:bg-[#1ebe5d] transition shadow-xl inline-flex items-center justify-center gap-2 transform hover:-translate-y-1">
      <svg class="w-5 h-5 fill-current" viewBox="0 0 24 24"><path d="M12.031 0C5.385 0 0 5.385 0 12.031c0 2.126.549 4.167 1.594 5.975L.234 23.518l5.655-1.482a12.008 12.008 0 006.142 1.684c6.646 0 12.031-5.385 12.031-12.031S18.677 0 12.031 0zM12.031 22A9.974 9.974 0 016.92 20.6l-.367-.218-3.793.996.993-3.7-.24-.38A9.917 9.917 0 012.031 12.03 c0-5.518 4.482-10 10-10 5.517 0 10 4.482 10 10s-4.483 10-10 10zm5.494-7.514c-.302-.151-1.783-.881-2.062-.982-.279-.101-.482-.151-.684.151-.202.302-.782.982-.958 1.183-.176.202-.352.227-.654.076-1.551-.776-2.697-1.472-3.75-3.32-.105-.183-.012-.284.14-.436.136-.137.302-.352.453-.529.151-.176.202-.302.302-.503.1-.202.05-.378-.025-.529-.076-.151-.684-1.651-.938-2.261-.247-.597-.497-.516-.684-.526-.176-.009-.378-.009-.58-.009-.202 0-.529.076-.806.378-.277.302-1.058 1.033-1.058 2.518s1.083 2.92 1.234 3.121c.151.202 2.131 3.253 5.161 4.561 2.378 1.026 3.193.921 3.793.776.657-.156 2.062-.843 2.352-1.657.29-.815.29-1.516.204-1.662-.086-.146-.312-.232-.614-.383z"/></svg>
      Abrir WhatsApp
    </a>
    <a href="index.html" class="bg-white border border-gray-200 text-gray-700 w-full px-8 py-4 rounded font-bold uppercase tracking-widest text-[11px] hover:bg-gray-50 hover:border-gray-300 transition shadow-sm inline-flex items-center justify-center gap-2">
      Volver al Inicio
    </a>
  </div>
</section>
<script>
  document.addEventListener('DOMContentLoaded', () => {
    try {
      const pendingUrl = localStorage.getItem('wa_pending_url');
      if (pendingUrl) {
        const btnWa = document.getElementById('btn-wa-redirect');
        if (btnWa) {
          btnWa.href = pendingUrl;
          // Opcional: auto-redireccionamiento tras 1 segundo
          setTimeout(() => {
            window.location.href = pendingUrl;
            localStorage.removeItem('wa_pending_url');
          }, 1500);
        }
      }
    } catch(e) {}
  });
</script>
"@

Build-Page "$PSScriptRoot\gracias.html" "Consulta Enviada" "gracias" "./" $graciasBody "Gracias por contactar con Extranjería Expertos. Nos comunicaremos contigo en breve." "/gracias.html"
Write-Host "✓ gracias.html built"

$error404Body = @"
<section class="h-[70vh] flex flex-col items-center justify-center bg-gray-50 px-4 text-center mt-20">
  <div class="w-24 h-24 mb-6 shadow-sm mx-auto text-primary opacity-50 flex items-center justify-center">
    <span class="material-symbols-outlined text-8xl">search_off</span>
  </div>
  <h1 class="text-6xl md:text-8xl font-extrabold font-display text-gray-900 mb-4 tracking-tighter">404</h1>
  <p class="text-xl md:text-2xl font-bold text-gray-800 mb-2">Página no encontrada</p>
  <p class="text-sm text-gray-500 mb-10 max-w-md mx-auto">Lo sentimos, la página que estás buscando no existe, ha sido movida o la dirección es incorrecta.</p>
  <div class="flex flex-col sm:flex-row gap-4">
    <a href="index.html" class="bg-primary text-white border border-primary w-full sm:w-auto px-8 py-3 rounded font-bold uppercase tracking-widest text-xs hover:bg-primary-dark transition shadow-lg inline-flex items-center justify-center gap-2">
      <span class="material-symbols-outlined text-[18px]">home</span> Inicio
    </a>
    <a href="contacto.html" class="bg-white border text-gray-700 border-gray-200 w-full sm:w-auto px-8 py-3 rounded font-bold uppercase tracking-widest text-xs hover:bg-gray-50 transition shadow-sm inline-flex items-center justify-center gap-2">
      <span class="material-symbols-outlined text-[18px]">mail</span> Contacto
    </a>
  </div>
</section>
"@

Build-Page "$PSScriptRoot\404.html" "Página no encontrada" "404" "./" $error404Body "Página no encontrada en Extranjería Expertos." "/404.html"
Write-Host "✓ 404.html built"

$sitemap = @"
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  <url><loc>https://extranjeriaexpertos.com/</loc><priority>1.0</priority></url>
  <url><loc>https://extranjeriaexpertos.com/servicios.html</loc><priority>0.9</priority></url>
  <url><loc>https://extranjeriaexpertos.com/contacto.html</loc><priority>0.9</priority></url>
  <url><loc>https://extranjeriaexpertos.com/servicios/arraigo-social.html</loc><priority>0.8</priority></url>
  <url><loc>https://extranjeriaexpertos.com/servicios/arraigo-sociolaboral.html</loc><priority>0.8</priority></url>
  <url><loc>https://extranjeriaexpertos.com/servicios/arraigo-socioformativo.html</loc><priority>0.8</priority></url>
  <url><loc>https://extranjeriaexpertos.com/servicios/arraigo-familiar.html</loc><priority>0.8</priority></url>
  <url><loc>https://extranjeriaexpertos.com/servicios/nacionalidad.html</loc><priority>0.8</priority></url>
  <url><loc>https://extranjeriaexpertos.com/servicios/reagrupacion-familiar.html</loc><priority>0.8</priority></url>
  <url><loc>https://extranjeriaexpertos.com/servicios/cuenta-ajena.html</loc><priority>0.8</priority></url>
  <url><loc>https://extranjeriaexpertos.com/servicios/cuenta-propia.html</loc><priority>0.8</priority></url>
  <url><loc>https://extranjeriaexpertos.com/servicios/profesional-cualificado.html</loc><priority>0.8</priority></url>
  <url><loc>https://extranjeriaexpertos.com/servicios/tarjeta-comunitaria.html</loc><priority>0.8</priority></url>
</urlset>
"@
$sitemap | Out-File -FilePath "$PSScriptRoot\sitemap.xml" -Encoding utf8 -Force
Write-Host "✓ sitemap.xml built"

$robots = @"
User-agent: *
Allow: /

Sitemap: https://extranjeriaexpertos.com/sitemap.xml
"@
$robots | Out-File -FilePath "$PSScriptRoot\robots.txt" -Encoding utf8 -Force
Write-Host "✓ robots.txt built"

