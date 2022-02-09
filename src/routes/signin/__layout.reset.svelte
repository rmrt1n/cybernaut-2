<script context="module">
  export const load = async ({ session }) => {
    const { authenticated } = session;
    return authenticated ? { status: 302, redirect: '/' } : {};
  };
</script>

<slot />
