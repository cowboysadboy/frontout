<template>
  <div class="wrapper">
    <app-header></app-header>
    <menu-master :nickname="masterData.nickname"></menu-master>
    <div class="top-container">
      <div class="top-background">
      </div>
      <div class="container">
        <name-master :first_name="masterData.first_name" :last_name="masterData.last_name"
          :nickname="masterData.nickname"></name-master>
        <avatar-master :avatar_link="masterData.avatar_link" :city="masterData.city"
          :work_expirience="masterData.work_expirience"></avatar-master>
        <description-master :description="masterData.description"></description-master>
      </div>
    </div>
    <div class="container">
      <picture-master></picture-master>
    </div>
    <div class="form-container">
      <form-master></form-master>
      <social-links></social-links>
    </div>

    <app-header></app-header>
  </div>
</template>

<script>
import AppHeader from '~/components/AppHeader.vue';
import NameMaster from '~/components/MasterPage/NameMaster.vue'
import AvatarMaster from '~/components/MasterPage/AvatarMaster.vue'
import DescriptionMaster from '~/components/MasterPage/DescriptionMaster.vue'
import PictureMaster from '~/components/MasterPage/PictureMaster.vue'
import MenuMaster from '~/components/MasterPage/MenuMaster.vue'
import FormMaster from '~/components/MasterPage/FormMaster.vue'
import SocialLinks from '~/components/MasterPage/SocialLinks.vue'

export default {
  components: {
    AppHeader,
    NameMaster,
    AvatarMaster,
    DescriptionMaster,
    MenuMaster,
    PictureMaster,
    FormMaster,
    SocialLinks
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
.top-container {
  width: 100%;
  // background: aliceblue;
  padding: 60px 0;
  // margin-top: -30px;
  margin-bottom: -60px;
}

.top-background {
  padding: 129px;
  background: #f8f7ff;
  margin-bottom: -215px;
  margin-top: -60px;
  // background-image: url('https://media.istockphoto.com/id/154200278/vector/skulls-and-roses-background.jpg?s=612x612&w=0&k=20&c=tpH7mB1lQs47BceF61t0oXrR_3QWkmzFIwQRNVcliJw=');
}

.form-container {
  //background: #F8F7FF;
  width: 100%;
}

.container {
  max-width: 586px;
  margin: 0 auto;
  width: -webkit-fill-available;
  padding: 0 20px;
}
</style>
