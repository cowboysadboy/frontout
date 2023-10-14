<template>
  <div class="header">
    <div class="header__logo">
      <router-link to="/" class="logo">TA2.LINK</router-link>
      <p class="description">Каталог тату-мастеров</p>
    </div>
    <div class="header__login">
      <router-link class="login-button" to="/login">Вход</router-link>
      <router-link class="login-button" to="/registration">Регистрация</router-link>
    </div>
  </div>
</template>
<style lang="scss" scoped>
.header {
  background: black;
  padding: 12px 30px;
  color: white;
  display: flex;
  justify-content: space-between;
  font-family: Inter, sans-serif;
  ;
}

.header__login {
  display: flex;
  flex-direction: column;
  align-self: center;
}

.logo {
  font-size: 32px;
  font-style: normal;
  font-weight: 400;
  text-decoration: none;
  color: white;
}

.description {
  font-size: 10px;
  margin: 0;
}

.login-button {
  font-size: 14px;
  color: white;
  text-decoration: none;
  margin: 0 0 0 auto;
}
</style>
