const fs = require('fs');
let s = fs.readFileSync('stitch-extracted.txt', 'utf8');

// Hero section replacements
s = s.replace(/Tarjeta <span class="text-brand-red">Comunitaria<\/span>/g, '$title <span class="text-brand-red">$subtitle</span>');
s = s.replace(/Asesoramiento legal profesional para la residencia de familiares de ciudadanos de la Unión Europea en España\. Gestionamos el expediente completo ante la Oficina de Extranjería\./g, '$heroText');
s = s.replace(/Autorización de Residencia/g, 'Servicio Especializado');

// Buttons to Contact
s = s.replace(/<button class="bg-brand-red text-white px-10 py-4 rounded-md text-sm font-bold uppercase tracking-widest shadow-lg hover:bg-red-700 transition">\s*Solicitar Consulta\s*<\/button>/g, '<a href="../contacto.html" class="inline-block bg-brand-red text-white px-10 py-4 rounded-md text-sm font-bold uppercase tracking-widest shadow-lg hover:bg-red-700 transition">\n          Solicitar Consulta\n        </a>');
s = s.replace(/<a class="bg-brand-red text-white px-6 py-3 rounded-md text-xs font-bold uppercase tracking-widest hover:bg-red-700 transition" href="tel:#">\s*Llámanos sin compromiso\s*<\/a>/g, '<a class="bg-brand-red text-white px-6 py-3 rounded-md text-xs font-bold uppercase tracking-widest hover:bg-red-700 transition" href="../contacto.html">\n            Llámanos sin compromiso\n          </a>');

// Dynamic Content lists replacements
// Includes/what we do
s = s.replace(/<ul class="space-y-4 mb-10">[\s\S]*?<\/ul>/g, '<ul class="space-y-4 mb-10">\n$incHtml\n</ul>');
// Errors
s = s.replace(/<div class="space-y-4">\s*(?:<div class="bg-white p-6 border-l-4 border-brand-red shadow-sm">[\s\S]*?<\/div>\s*)+<\/div>/g, '<div class="space-y-4">\n$errHtml\n</div>');
// FAQ
s = s.replace(/<div class="space-y-4">\s*(?:<!-- Q\d+ -->\s*<div class="accordion-item border-b border-gray-100" tabindex="\d+">[\s\S]*?<\/div>\s*)+<\/div>/g, '<div class="space-y-4">\n$faqHtml\n</div>');

// Write out the processed text for injection into PowerShell
fs.writeFileSync('stitch-processed.txt', s);
console.log('Stitch template processed successfully.');
