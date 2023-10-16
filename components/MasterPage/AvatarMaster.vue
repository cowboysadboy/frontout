<template>
  <div class="avatar">
    <img v-if="avatar_link" class="avatar__img" width="154px" height="154px" :src="avatar_link" alt="avatar">
    <img v-else class="avatar__img" width="154px" height="154px" src="~/assets/images/master-page/default-image.svg"
      alt="avatar">
    <div class="avatar__data">
      <p class="data-text">Город: {{ city }}</p>
      <p class="data-text">Опыт: {{ work_expirience }} лет</p>
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
.avatar {
  display: flex;
  flex-wrap: wrap;

  &__img {
    object-fit: cover;
    margin-right: 25px;
  }

  &__data {
    .data-text {
      font-size: 14px;
      font-weight: 500;
      margin: 0 0 10px 0;
    }
  }
}
</style>

