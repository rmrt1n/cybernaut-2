<script context="module">
  import { supabase } from '$lib/db';
  export const load = async ({ params }) => {
    const id = params.slug;
    // prettier-ignore
    const { data: article } = await supabase
      .from('articles')
      .select()
      .eq('id', id)
      .single()

    return {
      props: { article },
    };
  };
</script>

<script>
  import { marked } from 'marked';
  import { renderer } from '$lib/renderer';

  marked.use({ renderer });

  export let article;
</script>

<div class="flex justify-center">
  <div class="bg-white dark:bg-gray-800 rounded p-8 w-full lg:w-8/12">
    <h1 class="text-3xl font-bold mb-2">{article.title}</h1>
    <p class="text-gray-500 mb-8">
      by: {article.author} - {new Date(article.updated_at).toLocaleDateString()}
    </p>
    <div>
      {@html marked.parse(article.body)}
    </div>
  </div>
</div>
