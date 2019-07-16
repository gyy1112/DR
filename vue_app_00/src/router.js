import Vue from 'vue'
import Router from 'vue-router'

import Index from './components/Index.vue'
import IndexSearch from './components/index/IndexSearch.vue'
import Main from './components/Main.vue'
import Star from './components/Star.vue'
import StarInfo from './components/star/StarInfo.vue'
import Doughnut from './components/Doughnut.vue'
import Shopcart from './components/Shopcart.vue'
import Product from './components/shopcart/Product.vue'
import ProductInfo from './components/shopcart/ProductInfo.vue'
import My from './components/My.vue'
Vue.use(Router)
// 2 配置路径

export default new Router({
  routes: [
    {path:'/',redirect:'/index'},
    {path:'/index',name:'index',component:Index},
    {path:'/index/search',name:'index-search',component:IndexSearch},
    {path:'/main',name:'main',component:Main},
    {path:'/star',name:'star',component:Star},
    {path:'/star/starinfo/:id',name:'starinfo',component:StarInfo},
    {path:'/doughnut',name:'doughnut',component:Doughnut},
    {path:'/shopcart',name:'shopcart',component:Shopcart},
    {path:'/shopcart/product',name:'shopcart-product',component:Product},
    {path:'/shopcart/product/:id',name:'shopcart-product-id',component:ProductInfo},
    {path:'/my',name:'my',component:My},
  ],
})

