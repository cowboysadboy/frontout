<template>
  <div class="container">
    <p>Чтобы связаться со мной, заполните форму:</p>
    <form class="form">
      <div class="form__connection">
        <div class="connection name">
          <label class="field-description" for="name">Имя:</label>
          <input type="text" id="name" name="name" required />
        </div>
        <div class="connection phone">
          <label class="field-description" for="phone">Телефон:</label>
          <input type="tel" id="phone" name="phone" required />
        </div>
      </div>

      <div class="form__tattoo-style tattoo-style">
        <label class="field-description"
          >Какие стили татуировки вам нравятся?</label
        >
        <label>
          <input type="checkbox" name="style[]" value="black and grey" />
          Черно-белый стиль
        </label>
        <label>
          <input type="checkbox" name="style[]" value="full color" /> Цветной
          стиль
        </label>
        <label>
          <input type="checkbox" name="style[]" value="traditional" />
          Традиционный стиль
        </label>
        <label>
          <input type="checkbox" name="style[]" value="realism" /> Реализм
        </label>
      </div>

      <div class="form__day day">
        <label class="field-description">Какой день недели вам подходит?</label>
        <label>
          <input type="radio" name="day" value="monday" /> Понедельник
        </label>
        <label>
          <input type="radio" name="day" value="tuesday" /> Вторник
        </label>
        <label>
          <input type="radio" name="day" value="wednesday" /> Среда
        </label>
        <label>
          <input type="radio" name="day" value="thursday" /> Четверг
        </label>
      </div>

      <div class="form__footer">
        <label for="image">Загрузите картинку:</label>
        <input type="file" id="image" name="image" />
        <button type="submit">Отправить</button>
      </div>
    </form>
  </div>
</template>
<style>
.form {
  display: flex;
  flex-wrap: wrap;
  padding-bottom: 50px;
  /* flex-direction: column; */
}
.form__connection {
  display: flex;
  flex-wrap: wrap;
  flex-direction: column;
}
.connection {
  position: relative;
  padding: 2px;
  margin-bottom: 20px;
}
.connection .field-description {
  position: absolute;
  top: -50%;
  font-size: 12px;
  font-weight: 600;
}
.field-description {
  position: absolute;
  font-size: 12px;
  font-weight: 600;
  top: -20px;
}
.tattoo-style,
.day {
  display: flex;
  flex-direction: column;
  position: relative;
  width: 100%;
  margin: 20px 0;
}
.form__footer {
  width: 100%;
  display: flex;
  flex-direction: column;
}
</style>
