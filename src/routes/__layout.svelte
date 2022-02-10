<script>
  import { session } from '$app/stores';
  import '../app.css';
  import { supabase } from '$lib/db';
  import { setAuthCookie, unsetAuthCookie } from '$lib/utils/session';

  supabase.auth.onAuthStateChange(async (event, _session) => {
    if (event !== 'SIGNED_OUT') {
      session.set({ user: _session.user });
      await setAuthCookie(_session);
    } else {
      session.set({ user: { guest: true } });
      await unsetAuthCookie();
    }
  });
</script>

<main class:is-logged-in={$session?.authenticated}>
  <slot />
</main>
