<script context="module">
  import { supabase } from '$lib/db';
  export const load = async ({ params }) => {
    const exerciseId = params.slug;
    // prettier-ignore
    const { data: exercise } = await supabase
      .from('exercises')
      .select()
      .eq('id', exerciseId)
      .single()

    if (!exercise) return { status: 404 };

    // prettier-ignore
    const { data: questions } = await supabase
      .from('questions')
      .select('*, choices(choice, is_correct)')
      .eq('exercise_id', exerciseId)

    return {
      props: { exercise, questions },
    };
  };
</script>

<script>
  import ExerciseCard from '$lib/components/ExerciseCard.svelte';

  export let exercise, questions;

  questions = questions.map((e) => ({
    ...e,
    answered: false,
  }));

  let answered = false;
  let answers = Array(questions.length).fill(false);
  let correct = 0;

  $: answered = questions.filter((e) => !e.answered).length === 0;
  $: correct = answers.filter((e) => e).length;
</script>

<h1 class="text-xl font-bold">{exercise.name}</h1>
<p>{exercise.desc}</p>

{#each questions as question, i}
  <ExerciseCard bind:question bind:answered bind:answers {i} />
{/each}

{#if answered}
  <div class="mt-8">
    <h2 class="text-lg font-bold mb-2">Your results: {correct}</h2>
    <a href="/exercise" class="btn btn-primary border-0">Try another exercise</a>
  </div>
{/if}
