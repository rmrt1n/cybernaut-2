<script>
  import Tutorial from '$lib/stories/tutorial/Tutorial.svelte';

  let cur = 0;
  let lose = false,
    end = false;

  const resetGame = () => {
    cur = 0;
    lose = false;
  };
</script>

<h1 class="text-xl font-bold mb-4">Story</h1>

<div class="flex flex-col justify-center items-center">
  <div class="card bg-white w-3/4">
    <Tutorial bind:cur bind:lose bind:end />
  </div>
  <div class="text-xl font-bold mt-4 flex flex-col items-center">
    {#if lose || end}
      {#if lose}
        <p>You lose</p>
      {/if}
      {#if end}
        <p>You win</p>
      {/if}
      <button class="btn btn-primary mt-4" on:click={resetGame}>Play again</button>
    {/if}
  </div>
</div>
