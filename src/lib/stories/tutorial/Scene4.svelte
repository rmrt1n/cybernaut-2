<script>
  export let cur, lose, msg;

  const question = 'What should Phil do to stay safe while using public wifi? ';
  const choices = [
    { text: 'Do nothing', isCorrect: false, msg: 'Doing nothing is stupid' },
    {
      text: 'Connect to a VPN',
      isCorrect: true,
      msg: 'Correct! A VPN encrypts your network traffic, protecting you from prying hackers.',
    },
    { text: 'Turn on airplane mode', isCorrect: false, msg: 'Then how would he check is mail?' },
  ];

  const answer = (choice) => {
    if (!choice.isCorrect) lose++;
    msg = choice.msg;
    cur++;
  };
</script>

<div class="relative">
  <!-- background -->
  <img src="/stories/tutorial/cafe.jpg" />

  <!-- script -->
  <div
    class="absolute top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2 text-lg font-bold bg-gray-200 rounded bg-opacity-80 w-11/12 p-4"
  >
    <p class="mb-2 text-lg">{question}</p>
    <div class="flex flex-col space-y-2">
      {#each choices as c}
        <button
          class="text-left font-bold bg-gray-300 p-2 rounded bg-opacity-90"
          on:click={() => answer(c)}>{c.text}</button
        >
      {/each}
    </div>
  </div>
</div>
