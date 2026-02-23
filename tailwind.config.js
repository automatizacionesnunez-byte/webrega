/** @type {import('tailwindcss').Config} */
module.exports = {
    content: ["./*.html", "./servicios/*.html"],
    darkMode: "class",
    theme: {
        extend: {
            colors: {
                primary: "#C81E1E",
                "primary-dark": "#991b1b",
                "background-light": "#FFFFFF",
                "background-dark": "#111827",
                "surface-light": "#F3F4F6",
                "surface-dark": "#1F2937",
                "text-light": "#1F2937",
                "text-dark": "#F9FAFB",
            },
            fontFamily: {
                display: ["Montserrat", "sans-serif"],
                body: ["Poppins", "sans-serif"],
            },
            boxShadow: { premium: "0 10px 40px -10px rgba(0,0,0,0.1)" },
        },
    },
    plugins: [
        require('@tailwindcss/typography'),
        require('@tailwindcss/forms'),
    ],
};
