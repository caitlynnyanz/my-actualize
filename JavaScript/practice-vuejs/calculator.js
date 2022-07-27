var App = {
  data: function () {
    return {
      message: "Hello Vue!",
      num1: 0,
      num2: 0,
      num3: 0,
      sum: 0,
      diff: 0,
      prod: 0,
    };
  },
  methods: {
    calculateSum: function () {
      this.sum = this.num1 + this.num2 + this.num3;
      return this.sum;
    },
    calculateDifference: function () {
      this.diff = this.num1 - this.num2 - this.num3;
      console.log(this.diff);
    },
    calculateProduct: function () {
      this.prod = this.num1 * this.num2 * this.num3;
      console.log(this.prod);
    },
  },
};

Vue.createApp(App).mount("#app");
