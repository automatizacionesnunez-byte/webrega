const jsdom = require("jsdom");
const fs = require('fs');
const { JSDOM } = jsdom;

async function fetchAndClean(url, filename) {
    console.log(`Fetching ${url}...`);
    try {
        const response = await fetch(url);
        const arrayBuffer = await response.arrayBuffer();
        const buffer = Buffer.from(arrayBuffer);
        const html = buffer.toString('utf-8');

        const dom = new JSDOM(html);
        const document = dom.window.document;

        // Find the main content div. In standard Elementor sites, it's usually inside an entry-content or similar.
        // Let's grab all paragraphs, h2, h3, ul, ol inside the main body and reconstruct a clean HTML string.
        const mainContent = document.querySelector('.elementor-widget-theme-post-content') || document.querySelector('.entry-content') || document.body;

        // Remove scripts and styles before extracting text
        const scripts = mainContent.querySelectorAll('script, style, iframe, form, button, nav, header, footer');
        scripts.forEach(s => s.remove());

        // We only want headings, paragraphs, and lists.
        const validTags = Array.from(mainContent.querySelectorAll('h1, h2, h3, h4, h5, h6, p, ul, ol, li, strong, em, b, i, underline'));

        // To maintain order, it's better to just replace the classes of all elements and remove the ones we don't want.
        const allElements = mainContent.querySelectorAll('*');
        allElements.forEach(el => {
            el.removeAttribute('class');
            el.removeAttribute('id');
            el.removeAttribute('style');
            if (el.tagName === 'DIV' || el.tagName === 'SECTION') {
                // If it's a structural tag, we might want to unwrap it if it only contains text, but for simplicity, we just leave it without classes.
            }
        });

        // The safest approach is taking the innerHTML of the container and stripping out empty divs if possible.
        let cleanHtml = mainContent.innerHTML;
        // Basic regex cleanup to remove empty divs
        cleanHtml = cleanHtml.replace(/<div\s*>\s*<\/div>/gi, '');
        // Replace <div> with <p> for better prose styling if it's just wrapping text block. Actually, leaving divs is fine for prose, but let's just save valid innerHTML.

        // Write to file with explicit UTF-8 encoding
        fs.writeFileSync(filename, cleanHtml, { encoding: 'utf8' });
        console.log(`Saved pristine UTF-8 HTML to ${filename}`);

    } catch (e) {
        console.error(`Error fetching ${url}:`, e);
    }
}

async function run() {
    await fetchAndClean('https://gruporgasesores.com/aviso-legal/', 'aviso-legal-clean.html');
    await fetchAndClean('https://gruporgasesores.com/politica-de-privacidad/', 'politica-privacidad-clean.html');
    await fetchAndClean('https://gruporgasesores.com/politica-de-cookies/', 'politica-cookies-clean.html');
}

run();
