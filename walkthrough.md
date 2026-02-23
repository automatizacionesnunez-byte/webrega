# Walkthrough: Extranjería Expertos by Grupo RG Asesores

This document serves as a guide for understanding the structure, technical stack, and successful completion of the "web rega" project – a static landing page built originally from a set of Stitch UI screens.

## 1. Goal and Tech Stack
The goal was to generate a responsive, attractive multi-page static site for a Spanish Immigration law firm.
- **Tech Stack:** HTML5, Tailwind CSS (via CDN), Google Fonts (Montserrat & Poppins), Material Symbols, and vanilla JavaScript for basic interactivity (mobile menu, accordions).
- **Architecture:** The site is purely static (no build step necessary to deploy, though a PowerShell builder script was used to generate pages and inject shared partials like the nav and footer).

## 2. Directory Structure
The finalized site resides in `C:\Users\Usuario\.gemini\antigravity\web rega\` and has the following structure:

```text
web rega/
├── index.html                   (INICIO - Home page)
├── servicios.html               (SERVICIOS - Overview of all 10 services)
├── contacto.html                (CONTACTO - Contact form & office location)
├── servicios/                   (SUB-PAGES for individual services)
│   ├── arraigo-social.html
│   ├── arraigo-sociolaboral.html
│   ├── arraigo-socioformativo.html
│   ├── cuenta-ajena.html
│   ├── cuenta-propia.html
│   ├── profesional-cualificado.html
│   ├── nacionalidad.html
│   ├── reagrupacion-familiar.html
│   ├── tarjeta-comunitaria.html
│   └── regularizacion-2026.html
```

## 3. Key Components
1. **Shared Navigation (`<nav>`)**:
   Standardized mapping to `index.html`, `servicios.html`, and `contacto.html`. It incorporates mobile hamburger menu logic via vanilla JS injected at the bottom of the pages.
2. **Shared Footer (`<footer>`)**:
   Contains office info, quick links to top services, and legal footprint.
3. **Hero Interfaces**:
   Pages utilize dark, gradient-overlaid, background-image hero sections for a premium legal aesthetic matching the Stitch designs.
4. **Service Pages (`/servicios/*.html`)**:
   Each sub-page follows a cohesive template that includes:
   - Specific Hero description + sub-title.
   - Requirements (Requisitos).
   - What's included (Qué incluye).
   - Our Process (Nuestro Proceso).
   - FAQ Accordions.
   - Urgency CTA pointing strictly to `/contacto.html`.

## 4. Workarounds and Technical Notes
- **PowerShell Script Generator (`__build.ps1`)**:
  To avoid managing 13 identical HTML files manually, a PowerShell generator script was created to build each web page using template literals. Running this script compiles the HTML strings (incorporating shared components like `$HEAD`, `$FOOTER`, and `$SCRIPTS`) and outputs `.html` files straight to disk.
- **File Encoding & Line Endings**:
  A small formatting incident arose due to line endings formatting (`CRLF` vs `LF`) inside PowerShell block strings but was fixed using `.Replace()` logic to harmonize line breaks.
- **Verification via Browser Subagent**:
  The browser subagent autonomously loaded `index.html` locally, navigated to `servicios.html`, opened a subpage (`regularizacion-2026.html`), clicked through to `contacto.html`, and returned to the initial page. All paths are functioning without 404s.

## 5. Next Steps
- Deploy the files to any standard static file host (e.g., GitHub Pages, Netlify, Vercel, or simply FTP them to a cPanel directory).
- Verify Contact Form backend integration (the UI form in `contacto.html` needs `action="YOUR_SMTP_OR_AJAX_ENDPOINT"` before going into production).
