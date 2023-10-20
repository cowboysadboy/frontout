<template>
  <div class="wrapper">
    <app-header></app-header>
    <menu-master :nickname="$route.path.split('/')[1]"></menu-master>
  </div>
</template>

<script>
import AppHeader from '~/components/AppHeader.vue';
import NameMaster from '~/components/MasterPage/NameMaster.vue'
import AvatarMaster from '~/components/MasterPage/AvatarMaster.vue'
import DescriptionMaster from '~/components/MasterPage/DescriptionMaster.vue'
import MenuMaster from '~/components/MasterPage/MenuMaster.vue'

export default {
  components: {
    AppHeader,
    NameMaster,
    AvatarMaster,
    DescriptionMaster,
    MenuMaster
  },
  data() {
    return {
      masterData: {},
      serverUrl: "masters/",
      notMaster: false,
    };
  },
  async mounted() {
    try {
      const data = await this.$axios.$get(this.serverUrl + this.$route.path.substring(1));
      this.masterData = data[0];
    } catch (error) {
      console.log("ошибка", error);
      // this.$router.push('/');
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
  max-width: 586px;
  margin: 0 auto;
  width: -webkit-fill-available;
}
</style>
