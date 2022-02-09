<script context="module">
  export const load = async ({ error, status }) => {
    return {
      props: {
        title: `${status}: ${error.message}`,
      },
    };
  };
</script>

<script>
  export let title;
</script>

<div class="hero min-h-screen bg-base-200">
  <div class="text-center hero-content">
    <div class="max-w-md">
      <h1 class="mb-5 text-5xl font-bold">{title}</h1>
      <p class="mb-5">Opps! Something went wrong...</p>
      <a href="/" class="btn btn-primary border-0">Go home</a>
    </div>
  </div>
</div>
