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
          secondary: '#f000b8',
          'secondary-focus': '#bd0091',
          'secondary-content': '#ffffff',
          accent: '#37cdbe',
          'accent-focus': '#2aa79b',
          'accent-content': '#ffffff',
          neutral: '#3d4451',
          'neutral-focus': '#2a2e37',
          'neutral-content': '#ffffff',
          'base-100': '#ffffff',
          'base-200': '#f9fafb',
          'base-300': '#d1d5db',
          'base-content': '#1f2937',
          info: '#2094f3',
          success: '#009485',
          warning: '#ff9900',
          error: '#ff5724',
        },
      },
    ],
  },
};

module.exports = config;
