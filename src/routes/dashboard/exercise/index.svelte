<script context="module">
  import { supabase } from '$lib/db';
  export const load = async () => {
    // prettier-ignore
    const { data: exercises } = await supabase
      .from('exercises')
      .select()

    return {
      props: { exercises },
    };
  };
</script>

<script>
  export let exercises;
</script>

<h1 class="text-xl font-bold mb-4">Exercise</h1>

<div class="grid gap-6 grid-cols-1 md:grid-cols-2 lg:grid-cols-3">
  {#each exercises as m}
    <div class="card">
      <figure>
        <img src="https://picsum.photos/id/1005/400/250" alt="thumbnail" />
      </figure>
      <div class="card-body bg-white dark:bg-gray-800">
        <h2 class="card-title">{m.name}</h2>
        <div class="justify-end card-actions">
          <a href={`/dashboard/exercise/${m.id}`} class="btn btn-primary border-0">Play</a>
        </div>
      </div>
    </div>
  {/each}
</div>
