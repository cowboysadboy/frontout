<template>
  <nuxt-link class="master" :to="master.nickname">
    <img class="master__img" :src="master.avatar_link" alt="" />
    <h2 class="master__name">
      {{ master.lastName }} {{ master.nickname }} {{ master.firstName }}
    </h2>
    <p>{{ master.description }}</p>
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
  padding: 15px 45px;
  margin: 20px 45px;
  background: white;
  border: 1px solid black;
  text-decoration: none;
  color: black;

  &__img {
    max-width: 350px;
  }
}
</style>
