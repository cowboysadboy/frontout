export default function({ $axios }) {
    // Добавляем интерцептор для перехвата ответа сервера
    $axios.onResponse(config => {
        console.log('ХУЙ')

        // Получаем куки из заголовков ответа сервера
        // const cookies = document.cookie.split(';')
        const cookies = config.headers['set-cookie']
        console.log(cookies)
            // Парсим и устанавливаем полученные куки
            // cookies.forEach(cookie => {
            //   const [name, value] = cookie.trim().split('=')
            //   document.cookie = `${name}=${value}`
            // })
    })
}