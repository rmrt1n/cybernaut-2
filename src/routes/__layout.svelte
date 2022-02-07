<script>
  import '../app.css';
  import Sidebar from '$lib/components/Sidebar.svelte';
  import Navbar from '$lib/components/Navbar.svelte';
  import Overlay from '$lib/components/Overlay.svelte';

  let close = true;
  let theme = 'light'; // light | dark
</script>

<div class="relative min-h-screen md:flex" class:dark={theme === 'dark'}>
  <Sidebar bind:close />
  <div class="w-full min-h-screen bg-gray-100 dark:bg-gray-900 text-gray-800 dark:text-gray-200">
    <Navbar bind:close bind:theme />
    <div class="p-4">
      <slot />
    </div>
  </div>
</div>

{#if !close}
  <Overlay bind:close />
{/if}
