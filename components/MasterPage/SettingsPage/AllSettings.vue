<template>
  <div class="all-settings">
    <!-- <div class="nickname-setting">
      <div class="type-value">Никнейм</div>
      <div class="current-value">{{ masterData.nickname }}</div>
      <button class="open-button" @click="openModal('nickname')">Изменить</button>
    </div> -->
    <div class="nickname-setting">
      <div class="type-value">Имя</div>
      <div class="current-value">{{ masterData.first_name }}</div>
      <button class="open-button" @click="openModal('first_name')">Изменить</button>
    </div>
    <div class="nickname-setting">
      <div class="type-value">Аватар</div>
      <img v-if="masterData.avatar_link" width="154px" height="154px" class="avatar-setting" :src="masterData.avatar_link"
        alt="avatar">
      <img v-else width="154px" height="154px" class="avatar-setting" src="~/assets/images/master-page/default-image.svg"
        alt="avatar">
      <button class="open-button" @click="openModal('avatar_link')">Изменить</button>
    </div>
    <div class="nickname-setting">
      <div class="type-value">Фамилия</div>
      <div class="current-value">{{ masterData.last_name }}</div>
      <button class="open-button" @click="openModal('last_name')">Изменить</button>
    </div>
    <div class="nickname-setting">
      <div class="type-value">Описание</div>
      <div style="font-size: 15px" class="current-value">{{ masterData.description }}</div>
      <button class="open-button" @click="openModal('description')">Изменить</button>
    </div>
    <div v-if="showButton" class="all-settings__modal">
      {{ typeField }}
      <textarea v-if="typeField === 'description'" name="comment" v-model="inputField" required></textarea>
      <input v-else type="text" v-model="inputField" required>
      <div class="button">
        <button @click="changeValue()" class="modal-button ok">Изменить</button>
        <button @click="canselChange()" class="modal-button cansel">Отмена</button>
      </div>
    </div>
    <button @click="sendChanged()" class="send-changed">Сохранить изменения</button>
  </div>
</template>
<script>
export default {
  name: "AllSettings",
  components: {
  },
  data() {
    return {
      typeField: '',
      inputField: '',
      showButton: false,
      username: 0,
      serverUrl: "http://localhost:3000/masters/",
      masterData: {}
    };
  },
  methods: {
    sendChanged() {
      this.$axios
        .patch("http://localhost:3000/masters/" + this.$route.path.split('/')[1], this.masterData)
        .then((response) => {
          // Обработка успешного ответа
          console.log(response);
        }
        ).catch((error) => {
          console.log(error.response.data);
        });
    },
    openModal(typeField) {
      this.showButton = true
      this.typeField = typeField
      if (this.typeField === 'first_name') {
        this.inputField = this.masterData.first_name
      }
      if (this.typeField === 'avatar_link') {
        this.inputField = this.masterData.avatar_link
      }
      if (this.typeField === 'last_name') {
        this.inputField = this.masterData.last_name
      }
      if (this.typeField === 'description') {
        this.inputField = this.masterData.description
      }
    },
    changeValue() {
      if (this.typeField === 'first_name') {
        this.masterData.first_name = this.inputField
      }
      if (this.typeField === 'avatar_link') {
        this.masterData.avatar_link = this.inputField
      }
      if (this.typeField === 'last_name') {
        this.masterData.last_name = this.inputField
      }
      if (this.typeField === 'description') {
        this.masterData.description = this.inputField
      }
      this.showButton = false
    },
    canselChange() {
      this.showButton = false
    }
  },
  async mounted() {
    try {
      const data = await this.$axios.$get(this.serverUrl + this.$route.path.split('/')[1]);
      this.masterData = data[0];
      console.log(this.serverUrl + this.$route.path.split('/')[1])
    } catch (error) {
      console.log("ошибка", error);
      this.$router.push('/');
    }
  },
};
</script>
<style lang="scss" scoped>
.all-settings {
  position: relative;
  display: flex;
  flex-direction: column;

  .send-changed {
    border: none;
    color: #ffffff;
    background: #FF2828;
    padding: 10px 30px;
    max-width: 270px;
    margin: 20px auto;
  }

  .nickname-setting {
    margin: 20px 0;
    display: flex;
    flex-direction: column;

    .avatar-setting {
      object-fit: cover;
      margin: 10px 0 20px;
    }

    .type-value {
      font-size: 12px;
      font-weight: 300;
    }

    .current-value {
      font-size: 32px;
      font-weight: 500;
      margin-bottom: 15px;
    }
  }

  .open-button {
    width: fit-content;
    background: #030303;
    border: none;
    color: #ffffff;
    font-size: 15px;
    font-weight: 400;
    padding: 5px 60px;
    cursor: pointer;
  }

  &__modal {
    position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    display: flex;
    background: #ffffff;
    border: 1px solid #b2a7a7;
    flex-direction: column;
    padding: 20px 47px;
    justify-content: center;
    width: auto;
    height: auto;
  }
}
</style>

