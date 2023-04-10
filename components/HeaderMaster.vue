<template>
  <div class="avatar">
    <div class="avatar__bg"></div>
    <div class="avatar__img container">
      <div class="img-container">
        <img :src="masterData.avatarLink" alt="avatar" />
      </div>
      <div class="avatar__position">
        <span class="city">{{ masterData.city }}</span>
      </div>
    </div>
    <div class="avatar__name container">
      <h1>
        {{ masterData.firstName }} {{ masterData.nickname }}
        {{ masterData.lastName }}
      </h1>
      <p>
        Lorem ipsum dolor sit amet consectetur adipisicing elit. Lorem ipsum
        dolor sit amet, consectetur adipisicing elit. Dignissimos, nihil?
      </p>
    </div>
  </div>
</template>
<script>
export default {
  name: "HeaderMaster",
  components: {},
  props: {
    masterData: {
      type: Object,
      default() {
        return {};
      },
    },
  },
};
</script>
<style>
h1 {
  margin: 10px 0;
}
.avatar__bg {
  width: 100%;
  height: 150px;
  /* border-top-left-radius: 4px;
  border-top-right-radius: 4px; */
  background-color: #90d4e7;
  background-position: center;
  background-size: contain;
}
.avatar__img {
  margin-top: -85px !important;
  display: flex;
  justify-content: space-between;
  flex-wrap: wrap;
}

.img-container {
  width: 120px;
  border: 5px solid white;
  width: 170px;
  height: 170px;
  border-radius: 90px;
  overflow: hidden;
}
.avatar__img img {
  width: 100%;
  height: 100%;
  object-fit: cover;
}
.avatar__position {
  display: flex;
  justify-content: flex-end;
  align-items: center;
  flex-wrap: wrap;
  font-size: 12px;
  font-weight: 600;
  margin-top: 25px;
}

.avatar__position span {
  margin: 1px 5px;
}
p {
  font-size: 15px;
  color: rgb(61, 62, 63);
  margin: 10px 0;
  padding-bottom: 20px;
}
.container {
  margin: 0 50px;
}
@media screen and (max-width: 425px) {
  .container {
    margin: 0 20px;
  }
}
</style>
