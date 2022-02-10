<script>
  export let cur, lose, msg;
  console.log(lose);
</script>

<div class="relative" on:click={() => cur++}>
  <!-- background -->
  <img src={`/stories/tutorial/${lose ? 'black' : 'cafe'}.jpg`} />

  <!-- script -->
  <div
    class="absolute top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2 text-lg font-bold bg-gray-200 rounded bg-opacity-80 w-11/12 p-4"
  >
    <p class="mb-2 text-lg">{msg}</p>
  </div>
</div>
