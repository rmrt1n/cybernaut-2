const size = ['2xl', 'xl', 'lg', 'md', 'base', 'sm'];

export const renderer = {
  heading(text, level) {
    const fontSize = size[level - 1];
    return `
      <h${level} class="text-${fontSize} font-bold mb-2">${text}</h${level}>
    `;
  },

  list(body, ordered, start) {
    const list = ordered ? 'ol' : 'ul';
    const listType = ordered ? 'list-decimal' : 'list-disc';
    return `
      <${list} class="${listType} pl-8 md-list">
        ${body}
      </${list}>
    `;
  },

  paragraph(text) {
    return `<p class="mb-4">${text}</p>`;
  },
};
