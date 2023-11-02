<template>
  <div class="wrapper-social">
    <div class="social">
      <div v-for="elem, i in links" :key="i" class="social__elem">
        <a class="social__link" :href="elem.url">{{ elem.name }}</a>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  name: "SocialLinks",
  components: {},
  props: {
    SocialLinks: [],
  },
  data() {
    return {
      links: [
        {
          name: 'Instagram',
          url: ''
        },
        {
          name: 'VK',
          url: ''
        },
        {
          name: 'Telegram',
          url: ''
        },
      ]
    };
  },
};
</script>
<style lang="scss" scoped>
.social {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-around;
  margin: 30px auto 60px;
  max-width: 328px;
  width: -webkit-fill-available;

  &__link {
    color: #29292D;
    font-weight: 600;
  }
}
</style>

