// src: https://github.com/ashleyconnor/sveltekit-supabase-demo
import * as cookie from 'cookie';

export const toExpressRequest = (req, body = {}) => {
  return {
    body,
    headers: { host: req.headers.get('host') },
    cookies: cookie.parse(req.headers.get('cookie') || ''),
  };
};

export const toExpressResponse = (resp) => {
  return {
    ...resp,
    getHeader: (header) => resp.headers.get(header.toLowerCase()),
    setHeader: (header, value) => resp.headers.set(header.toLowerCase(), value),
    status: (_) => ({ json: (_) => {}, end: (_) => {} }),
  };
};
