<script>
  import Scene1 from './Scene1.svelte';
  import Scene2 from './Scene2.svelte';
  import Scene3 from './Scene3.svelte';
  import Scene4 from './Scene4.svelte';
  import Scene4Msg from './Scene4Msg.svelte';

  const scenes = [Scene1, Scene2, Scene3, Scene4, Scene4Msg];

  let cur = 0;
  let lose = false;
  let msg = '';
</script>

<div id="screen">
  <svelte:component this={scenes[cur]} bind:cur bind:lose bind:msg />
</div>

<style>
  /* #screen { */
  /* height: 30rem; */
  /* } */
</style>
