<script context="module">
  import { supabase } from '$lib/db';
  export const load = async ({ session }) => {
    const { user /*, authenticated */ } = session;
    /* if (!authenticated) { */
    /* return { */
    /* status: 302, */
    /* redirect: '/signin' */
    /* } */
    /* } */
    return {
      props: { user },
    };
  };
</script>

<script>
  import { session } from '$app/stores';
  import '../app.css';
  import Sidebar from '$lib/components/Sidebar.svelte';
  import Navbar from '$lib/components/Navbar.svelte';
  import Overlay from '$lib/components/Overlay.svelte';
  import ProfileMenu from '$lib/components/ProfileMenu.svelte';
  import { theme } from '$lib/stores.js';
  import { setAuthCookie, unsetAuthCookie } from '$lib/utils/session';

  export let user;

  // session.set throws error, can't set session store before subscribing
  // things work for now so i'll leave it for now
  supabase.auth.onAuthStateChange(async (event, _session) => {
    if (event !== 'SIGNED_OUT') {
      session.set({ user: _session.user });
      await setAuthCookie(_session);
    } else {
      session.set({ user: { guest: true } });
      await unsetAuthCookie();
    }
  });

  let close = true;
  let isProfileOpen = false;
</script>

<div class="relative min-h-screen md:flex" class:dark={$theme === 'dark'}>
  <Sidebar bind:close />
  <div class="w-full min-h-full bg-gray-100 dark:bg-gray-900 text-gray-800 dark:text-gray-200">
    <Navbar bind:close bind:theme={$theme} bind:isProfileOpen />
    <div class="px-4 pb-4 lg:px-8 lg:pb-4 relative min-h-screen">
      <ProfileMenu bind:open={isProfileOpen} />
      <div class="pt-4 lg:pt-8">
        <slot />
      </div>
    </div>
  </div>
</div>

{#if !close}
  <Overlay bind:close />
{/if}
