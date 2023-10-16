<template>
  <nuxt-link class="master" :to="master.nickname">
    <img v-if="master.avatar_link" class="master__img" width="144px" height="144px" :src="master.avatar_link"
      alt="avatar">
    <img v-else class="master__img" src="~/assets/images/master-page/default-image.svg" alt="avatar">
    <div class="master__descr">
      <h2 class="descr-name">
        {{ master.lastName }} {{ master.nickname }} {{ master.firstName }}
      </h2>
      <p class="descr-p">{{ master.description }}</p>
    </div>
  </nuxt-link>
</template>
<script>
export default {
  name: "AllMasters",
  components: {},
  props: {
    master: {
      type: Object,
      default() {
        return {};
      },
    },
  },
};
</script>
<style lang="scss" scoped>
.master {
  display: flex;
  flex-wrap: wrap;
  padding: 12px;
  margin: 5px 30px;
  background: white;
  border: 1px solid rgb(196, 192, 192);
  text-decoration: none;
  color: black;

  &__img {
    object-fit: cover;
    margin-right: 15px;
  }
}
</style>
