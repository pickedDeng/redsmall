import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
// element -ui ui
import 'element-ui/lib/theme-chalk/index.css';
import ElementUI from 'element-ui';
Vue.use(ElementUI);

// animate.css
import "./assets/animate/animate.min.css";

// axios 
import axios from "axios";
axios.defaults.baseURL = "http://127.0.0.1:3000/"

// moment
import Moment from 'moment'
Vue.filter('formData', function (data) {
  return Moment(data).format("YYYY:MM:DD hh:mm:ss");
});

Vue.prototype.formData = function (data) {
  return Moment(data).format("YYYY:MM:DD HH:mm:ss");
}

// 中转
Vue.prototype.event = new Vue;


import "./assets/iconfont/iconfont.css";

Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: function (h) { return h(App) }
}).$mount('#app')
