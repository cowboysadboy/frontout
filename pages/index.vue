<template>
  <div class="wrapper">
    <app-header></app-header>
    <p class="p">Добро пожаловать в наш интернет-сервис для тату-мастеров! Мы предлагаем удобную платформу, где вы можете
      зарегистрироваться и создать свое персональное портфолио.
    </p>
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
      serverUrl: "masters",
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

.p {
  margin: 15px 30px 0;
}
</style>
