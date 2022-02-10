<script>
  import { supabase } from '$lib/db';

  export let open;

  const signOut = async () => {
    await supabase.auth.signOut();
  };

  const close = () => (open = false);
</script>

{#if open}
  <ul class="menu w-64 bg-white dark:bg-gray-800 rounded absolute right-0 z-10 shadow-md">
    <li class="dark:hover:bg-gray-700 focus:bg-green-300" on:click={close}>
      <a href="/dashboard/profile">Profile</a>
    </li>
    <li class="dark:hover:bg-gray-700" on:click={signOut} on:click={close}>
      <a href="#">Sign out</a>
    </li>
  </ul>
{/if}
