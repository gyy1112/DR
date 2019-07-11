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
// 导入 MUI 的样式
import './lib/mui/css/mui.min.css'
// 导入扩展图标样式
import './lib/mui/css/icons-extra.css'
// 引入全局样式
import './assets/reset.css'
// 导入格式化时间的插件
import moment from 'moment'
// 定义全局的过滤器
Vue.filter('dateFormat', function (dataStr, pattern = "YYYY-MM-DD HH:mm:ss") {
  return moment(dataStr).format(pattern)
})  
// 引入axios
import axios from "./axios";
// 引入vuex
import Vuex from 'vuex'
Vue.use(Vuex) 





Vue.config.productionTip = false
new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
