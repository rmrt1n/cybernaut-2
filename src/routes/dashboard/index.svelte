<h1 class="text-xl font-bold mb-4">Dashboard</h1>

<div class="grid flex flex-col md:grid-cols-4 md:gap-6 lg:grid-cols-5">
  <!-- story -->
  <div class="card md:col-span-2 lg:col-span-3">
    <figure>
      <div class="w-full carousel">
        <div id="item1" class="w-full carousel-item">
          <img src="https://picsum.photos/id/500/800/300" alt="img 1" class="w-full" />
        </div>
        <div id="item2" class="w-full carousel-item">
          <img src="https://picsum.photos/id/501/800/300" alt="img 2" class="w-full" />
        </div>
        <div id="item3" class="w-full carousel-item">
          <img src="https://picsum.photos/id/502/800/300" alt="img 3" class="w-full" />
        </div>
        <div id="item4" class="w-full carousel-item">
          <img src="https://picsum.photos/id/503/800/300" alt="img 4" class="w-full" />
        </div>
      </div>
    </figure>
    <div class="card-body bg-white dark:bg-gray-800">
      <div class="flex justify-center w-full space-x-2">
        <a href="#item1" class="btn btn-xs btn-circle">1</a>
        <a href="#item2" class="btn btn-xs btn-circle">2</a>
        <a href="#item3" class="btn btn-xs btn-circle">3</a>
        <a href="#item4" class="btn btn-xs btn-circle">4</a>
      </div>
      <h2 class="card-title">Start another story!</h2>
      <p />
    </div>
  </div>

  <!-- exercise -->
  <div class="card md:col-span-2">
    <div class="card-body bg-white dark:bg-gray-800">
      <h2 class="card-title">Test your knowledge!</h2>
      <p class="bg-gray-200 dark:bg-gray-600 p-4 rounded">
        <strong>Fun fact</strong>: did you know that more than 80% of cyberattacks are phishing?
      </p>
      <p class="mt-2">We have new exercises for you!</p>
      <div class="justify-end card-actions">
        <button class="btn btn-primary border-0">Play</button>
      </div>
    </div>
  </div>

  <!-- stats -->
  <div class="card col-span-full">
    <div class="card-body bg-white dark:bg-gray-800">
      <h2 class="card-title">Your Stats</h2>

      <div class="stats border border-base-300 dark:border-gray-500">
        <div class="stat dark:bg-gray-700 dark:text-gray-200">
          <div class="stat-title">Articles read this week</div>
          <div class="stat-value dark:text-white">40</div>
          <div class="stat-actions">
            <button class="btn btn-primary btn-sm border-0">Read more</button>
          </div>
        </div>
        <div class="stat dark:bg-gray-700 dark:text-gray-200">
          <div class="stat-title">Number of cyberattacks this week</div>
          <div class="stat-value dark:text-white">1,293</div>
        </div>
      </div>
      <div class="w-full mt-2 stats border border-base-300 dark:border-gray-500">
        <div class="stat dark:bg-gray-700 dark:text-gray-200">
          <div class="stat-figure text-primary">
            <button class="btn btn-primary border-0">Play story</button>
          </div>
          <div class="stat-value">16/30</div>
          <div class="stat-title">Stories completed</div>
        </div>
      </div>
      <p />
    </div>
  </div>

  <!-- stats -->
</div>
