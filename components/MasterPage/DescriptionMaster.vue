<template>
  <div class="description">
    <p class="description__p">
      {{ description }}
    </p>
  </div>
</template>
<script>
export default {
  name: "DescriptionMaster",
  components: {},
  props: {
    description: ''
  },
};
</script>
<style lang="scss" scoped>
.description {
  &__p {
    font-size: 14px;
    font-style: normal;
    font-weight: 500;
  }
}
</style>

