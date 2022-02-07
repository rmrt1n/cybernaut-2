<script context="module">
  import { supabase } from '$lib/db';
  export const load = async () => {
    // prettier-ignore
    const { data: modules } = await supabase
      .from('modules')
      .select()

    return {
      props: { modules },
    };
  };
</script>

<script>
  export let modules;
</script>

<h1 class="text-xl font-bold mb-4">Exercise</h1>

<div class="grid gap-6 grid-cols-1 md:grid-cols-2 lg:grid-cols-3">
  {#each modules as m}
    <div class="card">
      <figure>
        <img src="https://picsum.photos/id/1005/400/250" alt="thumbnail" />
      </figure>
      <div class="card-body bg-white dark:bg-gray-800">
        <h2 class="card-title">{m.name}</h2>
        <p>{m.desc || '...'}</p>
        <div class="justify-end card-actions">
          <a
            href={`/exercise/${m.id}`}
            class="btn bg-green-300 border-0 hover:bg-green-400 text-gray-800">Play</a
          >
        </div>
      </div>
    </div>
  {/each}
</div>
