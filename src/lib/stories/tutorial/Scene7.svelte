<script>
  export let cur, lose, msg;

  const question = 'Analyse this email carefully! Is this email genuine?';
  const choices = [
    {
      text: 'Genuine',
      isCorrect: false,
      msg: "Whoops. That was a phishing mail. There are strange typo on the sender's email address and the link in the button leads to an insecure, obviously phishing site.",
    },
    { text: 'Phish', isCorrect: true, msg: 'Correct! Great job!' },
  ];

  const answer = (choice) => {
    if (!choice.isCorrect) lose++;
    msg = choice.msg;
    cur++;
  };
</script>

<div class="relative">
  <!-- background -->
  <img src="/stories/tutorial/email2.jpg" />

  <!-- email -->
  <img
    src=""
    class="absolute bottom-0 left-1/4 h-full transform translate-y-1/4 -translate-x-1/4"
  />

  <!-- script -->
  <div
    class="absolute bottom-10 left-1/2 transform -translate-x-1/2 text-lg font-bold p-4 bg-gray-200 rounded bg-opacity-80 w-4/5 mx-4"
  >
    <p>{question}</p>
    <div class="flex justify-center space-x-4">
      {#each choices as c}
        <button class="bg-gray-300 p-2 rounded bg-opacity-90 font-bold" on:click={() => answer(c)}
          >{c.text}</button
        >
      {/each}
    </div>
  </div>
</div>
