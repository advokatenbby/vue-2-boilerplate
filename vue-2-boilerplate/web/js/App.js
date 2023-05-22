const app = new Vue({
    el: "#app",
    vuetify: new Vuetify(),
    data: () => ({
        show: false, 

        message: 'Hello, World!'
    }),
    methods: {
        OPEN: function() {
            this.show = true;
        },

        CLOSE: function () {
            this.show = false; 

            post('https://vue-2-boilerplate/close', null)
        },
    },
    mounted() {
        this.escapeListener = window.addEventListener("keyup", (event) => {
            if (event.keyCode === 27) {
              this.CLOSE();
            }
          });
          this.messageListener = window.addEventListener("message", (event) => {
            const item = event.data;
            if (this[item.type]) {
              this[item.type](item);
            }
        });
    },
})

window.post = (url, data) => {
    var request = new XMLHttpRequest();
    request.open("POST", url, true);
    request.setRequestHeader("Content-Type", "application/json; charset=UTF-8");
    request.send(data);
};