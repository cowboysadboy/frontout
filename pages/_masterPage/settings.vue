<template>
  <div class="wrapper">
    <app-header></app-header>
    <menu-master :nickname="$route.path.split('/')[1]"></menu-master>
    <div class="container">
      <all-settings></all-settings>
    </div>
  </div>
</template>

<script>
import AppHeader from '~/components/AppHeader.vue';
import NameMaster from '~/components/MasterPage/NameMaster.vue'
import AvatarMaster from '~/components/MasterPage/AvatarMaster.vue'
import DescriptionMaster from '~/components/MasterPage/DescriptionMaster.vue'
import MenuMaster from '~/components/MasterPage/MenuMaster.vue'
import AllSettings from '~/components/MasterPage/SettingsPage/AllSettings.vue'

export default {
  components: {
    AppHeader,
    NameMaster,
    AvatarMaster,
    DescriptionMaster,
    MenuMaster,
    AllSettings
  },
  data() {
    return {
      masterData: {},
      serverUrl: "masters/",
      notMaster: false,
    };
  },
  mounted() {

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
.wrapper {
  background: rgb(255, 255, 255);
  background: linear-gradient(90deg, rgba(255, 255, 255, 1) 46%, rgba(253, 250, 250, 1) 46%, rgba(253, 250, 250, 1) 87%, rgba(255, 255, 255, 1) 87%);
}

.container {
  max-width: 586px;
  margin: 0 auto;
  width: -webkit-fill-available;
  padding: 0 30px;
}
</style>
