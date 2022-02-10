<script context="module">
  import { supabase } from '$lib/db';
  export const load = async () => {
    // prettier-ignore
    const { data: articles } = await supabase
      .from('article_tags_aggr')
      .select()

    const { data: tags } = await supabase.from('article_tags').select('tags(tag)');

    return {
      props: { articles, tags },
    };
  };
</script>

<script>
  import { marked } from 'marked';
  import { renderer } from '$lib/utils/renderer';

  marked.use({ renderer });

  export let articles, tags;

  let tagsCount = {};
  tags.map((e, i) => {
    tagsCount[e.tags.tag] = (tagsCount[e.tags.tag] ?? 0) + 1;
  });

  const tagsCountArr = Object.keys(tagsCount).map((e) => ({ tag: e, count: tagsCount[e] }));

  let shownArticles = articles;
  let selectedTags = [];

  const toggleTag = (tag) => {
    selectedTags = !selectedTags.includes(tag)
      ? [...selectedTags, tag]
      : selectedTags.filter((e) => e !== tag);
  };

  $: shownArticles = articles.filter((e) => {
    if (selectedTags.length === 0) return true;
    return e.tags.filter((f) => selectedTags.includes(f)).length === selectedTags.length;
  });
</script>

<div class="lg:grid lg:grid-cols-8 gap-8">
  <div class="col-span-5">
    <h1 class="text-xl font-bold mb-4">Learn</h1>

    {#each shownArticles as a}
      <a href={`/learn/${a.id}`} class="cursor-pointer">
        <div class="card mb-8">
          <div class="card-body bg-white dark:bg-gray-800 hover:bg-gray-200 dark:hover:bg-gray-700">
            <h2 class="card-title text-3xl">
              {a.title}
              <p class="text-base text-gray-500 font-normal">
                by: {a.author} - {new Date(a.updated_at).toLocaleDateString()}
              </p>
            </h2>
            <div class="mb-4">
              <p class="text-gray-600 dark:text-gray-400">
                {@html marked.parse(a.preview + ' [...]')}
              </p>
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
  </div>

  <div class="card hidden lg:block col-span-3 mt-10">
    <div class="card-body bg-white dark:bg-gray-800">
      <h2 class="card-title">Filter by tags</h2>
      {#each tagsCountArr as t}
        <div class="flex mb-2">
          <input
            type="checkbox"
            class="checkbox mr-2 dark:border-gray-500"
            on:click={() => toggleTag(t.tag)}
          />
          <p>{t.tag + ' '}({t.count})</p>
        </div>
      {/each}
    </div>
  </div>
</div>
