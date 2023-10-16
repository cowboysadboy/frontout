<template>
  <div class="menu">
    <router-link class="menu__link" :to="'/' + nickname">Профиль</router-link>
    <router-link class="menu__link" :to="'/' + nickname + '/settings'">Настройки</router-link>
    <router-link class="menu__link" :to="'/' + nickname + '/leads'">Заявки</router-link>
  </div>
</template>
<script>
export default {
  name: "MenuMaster",
  components: {},
  props: {
    nickname: ''
  }
};
</script>
<style lang="scss" scoped>
.menu {
  height: 46px;
  background: #D9D9D9;
  padding: 0 30px;
  display: flex;
  margin-bottom: 30px;

  &__link {
    text-decoration: none;
    font-size: 15px;
    font-style: normal;
    font-weight: 400;
    display: flex;
    align-items: center;
    height: 100%;
    color: black;
    padding: 0 15px;
    display: flex;
    justify-content: center;

  }
}
</style>

