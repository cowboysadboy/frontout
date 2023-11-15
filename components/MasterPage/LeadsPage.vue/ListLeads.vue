<template>
  <div class="wrapper">
    <div class="master">
      <div class="master__descr">
        <h3 class="descr-name">
          {{ lead.cliet_name }}
        </h3>
        <p>Номер: {{ lead.client_phone }}</p>
        <div class="descr-p">
          <ul>
            <li>Ширина: {{ lead.tatoo_width }};</li>
            <li>Высота: {{ lead.tatoo_height }}</li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  name: "ListLeads",
  components: {},
  props: {
    lead: {
    }
  },
  data() {
    return {
    };
  },
};
</script>
<style lang="scss" scoped>
.wrapper {
  .master {
    color: #2f2e41;
    display: flex;
    padding: 12px;
    text-decoration: none;
    color: #29292D;
    background: #F8F7FF;
    margin: 20px 0;

    &__descr {
      display: flex;
      flex-direction: column;

      ul {
        margin: 0 auto;
        padding: 0;
        display: flex;
        flex-wrap: wrap;
        font-size: 13px;
        list-style-type: none;
      }

      li {
        margin-right: 5px;
      }

      .descr-name {
        margin: 0;
        font-size: 32px;
      }

      max-width: 75%;
      width: -webkit-fill-available;
      margin: 0 auto;
    }
  }
}
</style>

