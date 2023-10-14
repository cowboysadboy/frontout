<template>
  <div class="wrapper">
    <app-header></app-header>
    <register-form></register-form>
  </div>
</template>

<script>
import AppHeader from '~/components/AppHeader.vue';
import RegisterForm from '~/components/RegisterPage/RegisterForm.vue';
export default {
  components: {
    AppHeader,
    RegisterForm,
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
