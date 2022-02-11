<script context="module">
  export const load = async ({ session }) => {
    const { authenticated } = session;
    const url = import.meta.env.VITE_URL ?? 'localhost:3000/dashboard';
    return authenticated ? { status: 302, redirect: url } : {};
  };
</script>

<slot />
