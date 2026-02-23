const fs = require('fs');
let b = fs.readFileSync('__build.ps1', 'utf8');
let s = fs.readFileSync('stitch-processed.txt', 'utf8');

const oldFuncStart = b.indexOf('function Build-Service($slug, $title, $subtitle, $icon, $heroText, $reqItems, $includesItems, $faqItems) {');
const oldBodyEnd = b.indexOf('"@\r\n\r\n    Build-Page $file "$title" "servicios" $root $body');

const newFunc = `function Build-Service($slug, $title, $subtitle, $icon, $heroText, $reqItems, $includesItems, $faqItems, $errorsItems) {
    $file = "C:\\Users\\Usuario\\.gemini\\antigravity\\web rega\\servicios\\$slug.html"
    $root = "../"

    $reqHtml = ($reqItems | ForEach-Object { "<li class=''flex items-start gap-3''><span class=''material-symbols-outlined text-primary text-xl mt-0.5''>check_circle</span><span>$_</span></li>" }) -join "\`n"
    $incHtml = ($includesItems | ForEach-Object { "<li class=''flex items-start''><svg class=''w-5 h-5 text-brand-red mt-0.5 mr-3 flex-shrink-0'' fill=''currentColor'' viewBox=''0 0 20 20''><path fill-rule=''evenodd'' clip-rule=''evenodd'' d=''M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z''></path></svg><span class=''text-sm font-medium''>$_</span></li>" }) -join "\`n"
    
    $faqHtml = ($faqItems | ForEach-Object {
        $q = $_.q; $a = $_.a
        @"
<!-- Q -->
<div class="accordion-item border-b border-gray-100 js-accordion" tabindex="0">
<button class="w-full flex justify-between items-center py-6 cursor-pointer text-left js-acc-trigger">
<h4 class="text-sm md:text-base font-semibold">$q</h4>
<svg class="w-5 h-5 text-gray-400 transition-transform chevron" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path></svg>
</button>
<div class="accordion-content">
<p class="pb-6 text-sm text-gray-500 leading-relaxed">$a</p>
</div>
</div>
"@
    }) -join "\`n"
    
    $errHtml = ($errorsItems | ForEach-Object {
        $t = $_.t; $d = $_.d
        @"
<div class="bg-white p-6 border-l-4 border-brand-red shadow-sm">
<h4 class="font-bold text-sm mb-2">$t</h4>
<p class="text-xs text-gray-500">$d</p>
</div>
"@
    }) -join "\`n"

    $body = @"
${s}
"@
`;

b = b.substring(0, oldFuncStart) + newFunc + b.substring(oldBodyEnd);
fs.writeFileSync('__build.ps1', b);
console.log('Replaced function Build-Service inner body');
