<template>
  <div class="wrapper">
    <app-header></app-header>
    <div class="container">
      <name-master :first_name="masterData.first_name" :last_name="masterData.last_name"
        :nickname="masterData.nickname"></name-master>
      <avatar-master :avatar_link="masterData.avatar_link" :city="masterData.city"
        :work_expirience="masterData.work_expirience"></avatar-master>
    </div>
    <pre>
      {{ masterData }}
    </pre>
  </div>
</template>

<script>
import AppHeader from '~/components/AppHeader.vue';
import NameMaster from '~/components/MasterPage/NameMaster.vue'
import AvatarMaster from '~/components/MasterPage/AvatarMaster.vue'
export default {
  components: {
    AppHeader,
    NameMaster,
    AvatarMaster
  },
  data() {
    return {
      masterData: {},
      serverUrl: "http://localhost:3000/masters/",
      notMaster: false,
    };
  },
  async mounted() {
    try {
      const data = await this.$axios.$get(this.serverUrl + this.$route.path.substring(1));
      this.masterData = data[0];
    } catch (error) {
      console.log("ошибка", error);
      this.$router.push('/');
    }
  },

  head() {
    return {
      title: "Тату-мастер " + this.$route.path.substring(1),
      // meta: [
      //   {
      //     hid: "description",
      //     name: "description",
      //     content: this.dataHome[0]?.description,
      //   },
      // ],
    };
  },
};
</script>

<style lang="scss" scoped>
.container {
  max-width: 492px;
  margin: 0 auto;
  width: -webkit-fill-available;
}
</style>
