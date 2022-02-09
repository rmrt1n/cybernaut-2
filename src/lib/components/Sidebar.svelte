<script>
  import Home from './icons/Home.svelte';
  import Document from './icons/Document.svelte';
  import Settings from './icons/Settings.svelte';
  import Academy from './icons/Academy.svelte';
  import Beaker from './icons/Beaker.svelte';
  export let close;

  const sections = [
    { name: 'Dashboard', url: '/', icon: Home },
    { name: 'Story', url: '/story', icon: Academy },
    { name: 'Exercise', url: '/exercise', icon: Beaker },
    { name: 'Learn', url: '/learn', icon: Document },
    { name: 'Settings', url: 'settings', icon: Settings },
  ];
</script>

<div
  class="bg-white dark:bg-gray-800 text-gray-800 dark:text-gray-200 space-y-6 w-64 px-2 py-4 absolute inset-y-0 left-0 transform md:relative md:translate-x-0 transition duration-200 ease-in-out z-40"
  class:-translate-x-full={close}
>
  <!-- logo -->
  <a href="/" class="ml-4 text-2xl font-bold text-gray-800 dark:text-gray-200">Cybernaut</a>

  <!-- nav -->
  <nav>
    {#each sections as sect}
      <a
        href={sect.url}
        class="block px-4 py-2 font-medium hover:bg-green-300 dark:hover:text-gray-800 rounded transition duration-200 flex items-center"
        on:click={() => (close = true)}
      >
        <svelte:component this={sect.icon} />
        <p class="ml-2">{sect.name}</p>
      </a>
    {/each}
  </nav>
</div>
