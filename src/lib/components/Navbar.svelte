<script>
  import Hamburger from './icons/Hamburger.svelte';
  import Profile from './icons/Profile.svelte';
  import Sun from './icons/Sun.svelte';
  import Moon from './icons/Moon.svelte';

  export let close, theme;

  const changeTheme = () => {
    theme = theme === 'light' ? 'dark' : 'light';
  };
</script>

<div
  class="bg-white dark:bg-gray-800 text-gray-800 dark:text-gray-200 flex items-center justify-between"
>
  <div>
    <!-- hamburger -->
    <button
      class="p-3 hover:bg-gray-300 focus:bg-gray-300 md:hidden rounded"
      on:click={() => (close = !close)}
    >
      <Hamburger />
    </button>

    <!-- logo -->
    <a href="/" class="text-xl font-bold text-gray-800 dark:text-gray-200 md:hidden">Cybernaut</a>
  </div>

  <div>
    <!-- theme switch -->
    <button
      class="p-3 hover:bg-green-300 hover:text-gray-800 rounded transition duration-200"
      on:click={changeTheme}
    >
      {#if theme === 'light'}
        <Moon />
      {:else}
        <Sun />
      {/if}
    </button>

    <!-- profile -->
    <button class="p-3 hover:bg-green-300 hover:text-gray-800 rounded transition duration-200">
      <Profile />
    </button>
  </div>
</div>
