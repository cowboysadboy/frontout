<template>
  <div class="dialog">
    <div class="main">
      <p>Мастер не зарегистрирован</p>
      <p>Перейти к каталогу мастеров?</p>
      <nuxt-link to="/">Перейти</nuxt-link>
    </div>
  </div>
</template>
<script>
export default {
  name: "NotMasterDialog",
  components: {},
  props: {
    notMaster: "",
  },
};
</script>
<style>
.dialog {
  display: flex;
  justify-content: center;
  align-items: center;
  width: 100%;
  height: 100%;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  margin: auto;
  backdrop-filter: blur(8px);
  background: rgb(144 154 158 / 20%);
}
.main {
  background: white;
  padding: 20px 30px;
  border-radius: 4px;
}
</style>
