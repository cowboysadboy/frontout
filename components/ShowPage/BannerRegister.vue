<template>
  <div class="banner-register">
    <div class="container">
      <div class="banner-register__title">
        Регистрируйся сейчас
      </div>
      <div class="banner-register__descr">
        И получи бесплатное обслуживание навсегда
      </div>
      <nuxt-link to="registration" class="banner-register__link">
        Регистрация
      </nuxt-link>
    </div>
  </div>
</template>

<style lang="scss" scoped>
.banner-register {
  margin-top: 30px;
  // background-image: url('~/assets/images/show-page/bg-register-4.png');
  background-color: #2f2e41;
  background-position: inherit;
  background-repeat: space;
  /* цвет фона */
  // opacity: 0.9;
  /* прозрачность картинки */

  .container {
    width: fit-content;
    margin: 0 auto;
    display: flex;
    flex-direction: column;
    align-items: center;
    color: white;
    background: #3f3d56;
    padding: 30px 25px;
  }

  &__title {
    font-size: 24px;
    font-weight: 400;
    margin-bottom: 10px;
  }

  &__descr {
    font-size: 14px;
    font-weight: 400;
    text-align: center;
   
  }

  &__link {
    background: #5fd65b;
    color: white;
    -webkit-text-decoration: none;
    text-decoration: none;
    font-size: 14px;
    font-weight: 400;
    padding: 8px 40px;
    margin-top: 20px;
  }
}
</style>

