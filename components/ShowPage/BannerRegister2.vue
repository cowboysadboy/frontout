<template>
  <div class="banner-register">
    <div class="container">
      <div class="banner-register__title">
        Остались вопросы?
      </div>
      <div class="banner-register__descr">
        Напиши нам на @sraka-tattoo или переходи к регистрации по ссылке
      </div>
      <nuxt-link to="registration" class="banner-register__link">
        Регистрация
      </nuxt-link>
    </div>
  </div>
</template>

<style lang="scss" scoped>
.banner-register:after {
  background-image: url('~/assets/images/show-page/girl-2.png');
}

.banner-register:before {
  background-image: url('~/assets/images/show-page/girl-1.png');
}

.banner-register {
  padding: 60px 0;
  background: #F8F7FF;
  // background-image: url('~/assets/images/show-page/bg-register-4.png');
  // background-color: #2f2e41;
  // background-position: inherit;
  // background-repeat: space;
  /* цвет фона */
  // opacity: 0.9;
  /* прозрачность картинки */

  .container {
    max-width: 70%;
    position: relative;
    width: fit-content;
    margin: 0 auto;
    display: flex;
    flex-direction: column;
    align-items: center;
    color: #2F2E41;
    background: #ffffff;
    padding: 30px 25px;
  }

  .container:before {
    position: absolute;
    left: -10%;
    top: 40%;
    content: url(~/assets/images/show-page/girl-1.png);
  }

  .container::after {
    position: absolute;
    right: -10%;
    top: 40%;
    content: url(~/assets/images/show-page/girl-2.png);
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
    max-width: 300px;

  }

  &__link {
    background: #FF6584;
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

