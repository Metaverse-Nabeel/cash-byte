/** @type {import('tailwindcss').Config} */

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      fontFamily: {
        'proxima': ['Proxima Nova Font', 'sans-serif'],
        'proxima-light': ['Proxima Nova Light Font', 'sans-serif'],
        'proxima-bold': ['Proxima Nova Bold Font', 'sans-serif'],
      },
      colors: {
        main: '#3778c2',
        second: '#5fb523',
        text: '#434b54',
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}
