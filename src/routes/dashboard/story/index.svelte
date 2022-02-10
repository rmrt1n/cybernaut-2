<script context="module">
  /* import { supabase } from '$lib/db' */
  /* export const load = async () => { */
  /* // prettier-ignore */
  /* const { data: stories } = await supabase */
  /* .from('stories') */
  /* .select() */

  /* return { */
  /* props: { stories } */
  /* } */
  /* } */
</script>

<script>
  /* export let stories; */
  import Tutorial from '$lib/stories/tutorial/Tutorial.svelte';
</script>

<h1 class="text-xl font-bold mb-4">Story</h1>

<div class="flex justify-center">
  <div class="card bg-white w-3/4">
    <Tutorial />
  </div>
</div>
