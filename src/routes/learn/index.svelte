<script context="module">
  import { supabase } from '$lib/db';
  export const load = async () => {
    // prettier-ignore
    const { data: articles } = await supabase
      .from('article_tags_aggr')
      .select()

    return {
      props: { articles },
    };
  };
</script>

<script>
  import { marked } from 'marked';
  import { renderer } from '$lib/renderer';

  marked.use({ renderer });

  export let articles;
</script>

<h1 class="text-xl font-bold mb-4">Learn</h1>

{#each articles as a}
  <a href={`/learn/${a.id}`} class="cursor-pointer">
    <div class="card">
      <div class="card-body bg-white dark:bg-gray-800 hover:bg-gray-200 dark:hover:bg-gray-700">
        <h2 class="card-title text-3xl">
          {a.title}
          <p class="text-base text-gray-500 font-normal">
            by: {a.author} - {new Date(a.updated_at).toLocaleDateString()}
          </p>
        </h2>
        <div class="mb-4">
          <p class="text-gray-600 dark:text-gray-400">{@html marked.parse(a.preview + ' [...]')}</p>
        </div>
        <div class="justify-end">
          {#if a.tags[0]}
            {#each a.tags as t}
              <div class="badge badge-info mr-2">{t}</div>
            {/each}
          {/if}
        </div>
      </div>
    </div>
  </a>
{/each}

<style>
  .md-list > li > p {
    text-indent: 0;
  }
</style>
