<template>
  <div class="wrapper">
    <div v-for="elem, i  in data" :key="elem" :class="{ 'img-text': true, 'countable': i % 2 !== 0, }">
      <div class="container">
        <div class="img-text__title">{{ elem.title }}</div>
        <div class="img-text__descr">
          <p class="img-text__p">{{ elem.p }}</p>
          <img :src="require(`~/assets/images/show-page/` + elem.img)" :alt="elem.title" class="img-text__img">
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  name: "ImageText",
  components: {
  },
  data() {
    return {
      data: [
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
      ]
    };
  },
};
</script>
<style lang="scss" scoped>
.wrapper {
  .img-text {
    // background: white;
    .container {
      color: #2F2E41;
      max-width: 75%;
      margin: 60px auto;
    }

    &__descr {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      align-items: center;

      img {
        height: fit-content;
        width: auto;
      }

    }

    &__title {
      font-size: 32px;
      font-weight: 400;
      margin-bottom: 20px;
    }

    &__p {
      font-size: 16px;
      font-weight: 400;
      margin: 10px 30px;
      width: 60%;

      @media screen and (max-width:820px) {
        margin: 10px 0px 30px;
        width: 100%;
      }
    }
  }

  .countable {
    background: #F8F7FF;

    .img-text__descr {
      flex-direction: row-reverse;
    }
  }
}
</style>

