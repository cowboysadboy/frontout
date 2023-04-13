<template>
  <div class="swiper-container">
    <div class="swiper-wrapper">
      <div v-for="slide in slides" :key="slide.id" class="swiper-slide">
        <img @click="openModal(slide.id)" :id="slide.id" :src="slide.image" />
      </div>
      <div class="swiper-slide"></div>
    </div>
    <div
      @click="hideModal"
      class="swiper__modal"
      :class="{ no_modal: !showModal }"
    ></div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      slides: [
        {
          id: 1,
          image:
            "https://aif-s3.aif.ru/images/030/795/f6e89b2b86044214a639a5c5907d7ca8.png",
        },
        {
          id: 2,
          image:
            "https://mudrila.ru/img/2022/07/19/26387_neobychnye_i_interes_8.jpg",
        },
        {
          id: 3,
          image:
            "https://10.img.avito.st/image/1/1.de3rqba52QTdABsBjfhPxSkK3w5fitHGWgrbAFcA0wY.hWB-M8w6jc8qpUJG2lDF1iP9i8nHJVlstkDwwShIdcQ",
        },
        {
          id: 4,
          image:
            "https://www.factroom.ru/facts/wp-content/uploads/2012/05/diabetic-tattoo-idea-550x378.jpg",
        },
        {
          id: 5,
          image:
            "https://www.maruha-studio.ru/wp-content/uploads/2016/08/tatu_krov-i-rana-5.jpg",
        },
      ],
      swiper: null,
      showModal: false,
    };
  },
  mounted() {
    window.addEventListener("scroll", this.handleScroll);

    this.swiper = new Swiper(".swiper-container", {
      wrapperClass: "swiper-wrapper",
      slideClass: "swiper-slide",
      slidesPerView: 3,
    });
  },
  beforeDestroy() {
    window.removeEventListener("scroll", this.handleScroll);
    if (this.swiper) {
      this.swiper.destroy();
    }
  },
  methods: {
    handleScroll() {
      if (this.showModal) {
        this.showModal = false;
      }
    },
    hideModal() {
      this.showModal = false;
    },
    openModal(id) {
      this.showModal = true;
      const modal = document.querySelector(".swiper__modal");
      const image = document.getElementById(id).src;
      modal.innerHTML = '<img src="' + image + '" alt="">';
      // modal.appendChild(image)
      console.log(image);
    },
  },
};
</script>

<style>
.swiper-container {
  overflow: hidden;
  height: 100%;
  width: 100%;
  padding-bottom: 10px;
}
.swiper-slide {
  text-align: center;
  font-size: 18px;
  background-color: rgb(255, 255, 255);
  display: flex;
  justify-content: center;
  align-items: center;
  width: 58%;
  height: auto !important;
  overflow: hidden;
  max-height: 250px;
  margin-right: -5.6%;
  margin-left: 6.6%;
  border-radius: 4px;
}
@media screen and (max-width: 422px) {
  .swiper-slide {
    margin-right: -2.6%;
    margin-left: 19.6px;
  }
}
@media screen and (max-width: 668px) and (min-width: 422px) {
  .swiper-slide {
    margin-right: -6.6%;
    margin-left: 49.6px;
  }
}
.swiper-slide img {
  width: 100%;
  object-fit: cover;
  width: 100%;
  height: 100%;
  object-fit: cover;
  cursor: pointer;
}
.swiper__modal {
  position: fixed;
  z-index: 9;
  display: flex;
  justify-content: center;
  align-items: center;
  width: 100%;
  height: 100vh;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  margin: auto;
  backdrop-filter: blur(8px);
  background: rgb(144 154 158 / 20%);
}

.swiper__modal img {
  max-width: 400px;
}

.no_modal {
  display: none;
}

@media screen and (max-width: 420px) {
  .swiper__modal img {
    max-width: 280px;
  }
}
</style>
