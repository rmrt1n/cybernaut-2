<script>
  export let cur, lose, msg;

  const question = 'Analyse this email carefully! Is this email genuine?';
  const choices = [
    { text: 'Genuine', isCorrect: true, msg: 'Correct! On to the next one.' },
    {
      text: 'Phish',
      isCorrect: false,
      msg: "This email is genuine. The email address is genuine and phishers wouldn't want the file to be encrypted. Sasha can always call Connie to verify.",
    },
  ];

  const answer = (choice) => {
    if (!choice.isCorrect) lose++;
    msg = choice.msg;
    cur++;
  };
</script>

<div class="relative">
  <!-- background -->
  <img src="/stories/tutorial/email1.jpg" />

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
