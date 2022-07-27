/* global Vue */

var App = {
  data: function () {
    return {
      messages: ["Look out!", "Error 404", "I'm a ghost.."],
      name: "enter here",
      number: 0,
      date: 00 / 00 / 0000,
    };
  },
  methods: {
    changeMessage: function () {
      this.message = "Hey there!";
    },
  },
};

Vue.createApp(App).mount("#app");
