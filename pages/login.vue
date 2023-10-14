<template>
  <div class="wrapper">
    <app-header></app-header>
    <login-form></login-form>
  </div>
</template>

<script>
import LoginForm from '~/components/LoginPage/LoginForm.vue';
import AppHeader from '~/components/AppHeader.vue';
export default {
  components: {
    AppHeader,
    LoginForm,
  },
  data() {
    return {
    };
  },
  mounted() {
  },
};
</script>

<style lang="scss" scoped></style>
