import Vue from 'vue'
import Router from 'vue-router'

import Index from './components/Index.vue'
Vue.use(Router)
// 2 配置路径

export default new Router({
  routes: [
    {path:'/',component:Index}
  ]
})
