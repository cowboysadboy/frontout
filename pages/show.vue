<template>
  <div class="wrapper">
    <app-header></app-header>
    <image-text></image-text>
    <app-header></app-header>
  </div>
</template>

<script>
import AppHeader from '~/components/AppHeader.vue';
import ImageText from '~/components/ShowPage/ImageText.vue';
export default {
  components: {
    AppHeader,
    ImageText,
  },
  data() {
    return {
    };
  },
  mounted() {
  },
};
</script>

<style lang="scss" scoped></style>
