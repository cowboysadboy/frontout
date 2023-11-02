<template>
  <div class="form-container">
    <H3 class="h1">
      Связаться со мной
    </H3>
    <form @submit.prevent="submitForm" class="form">
      <div class="form__connection">
        <div class="connection cliet_name">
          <label class="field-description" for="cliet_name">Имя</label>
          <input type="text" id="cliet_name" name="cliet_name" v-model="user.cliet_name" required />
        </div>
        <div class="connection email">
          <label class="field-description" for="client_phone">Телефон</label>
          <input type="number" id="client_phone" name="client_phone" v-model="user.client_phone" required />
        </div>
        <label class="field-description size-text" for="text">Введите размеры предполагаемой татуировки (см)</label>
        <div class="connection size">
          <div class="size-container"> <label class="field-description" for="tatoo_width">Ширина (см)</label>
            <input type="number" id="tatoo_width" name="tatoo_width" v-model="user.tatoo_width" required />
          </div>
          <div class="size-container"> <label class="field-description" for="tatoo_height">Высота (см)</label>
            <input type="number" id="tatoo_height" name="tatoo_height" v-model="user.tatoo_height" required />
          </div>
        </div>
        <div v-if="completed" class="connection error">
          {{ completed }}!!!!
        </div>
        <div v-if="error" class="connection error">
          {{ error }}!!!!
        </div>
      </div>
      <div class="form__footer">
        <button type="submit">Отправить</button>
      </div>
    </form>
  </div>
</template>
<script>
export default {
  props: {
    masterData: {
      type: Object,
      default() {
        return {};
      },
    },
  },
  data() {
    return {
      error: '',
      completed: '',
      user: {
        cliet_name: '',
        client_phone: '',
        tatoo_width: '',
        tatoo_height: '',
      },
    };
  },
  mounted() {

  },

  methods: {
    submitForm() {
      const data = {
        master_nickname: this.$route.path.substring(1),
        cliet_name: this.user.cliet_name,
        client_phone: this.user.client_phone,
        tatoo_width: this.user.tatoo_width,
        tatoo_height: this.user.tatoo_height,
      }
      this.error = ''
      // Отправка POST-запроса с помощью $http.post()
      this.$axios
        .post("lead", data)
        .then((response) => {
          // Обработка успешного ответа
          console.log(response);
          this.completed = response.data
          console.log(response.data)
        }
        ).catch((error) => {
          console.log(error.response.data);
          this.error = error.response.data
        });
    },
  },
};
</script>

<style lang="scss" scoped>
.form-container {
  margin: 0 auto;
  max-width: 282px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  // padding-top: 20px;
  color: #29292D;
}

.size-text {
  font-size: 13px;
  text-align: center;
}

.size {
  flex-direction: row !important;
  justify-content: space-between;

  input {
    // max-width: 100%;
  }

  &-container {
    width: 45%;
    margin-top: 13px;
    display: flex;
    flex-direction: column;
  }
}

.connection {
  display: flex;
  flex-direction: column;
}

.field-description {
  font-size: 13px;
  font-style: normal;
  font-weight: 400;
}

.h1 {
  font-size: 28px;
  font-style: normal;
  font-weight: 500;
  margin: 0 auto 15px;
  color: #363639;
}

input {
  border: 1px solid #EFEEEE;
  border-radius: 0;
  padding: 8px;
  margin: 5px 0 10px;
}

button {
  width: 100%;
  border: none;
  background: #5fd65b;
  color: white;
  padding: 8px;
  font-size: 15px;
  cursor: pointer;
}

.error {
  color: red;
  font-size: 10px;
}
</style>
