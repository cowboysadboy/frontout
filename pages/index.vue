<template>
  <div class="wrapper">
    <app-header></app-header>
    <p class="p">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolore labore delectus aperiam nam beatae repudiandae
      rerum natus, in obcaecati quibusdam maiores rem, ea soluta iusto sint fugiat voluptatem aspernatur. Incidunt
      voluptatem pariatur libero esse facilis enim! Officiis odio voluptas nisi!</p>
    <div class="masters-list">
      <all-masters v-for="item in allMasters" :key="item" :master="item">
      </all-masters>
    </div>
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

<style lang="scss" scoped>
.masters-list {
  margin-top: 30px;
}
.p{
  margin: 15px 30px 0;
}
</style>
