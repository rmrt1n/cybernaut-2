const config = {
  content: ['./src/**/*.{html,js,svelte,ts}'],

  theme: {
    extend: {},
  },

  plugins: [require('daisyui')],

  darkMode: 'class',

  daisyui: {
    themes: [
      {
        mytheme: {
          primary: '#86EFAC',
          'primary-focus': '#4ADE80',
          'primary-content': '#1F2937',
        },
      },
    ],
  },
};

module.exports = config;
