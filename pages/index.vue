<template>
  <div class="wrapper">
    <div class="all-masters">
      <all-masters v-for="item in allMasters" :key="item" :master="item">
      </all-masters>
    </div>
  </div>
</template>

<script>
import AllMasters from "~/components/AllMasters.vue";
export default {
  components: {
    AllMasters,
  },
  data() {
    return {
      allMasters: [],
      serverUrl: "http://cowboysadboy.store:8180/api/Masters/GetAll",
    };
  },
  mounted() {
    console.log(this.$route.path.substring(1));
    try {
      this.$axios.$get(this.serverUrl).then((data) => {
        if (data.value) {
          this.allMasters = data.value;
        }
      });
    } catch (error) {
      console.log("error", error);
    }
  },
};
</script>

<style>
.wrapper {
  max-width: 760px;
  margin: 0 auto;
  background: white;
}
.all-masters {
  display: flex;
  flex-direction: column;
}
</style>
