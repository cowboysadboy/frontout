<template>
  <div class="wrapper">
    <header-master :masterData="masterData"></header-master>
    <gallery-slider></gallery-slider>
    <not-master-dialog v-if="notMaster"></not-master-dialog>
  </div>
</template>

<script>
import HeaderMaster from "~/components/HeaderMaster.vue";
import NotMasterDialog from "~/components/NotMasterDialog.vue";
import GallerySlider from "~/components/GallerySlider.vue";

export default {
  components: {
    HeaderMaster,
    NotMasterDialog,
    GallerySlider
  },
  data() {
    return {
      masterData: {},
      serverUrl: "http://cowboysadboy.store:8180/api/Masters/GetByNickname",
      notMaster: false,
    };
  },
  mounted() {
    console.log(this.$route.path.substring(1));
    try {
      this.$axios
        .$get(this.serverUrl, {
          params: {
            nickname: this.$route.path.substring(1),
          },
        })
        .then((data) => {
          if (data.value) {
            this.masterData = data.value;
          } else {
            this.notMaster = true;
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
</style>
