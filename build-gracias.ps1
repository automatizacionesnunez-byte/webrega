$graciasBody = @"
<section class="h-[70vh] flex flex-col items-center justify-center bg-gray-50 px-4 text-center">
  <div class="w-20 h-20 bg-green-100 rounded-full flex items-center justify-center mb-6 shadow-sm">
    <span class="material-symbols-outlined text-4xl text-green-600">check_circle</span>
  </div>
  <h1 class="text-4xl md:text-5xl font-extrabold font-display text-gray-900 mb-4">¡Mensaje Enviado!</h1>
  <p class="text-lg text-gray-600 mb-8 max-w-lg">Hemos recibido tu consulta correctamente. Nuestro equipo de abogados analizará tu caso y se pondrá en contacto contigo a la mayor brevedad posible.</p>
  <a href="index.html" class="bg-primary text-white px-8 py-4 rounded font-bold uppercase tracking-widest text-sm hover:bg-primary-dark transition shadow-lg inline-flex items-center gap-2">
    <span class="material-symbols-outlined">arrow_back</span>
    Volver al Inicio
  </a>
</section>
"@

Build-Page "C:\Users\Usuario\.gemini\antigravity\web rega\gracias.html" "Consulta Enviada" "gracias" "./" $graciasBody
Write-Host "✓ gracias.html built"
