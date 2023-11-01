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
  props:{
    data:[]
  },
  data() {
    return {
      
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
      @media screen and (max-width:420px) {
        font-size: 25px;
      }

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

