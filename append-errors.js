const fs = require('fs');
let b = fs.readFileSync('__build.ps1', 'utf8');

// The string we want to append matches the ending `\n    @{q="..."; a="..."})` pattern for the $faqItems array.
// We'll append the new $errorsItems parameter (an array of hashtables) after it.

const appendStr = ' `\n  @(@{t="Falta de requisitos"; d="No cumplir con los criterios exigidos para el trámite."},@{t="Documentos sin apostillar"; d="Documentación extranjera no legalizada o sin traducción jurada."},@{t="Antecedentes penales"; d="Tener antecedentes penales vigentes en España o país de origen."})';

// We search for lines that end the $faqItems array for each Build-Service call. They look like this:
//     @{q="..."; a="..."})
// We want to replace the `)` with `)` + our new string.

b = b.replace(/(\n\s*@\{q=".*?"; a=".*?"\}\))/g, '$1' + appendStr);

fs.writeFileSync('__build.ps1', b);
console.log('Successfully appended $errorsItems to all 10 service calls.');
