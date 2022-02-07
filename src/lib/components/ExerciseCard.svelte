<script>
  export let question, answers, answered, i;

  let clicked = -1;

  const onClick = (j) => {
    if (answered || j === clicked) return;

    clicked = j;
    question.answered = true;
    answers[i] = question.choices[j].is_correct;
  };
</script>

<div class="card mb-8">
  <div class="card-body bg-white dark:bg-gray-800">
    <h2 class="card-title">{i + 1}. {question.question}</h2>
    <div class="grid grid-cols-2 gap-6">
      {#each question.choices as c, i}
        <button
          class="bg-gray-200 dark:bg-gray-700 dark:text-gray-200 p-4 rounded text-left"
          class:bg-red-300={answered && !c.is_correct}
          class:dark:bg-red-300={answered && !c.is_correct}
          class:bg-green-300={answered && c.is_correct}
          class:dark:bg-green-300={answered && c.is_correct}
          class:bg-blue-300={!answered && i === clicked}
          class:dark:bg-blue-300={!answered && i === clicked}
          class:dark:text-gray-800={answered || i === clicked}
          on:click={() => onClick(i)}
        >
          {c.choice}
        </button>
      {/each}
    </div>
  </div>
</div>
