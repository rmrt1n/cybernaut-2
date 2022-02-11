<script>
  import { supabase } from '$lib/db';

  let email = '';
  const re =
    /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
  let msg = 'Sign in'; // Sign in | Check you Inbox

  const signIn = async () => {
    if (!email.toLowerCase().match(re)) return;
    const url = import.meta.env.VITE_URL ?? 'localhost:3000/dashboard';
    // prettier-ignore
    const { error } = await supabase.auth.signIn({ email }, { redirectTo: url })
    if (error) alert(error.message);
    msg = 'Check your Inbox';
  };
</script>

<div class="min-h-screen flex justify-center items-center p-10">
  <div class="flex flex-col lg:flex-row justify-center items-center space-x-4 space-y-4">
    <div class="text-center lg:text-left md:w-1/2">
      <h1 class="mb-5 text-5xl font-bold">Hello there</h1>
      <p class="mb-5">
        Hi there! Glad you made it here. To use the app you need to sign in using your email. Don't
        worry, we won't we storing your email. All user data will be deleted after the competition
        is over.
      </p>
    </div>
    <div class="card flex-shrink-0 w-full max-w-sm shadow-xl">
      <form class="card-body" on:submit|preventDefault={signIn}>
        <div class="form-control">
          <label class="label">
            <span class="label-text">Email</span>
          </label>
          <input type="text" placeholder="email" class="input input-bordered" bind:value={email} />
        </div>
        <div class="form-control mt-6">
          <input
            type="submit"
            bind:value={msg}
            class="btn btn-primary border-0"
            class:btn-disabled={msg === 'Check your Inbox'}
            class:bg-gray-500={msg === 'Check your Inbox'}
          />
        </div>
      </form>
    </div>
  </div>
</div>
