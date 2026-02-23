const fs = require('fs');
let b = fs.readFileSync('__build.ps1', 'utf8');

// The faulty appended arrays look like this:
//     @{q="¿Cuánto tiempo tarda la resolución?"; a="Legalmente el plazo es de 3 meses, aunque dependiendo de la oficina de extranjería este plazo puede variar ligeramente."}) \n  @(@{t="Falta de requisitos";
// We need them to look like:
//     @{q="¿Cuánto tiempo tarda la resolución?"; a="Legalmente el plazo es de 3 meses, aunque dependiendo de la oficina de extranjería este plazo puede variar ligeramente."}) `\n  @(@{t="Falta de requisitos";

b = b.replace(/\}\)\s*\n\s*@\(\@\{t="Falta de requisitos"/g, '}) `\n  @(@{t="Falta de requisitos"');

fs.writeFileSync('__build.ps1', b);
console.log('Fixed syntax errors in __build.ps1.');
