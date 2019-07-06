import Vue from 'vue'
import App from './App.vue'
import router from './router'

// 引入Mint-UI
import MintUI from 'mint-ui'
import'mint-ui/lib/style.css'
Vue.use(MintUI)
// 引入Vant
import Vant from 'vant';
import 'vant/lib/index.css';
Vue.use(Vant);
import axios from "./axios";
// 引入vuex
import Vuex from 'vuex'
import { stat } from 'fs';
Vue.use(Vuex) 





Vue.config.productionTip = false
new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
