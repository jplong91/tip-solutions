<template>
  <div id="app">
    <img
      alt="Vue logo"
      src="https://i.gzn.jp/img/2020/11/05/github-source-code-leak/00_m.png"
    />
    <p>
      Here are some key github repositories, ranked by popularity
      <br />
      Popularity is decided by a number of factors, and it is top secret!!
      <br />Do not look at my github to find the magic formula!!
    </p>
    <br />

    <div class="row">
      <div class="col">
        <apexchart
          class="charty"
          type="pie"
          width="380"
          :options="chartOptions"
          :series="stars"
        ></apexchart>
        <h4>
          <svg
            xmlns="http://www.w3.org/2000/svg"
            width="16"
            height="16"
            fill="currentColor"
            class="bi bi-star"
            viewBox="0 0 16 16"
          >
            <path
              d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"
            />
          </svg>
          Stars
        </h4>
      </div>
      <div class="col">
        <apexchart
          class="charty"
          type="pie"
          width="380"
          :options="chartOptions"
          :series="watchers"
        ></apexchart>
        <h4>
          <svg
            xmlns="http://www.w3.org/2000/svg"
            width="16"
            height="16"
            fill="currentColor"
            class="bi bi-eye"
            viewBox="0 0 16 16"
          >
            <path
              d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z"
            />
            <path
              d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z"
            />
          </svg>
          Watchers
        </h4>
      </div>
      <div class="col">
        <apexchart
          class="charty"
          type="pie"
          width="380"
          :options="chartOptions"
          :series="forks"
        ></apexchart>
        <h4>
          <svg
            xmlns="http://www.w3.org/2000/svg"
            width="16"
            height="16"
            fill="currentColor"
            class="bi bi-diagram-2"
            viewBox="0 0 16 16"
          >
            <path
              fill-rule="evenodd"
              d="M6 3.5A1.5 1.5 0 0 1 7.5 2h1A1.5 1.5 0 0 1 10 3.5v1A1.5 1.5 0 0 1 8.5 6v1H11a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-1 0V8h-5v.5a.5.5 0 0 1-1 0v-1A.5.5 0 0 1 5 7h4.5V6A1.5 1.5 0 0 1 6 4.5v-1zM8.5 5a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1zM3 11.5A1.5 1.5 0 0 1 4.5 10h1A1.5 1.5 0 0 1 7 11.5v1A1.5 1.5 0 0 1 5.5 14h-1A1.5 1.5 0 0 1 3 12.5v-1zm1.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1zm4.5.5a1.5 1.5 0 0 1 1.5-1.5h1a1.5 1.5 0 0 1 1.5 1.5v1a1.5 1.5 0 0 1-1.5 1.5h-1A1.5 1.5 0 0 1 9 12.5v-1zm1.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1z"
            />
          </svg>
          Forks
        </h4>
      </div>
    </div>
    <br />
    <hr />
    <br />

    <div v-for="repo in repos" :key="repo.id">
      <br />
      <h1>
        <a :href="repo.clone_url" alt="" target="_blank">
          {{ repo.name.charAt(0).toUpperCase() + repo.name.slice(1) }}
        </a>
      </h1>
      <p class="description">{{ repo.description }}</p>
      <p>Stars: {{ repo.stargazers_count }}</p>
      <p>Watchers: {{ repo.subscribers_count }}</p>
      <p>Forks: {{ repo.forks }}</p>
    </div>
  </div>
</template>

  <style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
.description {
  font-size: 12px;
  color: gray;
}
.charty {
  text-align: left;
}
</style>

<script>
import axios from "axios";
import VueApexCharts from "vue-apexcharts";

export default {
  name: "App",
  components: { apexchart: VueApexCharts },
  data: function () {
    return {
      repos: [],
      stars: [],
      watchers: [],
      forks: [],
      chartOptions: {
        chart: {
          width: 380,
          type: "pie",
        },
        labels: ["React", "Vue", "Angular", "Svelte", "Ember"],
        name: "PIE",
        responsive: [
          {
            breakpoint: 480,
            options: {
              chart: {
                width: 200,
              },
              legend: {
                position: "bottom",
              },
            },
          },
        ],
      },
    };
  },
  created: function () {
    this.getStuff();
  },
  methods: {
    getStuff: function () {
      axios
        .all([
          axios.get("https://api.github.com/repos/vuejs/vue"),
          axios.get("https://api.github.com/repos/angular/angular.js"),
          axios.get("https://api.github.com/repos/emberjs/ember.js"),
          axios.get("https://api.github.com/repos/sveltejs/svelte"),
          axios.get("https://api.github.com/repos/facebook/react"),
        ])
        .then(
          axios.spread((vue, angular, ember, svelte, react) => {
            // console.log(vue, angular, ember, svelte, react);
            let rawdata = [react, vue, angular, svelte, ember];
            rawdata.forEach((framework) => {
              this.repos.push(framework.data);
              this.stars.push(framework.data.stargazers_count);
              this.watchers.push(framework.data.subscribers_count);
              this.forks.push(framework.data.forks);
            });

            this.repos.forEach((repo) => {
              repo.weight =
                repo.stargazers_count +
                5 * repo.forks +
                3 * repo.subscribers_count;
              if (repo.stargazers_count > 1000) {
                repo.stargazers_count =
                  (Math.round(repo.stargazers_count / 1000) * 1000)
                    .toString()
                    .slice(0, -3) + "k";
              }
              if (repo.subscribers_count > 1000) {
                repo.subscribers_count =
                  (Math.round(repo.subscribers_count / 1000) * 1000)
                    .toString()
                    .slice(0, -3) + "k";
              }
              if (repo.forks > 1000) {
                repo.forks =
                  (Math.round(repo.forks / 1000) * 1000)
                    .toString()
                    .slice(0, -3) + "k";
              }
            });

            this.repos.sort((a, b) =>
              a.weight < b.weight ? 1 : b.weight < a.weight ? -1 : 0
            );
            console.log(this.repos);
          })
        );
    },
  },
};
</script>


