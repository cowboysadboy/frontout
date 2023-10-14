<template>
  <div class="name">
    <h1 class="name__h1">
      {{ first_name }} {{ nickname }} {{ last_name }}
    </h1>
  </div>
</template>
<script>
export default {
  name: "NameMaster",
  components: {},
  props: {
    first_name: '',
    last_name: '',
    nickname: ''
  },
};
</script>
<style lang="scss" scoped>
.name {
  height: 180px;

  &__h1 {
    color: #000;
    font-size: 32px;
    font-weight: 500;
  }
}
</style>

