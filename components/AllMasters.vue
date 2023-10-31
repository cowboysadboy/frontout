<template>
  <nuxt-link class="master" :to="master.nickname">

    <div class="master__descr">
      <h3 class="descr-name">
        {{ master.first_name }} {{ master.nickname }}
      </h3>
      <div class="descr-p">
        <ul>
          <li>Город: Изумрудный</li>
          <li>Опыт работы: 10 лет</li>
        </ul>
      </div>
      <div class="img-container">
        <img v-if="master.avatar_link" class="master__img" width="100px" height="100px" :src="master.avatar_link"
          alt="avatar">
        <img v-else class="master__img" width="100px" height="100px" src="~/assets/images/master-page/default-image.svg"
          alt="avatar">
        <img class="master__img" v-for="item in images.slice(0, 3)" :key="item.url" width="100px" height="100px"
          :src="item.url" alt="">
      </div>
    </div>
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
  data() {
    return {
      images: [
        { url: 'https://inkppl.com/upload/article/fan-wu-tattoo-06.5d692041afa495fdbed1c02b32e39136.jpg' },
        { url: 'https://cs8.pikabu.ru/post_img/big/2017/02/22/9/1487774016194926643.jpg' },
        { url: 'https://st.peopletalk.ru/wp-content/uploads/2022/10/209013020_868970280634409_2386534388974220141_n-e1665582698887-640x508.jpg' },
        { url: 'https://artofpain.ru/sites/default/files/field/image/znachenie-t.jpg' },
        { url: 'https://cs8.pikabu.ru/post_img/big/2017/02/22/9/1487774016194926643.jpg' },
        { url: 'https://st.peopletalk.ru/wp-content/uploads/2022/10/209013020_868970280634409_2386534388974220141_n-e1665582698887-640x508.jpg' },
        { url: 'https://st.peopletalk.ru/wp-content/uploads/2022/10/209013020_868970280634409_2386534388974220141_n-e1665582698887-640x508.jpg' },
        { url: 'https://cs8.pikabu.ru/post_img/big/2017/02/22/9/1487774016194926643.jpg' },
        { url: 'https://albione.ru/upload/iblock/b72/b7287a571b8d84892844d2050f60647a.jpg' },
      ]
    };
  },
};
</script>
<style lang="scss" scoped>
.master {
  color: #2f2e41;
  display: flex;
  padding: 12px;
  margin: 0 auto 30px;
  // background: #f8f7ff;
  text-decoration: none;
  color: #29292D;

  &__descr {
    display: flex;
    flex-direction: column;
    align-items: center;

    ul {
      margin: 0 auto;
      padding: 0;
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      font-size: 13px;
      list-style-type: none;
      max-width: 90%;
    }
    li{
      margin: 0 5px; 
    }

    .descr-name {
      margin: 0;
    }

    max-width: 75%;
    width: -webkit-fill-available;
    margin: 0 auto;

    .img-container {
      display: flex;
      flex-wrap: wrap;
      margin-top: 10px;
      justify-content: center;
    }
  }

  &__img {
    object-fit: cover;
    margin-right: 5px;
    margin-bottom: 5px;
  }
}</style>
