import { supabase } from '$lib/db';
import { toExpressRequest, toExpressResponse } from '$lib/utils/expressify';

export const handle = async ({ event, resolve }) => {
  const request = event.request;
  const expReq = toExpressRequest(request);
  const { user } = await supabase.auth.api.getUserByCookie(expReq);

  event.locals.user = user || { guest: true };

  let response = await resolve(event);

  console.log(request.method, event.url.pathname);
  if (request.method === 'POST' && event.url.pathname === '/api/auth') {
    const reqBody = await request.json();
    const req = await toExpressRequest(request, reqBody);
    supabase.auth.api.setAuthCookie(req, toExpressResponse(response));
  }

  return response;
};

export const getSession = async (event) => {
  const { user } = event.locals;
  const authenticated = user && !user.guest;

  return { user, authenticated };
};
