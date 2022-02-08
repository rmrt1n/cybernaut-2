import { writable } from 'svelte/store';
import { browser } from '$app/env';

const value = browser ? window.localStorage.getItem('theme') ?? 'light' : 'light';
export const theme = writable(value);

theme.subscribe((e) => {
  if (browser) window.localStorage.setItem('theme', e);
});
