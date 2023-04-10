<template>
  <nuxt-link class="master" :to="master.nickname">
    <img class="master__img" :src="master.avatarLink" alt="" />
    <h2 class="master__name">
      {{ master.lastName }} {{ master.nickname }} {{ master.firstName }}
    </h2></nuxt-link
  >
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
<style>
.master {
  padding: 15px;
  margin: 20px 0;
  border: 1px solid;
}
.master__img{
  max-width: 350px;
}
</style>
