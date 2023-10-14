<template>
  <div class="wrapper">
    <app-header></app-header>
    <all-masters v-for="item in allMasters" :key="item" :master="item">
    </all-masters>
  </div>
</template>

<script>
import AppHeader from '~/components/AppHeader.vue';
import AllMasters from "~/components/AllMasters.vue";
export default {
  components: {
    AppHeader,
    AllMasters,
  },
  data() {
    return {
      allMasters: [],
      serverUrl: "http://localhost:3000/masters",
    };
  },
  mounted() {
    console.log(this.$route.path.substring(1));
    try {
      this.$axios.$get(this.serverUrl).then((data) => {
        if (data) {
          this.allMasters = data;
        }
      });
    } catch (error) {
      console.log("error", error);
    }
  },
};
</script>

<style lang="scss" scoped></style>
