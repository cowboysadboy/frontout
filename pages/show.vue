<template>
  <div class="wrapper">
    <app-header></app-header>
    <image-text></image-text>
    <div class="masters-list">
      <div class="masters-list__title">Примеры профилей тату-мастеров</div>
      <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore dicta eos corporis iste a quas.</p>
      <all-masters v-for="item, i in allMasters.slice(0, 3)" :key="item" :master="item"
        :class="{ 'masters-list__block': true, 'countable': i % 2 !== 0, }">
      </all-masters>
    </div>
    <app-header></app-header>
  </div>
</template>

<script>
import AppHeader from '~/components/AppHeader.vue';
import ImageText from '~/components/ShowPage/ImageText.vue';
import MasterList from '~/components/MasterList.vue';
export default {
  components: {
    AppHeader,
    ImageText,
    MasterList,
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
.wrapper {
  // background: white;
}

.masters-list {
  // background: #F8F7FF;
  color: #2f2e41;

  p {
    max-width: 75%;
    margin: 0 auto 40px;
  }

  &__title {
    max-width: 75%;
    font-size: 32px;
    font-weight: 400;
    margin: 65px auto 20px auto;
  }

  &__block {

  }

  .countable {
    margin-left: auto;
    
    // background: white;
    // border-bottom: 1px solid rgb(31, 31, 31);
    // padding: 30px 0;
  }
}
</style>
