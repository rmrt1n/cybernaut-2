<script>
</script>

<h1 class="text-xl font-bold mb-4">Profile</h1>

<div class="grid md:grid-cols-2 lg:grid-rows-4 gap-6">
  <!-- profile -->
  <div class="card text-center col-span-full col-span-1 lg:row-span-4 bg-white dark:bg-gray-800">
    <figure class="px-10 pt-10">
      <img src="https://picsum.photos/id/1005/400/250" class="mask mask-circle w-1/2" />
    </figure>
    <div class="card-body">
      <div class="justify-center card-actions">
        <button class="btn btn-primary border-0">Upgrade Plan</button>
      </div>
      <h2 class="card-title">John Smith</h2>
      <p>desc</p>
    </div>
  </div>

  <!-- stats -->
  <div class="card lg:row-span-2">
    <div class="card-body bg-white dark:bg-gray-800">
      <h2 class="card-title">
        Performance
        <div class="badge mx-2 badge-secondary">NEW</div>
      </h2>

      <p>Here are your recent stats on these topics.</p>

      <div class="space-y-2 mt-4">
        <p class="font-bold">Phishing</p>
        <progress class="progress progress-primary" value="80" max="100" />
        <p class="font-bold">General Cybersecurity</p>
        <progress class="progress progress-primary" value="30" max="100" />
        <p class="font-bold">Ransomware</p>
        <progress class="progress progress-primary" value="50" max="100" />
      </div>
      <div class="justify-end card-actions">
        <button class="btn btn-primary">More info</button>
      </div>
    </div>
  </div>

  <!-- continue -->
  <div class="card lg:row-span-1 bg-white">
    <div class="card-body bg-white dark:bg-gray-800">
      <h2 class="card-title">Current game in progress:</h2>
      <div class="stat-value">60%</div>
      <div class="justify-end card-actions">
        <button class="btn btn-primary">Continue</button>
      </div>
    </div>
  </div>

  <!-- notif -->
  <div class="card row-span-1">
    <div class="card-body bg-white dark:bg-gray-800 flex justify-center">
      <div class="form-control">
        <label class="cursor-pointer label">
          <span class="text-xl font-bold">Toggle Notifications</span>
          <input type="checkbox" checked="checked" class="toggle toggle-primary toggle-lg" />
        </label>
      </div>
    </div>
  </div>
</div>
