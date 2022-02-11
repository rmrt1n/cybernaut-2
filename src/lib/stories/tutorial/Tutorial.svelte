<script>
  import Scene1 from './Scene1.svelte';
  import Scene2 from './Scene2.svelte';
  import Scene3 from './Scene3.svelte';
  import Scene4 from './Scene4.svelte';
  import Scene5 from './Scene5.svelte';
  import Scene6 from './Scene6.svelte';
  import Scene7 from './Scene7.svelte';
  import Scene8 from './Scene8.svelte';
  import Scene9 from './Scene9.svelte';
  import PostAnswer from './PostAnswer.svelte';

  const scenes = [
    Scene1,
    Scene2,
    Scene3,
    Scene4,
    PostAnswer,
    Scene5,
    Scene6,
    PostAnswer,
    Scene7,
    PostAnswer,
    Scene8,
    Scene9,
  ];

  export let cur, lose, end;

  let msg = '';
</script>

<div>
  <svelte:component this={scenes[cur]} bind:cur bind:lose bind:msg bind:end />
</div>
