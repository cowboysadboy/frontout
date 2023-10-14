<template>
  <div class="form-container">
    <H1 class="h1">
      Регистрация
    </H1>
    <form @submit.prevent="submitForm" class="form">
      <div class="form__connection">
        <div class="connection name">
          <label class="field-description" for="name">Никнейм (будет использоваться в ссылке,
            например: https://ta2.link/masha-tattooing)</label>
          <input type="text" id="name" name="name" v-model="lead.cliet_name" required />
        </div>
        <div class="connection email">
          <label class="field-description" for="name">Е-mail (сюда приходят сообщения от клиентов)</label>
          <input type="email" id="name" name="Email" v-model="lead.email" required />
        </div>
        <div class="connection phone">
          <label class="field-description" for="phone">Пароль</label>
          <input type="password" id="phone" name="phone" v-model="lead.client_phone" required />
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
      lead: {
        master_id: "",
        cliet_name: "",
        cliet_lastname: "",
        client_phone: "",
        tatoo_width: "",
        tatoo_height: "",
        contact_link: "",
      },
    };
  },
  mounted() { },

  methods: {
    submitForm() {
      // Отправка POST-запроса с помощью $http.post()
      this.$axios
        .post("http://localhost:3000/addleads", {
          master_id: this.masterData?.id,
          cliet_name: this.lead.cliet_name,
          cliet_lastname: this.lead.cliet_lastname,
          client_phone: this.lead.client_phone,
          tatoo_width: this.lead.tatoo_width,
          tatoo_height: this.lead.tatoo_height,
          contact_link: "",
        })
        .then(
          (response) => {
            // Обработка успешного ответа
            console.log(response.data);
          },
          (error) => {
            // Обработка ошибки
            console.log(error);
          }
        );
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
</style>
