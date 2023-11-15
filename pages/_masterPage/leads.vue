<template>
  <div class="wrapper">
    <app-header></app-header>
    <menu-master :nickname="$route.path.split('/')[1]"></menu-master>
    <div v-for="lead in masterData" class="list-lead" :key="lead">
      <list-leads :lead="lead"></list-leads>
    </div>
  </div>
</template>

<script>
import AppHeader from '~/components/AppHeader.vue';
import NameMaster from '~/components/MasterPage/NameMaster.vue'
import AvatarMaster from '~/components/MasterPage/AvatarMaster.vue'
import DescriptionMaster from '~/components/MasterPage/DescriptionMaster.vue'
import MenuMaster from '~/components/MasterPage/MenuMaster.vue'
import ListLeads from '~/components/MasterPage/LeadsPage.vue/ListLeads.vue';

export default {
  components: {
    AppHeader,
    NameMaster,
    AvatarMaster,
    DescriptionMaster,
    MenuMaster,
    ListLeads
  },
  data() {
    return {
      masterData: [],
      serverUrl: "leads/",
      notMaster: false,
    };
  },
  async mounted() {
    try {
      const data = await this.$axios.$get(this.serverUrl + this.$route.path.split('/')[1]);
      this.masterData = data;
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
