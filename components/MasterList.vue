<template>
  <div class="masters">
    <div v-for="elem, i  in data" :key="elem" :class="{ 'master-list': true, 'countable': i % 2 !== 0, }">
      <nuxt-link class="container" :to="elem.nickname">
        <h3 class="master-list__h3">{{ elem.first_name }} {{ elem.nickname }}</h3>
        <p class="master-list__p">Опыт: 100 лет; Город:{{ elem.city }}</p>
        <div class="master-list__img">
          <img v-if="elem.avatar_link" class="master__img" width="100px" height="100px" :src="elem.avatar_link"
            alt="avatar">
          <img v-else class="master__img" width="100px" height="100px" src="~/assets/images/master-page/default-image.svg"
            alt="avatar">
        </div>
      </nuxt-link>
    </div>
  </div>
</template>
<script>
export default {
  name: "MasterList",
  components: {
  },
  props: {
    data: []
  },
  data() {
    return {
    };
  },
};
</script>
<style lang="scss" scoped>
.masters {
  width: 100%;

  .container {
    width: 65% !important;
    margin: 0 auto !important;
  }

  .countable {
    background: #F8F7FF;
  }

  .master-list {
    background: #F8F7FF;
    padding: 20px 0;
    margin: 0 0 20px 0;
    color: #29292D;

    &__h3 {
      font-size: 20px;
      font-weight: 600;
    }

    &__img {
      .master__img {
        object-fit: cover;
        margin-right: 15px;
      }

    }
  }
}
</style>

