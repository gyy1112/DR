import Vue from 'vue'
import Router from 'vue-router'

import Index from './components/Index.vue'
import IndexSearch from './components/index/IndexSearch.vue'
import Main from './components/Main.vue'
import Star from './components/Star.vue'
import Doughnut from './components/Doughnut.vue'
import Shopcart from './components/Shopcart.vue'
import My from './components/My.vue'
Vue.use(Router)
// 2 配置路径

export default new Router({
  routes: [
    {path:'/',redirect:'/index'},
    {path:'/index',component:Index},
    {path:'/index/search/:id',component:IndexSearch},
    {path:'/main',component:Main},
    {path:'/star',component:Star},
    {path:'/doughnut',component:Doughnut},
    {path:'/shopcart',component:Shopcart},
    {path:'/my',component:My},
  ]
})
