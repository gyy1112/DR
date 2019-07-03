import Vue from 'vue'
import App from './App.vue'
import router from './router'
// 以上三行不要动保存原来位置
// 原因：引入有序
// 第三方组件在下面引入
// 1 完整引入mint-ui
import MintUI from 'mint-ui'
// 2 单引引入mint-ui样式
import'mint-ui/lib/style.css'
// 3 将mint-ui】注册vue
Vue.use(MintUI)
// 4 引入字体样式文件
import './font/iconfont.css'
import axios from "./axios";

Vue.config.productionTip = false
new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
