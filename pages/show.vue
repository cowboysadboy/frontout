<template>
  <div class="wrapper">
    <app-header></app-header>
    <image-text :data="infoData"></image-text>
    <banner-register></banner-register>
    <div class="masters-list">
      <div class="masters-list__title">Примеры профилей тату-мастеров</div>
      <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore dicta eos corporis iste a quas.</p>
      <all-masters v-for="item, i in allMasters.slice(2, 3)" :key="item" :master="item"
        :class="{ 'masters-list__block': true, 'countable': i % 2 !== 0, }">
      </all-masters>
    </div>
    <image-text :data="infoData2"></image-text>
    <banner-register2></banner-register2>
    <app-header></app-header>
  </div>
</template>

<script>
import AppHeader from '~/components/AppHeader.vue';
import ImageText from '~/components/ShowPage/ImageText.vue';
import MasterList from '~/components/MasterList.vue';
import BannerRegister from '~/components/ShowPage/BannerRegister.vue';
import BannerRegister2 from '~/components/ShowPage/BannerRegister2.vue';
export default {
  components: {
    AppHeader,
    ImageText,
    MasterList,
    BannerRegister,
    BannerRegister2
  },
  data() {
    return {
      infoData: [
        {
          title: 'Простое решение для сайта тату-мастера',
          img: 'image-1.png',
          p: 'Мы предлагаем удобную платформу, где вы можете зарегистрироваться и создать свою персональную страницу в интернете, специально адаптированную для услуг тату-мастеров.',
        },
        {
          title: 'Легко взаимодействуйте с клиентами',
          img: 'image-2.png',
          p: 'Наш сервис специализирован для ваших запросов и позволяет вам привлечь новых клиентов. У нас есть интегрированная форма обратной связи, через которую вы сможете легко взаимодействовать со своими клиентами.',
        },
        {
          title: 'Станьте видимыми в поисковых системах',
          img: 'image-3.png',
          p: 'Одна из особенностей нашего сервиса - возможность создать презентационную интернет-страницу, которая будет привлекать больше клиентов. Мы предоставляем оптимизацию SEO, что позволяет вам хорошо ранжироваться в поисковых системах. Таким образом, вы получите больше видимости и привлечете больше клиентов.',
        },
        {
          title: ' Удобство для ваших клиентов',
          img: 'image-4.png',
          p: 'Адрес вашей презентационной страницы будет SEO-адаптированным и может включать в себя ваш псевдоним тату-мастера. Это обеспечивает удобство для ваших клиентов, которые могут быстро и легко найти вас в интернете.',
        },
        {
          title: 'Простота использования и эффективность',
          img: 'image-5.png',
          p: 'Присоединяйтесь к нашему интернет-сервису и расширьте свой клиентский круг! Мы предлагаем простоту использования и эффективность, чтобы помочь вам развить свой бизнес в тату-сфере.',
        },
      ],
      infoData2: [
        {
          title: 'Зарегистрируйся',
          img: 'image-1.png',
          p: 'У нас простая регистрация! Введите логин, e-mail и пароль и перейдите к заполнению профиля',
        },
        {
          title: 'Заполни профиль',
          img: 'image-2.png',
          p: 'Добавь фото своего портфолио и описание услуг. Заполните свой график работы и время свободное для записи',
        },
        {
          title: 'Наслаждайся',
          img: 'image-3.png',
          p: 'Получи свою тату-страницу и приводи клиентов',
        },
      ],
      allMasters: [],
      serverUrl: "masters",
    };
  },
  mounted() {
    console.log(this.$route.path.substring(1));
    try {
      this.$axios.$get(this.serverUrl).then((data) => {
        if (data) {
          this.allMasters = data;
        }
      });
    } catch (error) {
      console.log("error", error);
    }
  },
};
</script>

<style lang="scss" scoped>
.wrapper {
  // background: white;
}

.masters-list {
  // background: #F8F7FF;
  color: #2f2e41;

  p {
    max-width: 75%;
    margin: 0 auto 40px;
  }

  &__title {
    max-width: 75%;
    font-size: 32px;
    font-weight: 400;
    margin: 65px auto 20px auto;

    @media screen and (max-width:420px) {
      font-size: 25px;
    }
  }

  &__block {}

  .countable {
    margin-left: auto;
    // background: rgb(176, 217, 241);
    // border-bottom: 1px solid rgb(31, 31, 31);
    // padding: 30px 0;
  }
}
</style>
