<template>
  <div class="form-container">
    <H1 class="h1">
      Авторизация
    </H1>
    <form @submit.prevent="submitForm" class="form">
      <div class="form__connection">
        <div class="connection username">
          <label class="field-description" for="username">Логин</label>
          <input type="text" id="username" name="username" v-model="user.username" required />
        </div>
        <div class="connection password">
          <label class="field-description" for="password">Пароль</label>
          <input type="password" id="password" name="password" v-model="user.password" required />
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
      user: {
        username: '',
        password: ''
      },
    };
  },
  mounted() {
  },

  methods: {
    submitForm() {
      const data = {
        username: this.user.username,
        password: this.user.password
      }
      this.error = ''
      // Отправка POST-запроса с помощью $http.post()
      this.$axios
        .post("login", data)
        .then((response) => {
          // Обработка успешного ответа
          console.log(response.data);
        }
        ).catch((error) => {
          console.log(error.response.data);
          this.error = error.response.data
        });
    },
  },
};
</script>

<style scoped>
.form-container {
  margin: 0 auto;
  max-width: 282px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  padding-top: 50px;
}

.connection {
  display: flex;
  flex-direction: column;
}

.field-description {
  font-size: 10px;
  font-style: normal;
  font-weight: 400;
}

.h1 {
  font-size: 32px;
  font-style: normal;
  font-weight: 500;
  margin: 0 auto 15px;
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
  background: black;
  color: white;
  padding: 8px;
}

.error {
  color: red;
  font-size: 10px;
}
</style>
