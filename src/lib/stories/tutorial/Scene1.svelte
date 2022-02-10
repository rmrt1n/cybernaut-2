<script>
  export let cur;
</script>

<div class="relative" on:click={() => cur++}>
  <!-- background -->
  <img src="/stories/tutorial/home.jpg" />

  <!-- mc -->
  <img src="/stories/tutorial/businessman.png" class="absolute bottom-10 left-20 h-96" />

  <!-- script -->
  <div
    class="absolute bottom-10 left-1/2 transform -translate-x-1/2 text-lg font-bold p-4 bg-gray-200 rounded bg-opacity-80 w-4/5 mx-4"
  >
    This is Phil. He is your average salary man in an average sales company. His consistent
    performance in work is the only thing keeping him from losing his job. With the rise of
    cyberattacks nowadays, can Phil protect his job? Join Phil in his daily activities and help him
    avoid common cybersecurity and phishing pitfalls.
  </div>
</div>
