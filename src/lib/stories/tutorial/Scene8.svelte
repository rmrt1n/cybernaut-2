<script>
  export let cur;
</script>

<div class="relative" on:click={() => cur++}>
  <!-- background -->
  <img src="/stories/tutorial/cafe.jpg" />

  <!-- mc -->
  <img
    src="/stories/tutorial/businessman.png"
    class="absolute bottom-0 left-1/4 h-full transform translate-y-1/4 -translate-x-1/4"
  />

  <!-- script -->
  <div
    class="absolute bottom-10 left-1/2 transform -translate-x-1/2 text-lg font-bold p-4 bg-gray-200 rounded bg-opacity-80 w-4/5 mx-4"
  >
    Now that he has checked his emails and successfully avoided getting phished, Phil heads to his
    office to continue his work.
  </div>
</div>
