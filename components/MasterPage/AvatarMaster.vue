<template>
  <div class="avatar">
    <img class="avatar__img" :src="avatar_link" alt="">
    <div class="avatar__data">
      <p class="data-text">{{ city }}</p>
      <p class="data-text">{{ work_expirience }}</p>
    </div>
  </div>
</template>
<script>
export default {
  name: "AvatarMaster",
  components: {},
  props: {
    avatar_link: '',
    city: '',
    work_expirience: 0,
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

