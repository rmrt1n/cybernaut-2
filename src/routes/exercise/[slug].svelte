<script context="module">
  import { supabase } from '$lib/db';
  export const load = async ({ params }) => {
    const moduleId = params.slug;
    // prettier-ignore
    const { data: module } = await supabase
      .from('modules')
      .select()
      .eq('id', moduleId)
      .single()

    if (!module)
      return {
        status: 404,
      };

    // prettier-ignore
    const { data: questions } = await supabase
      .from('questions')
      .select('*, choices(choice, is_correct)')
      .eq('module_id', moduleId)

    return {
      props: { module, questions },
    };
  };
</script>

<script>
  import ExerciseCard from '$lib/components/ExerciseCard.svelte';

  export let module, questions;

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

<h1 class="text-xl font-bold">{module.name}</h1>
<p>{module.desc}</p>

{#each questions as question, i}
  <ExerciseCard bind:question bind:answered bind:answers {i} />
{/each}

{#if answered}
  <div class="mt-8">
    <h2 class="text-lg font-bold mb-2">Your results: {correct}</h2>
    <a href="/exercise" class="btn bg-green-300 border-0 hover:bg-green-400 text-gray-800"
      >Try another exercise</a
    >
  </div>
{/if}
