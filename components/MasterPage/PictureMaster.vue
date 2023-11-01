<template>
  <div class="picture">
    <img v-for="item in images" :key="item.url" :src="item.url" alt="">
  </div>
</template>
<script>
export default {
  name: "NameMaster",
  components: {},
  props: {
    first_name: '',
    last_name: '',
    nickname: ''
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
.picture {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;

  img {
    object-fit: cover;
    width: 32%;
    height: auto;
    max-height: 200px;
    margin-bottom: 2%;

    @media screen and (max-width: 460px) {
      // width: 49%;
      width: 32%;
    }
  }
}
</style>

