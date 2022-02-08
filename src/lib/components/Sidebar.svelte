<script>
  export let close;

  const sections = [
    { name: 'Dashboard', url: '#' },
    { name: 'Story', url: '#' },
    { name: 'Exercise', url: '/exercise' },
    { name: 'Learn', url: '/learn' },
    { name: 'Settings', url: '#' },
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
        class="block px-4 py-2 font-medium hover:bg-green-300 dark:hover:text-gray-800 rounded transition duration-200"
      >
        {sect.name}
      </a>
    {/each}
  </nav>
</div>
