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
import mui from './lib/mui/js/mui.js'
import './lib/mui/css/mui.css'
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
var car = JSON.parse(localStorage.getItem('car') || '[]')
var store = new Vuex.Store({
  state: { 
    isLogin:false,
    car: car 
    // { id:商品的id, count: 要购买的数量, price: 商品的单价，selected: false  }
  },
  mutations: {
    addToCar(state, goodsinfo) {
      var flag = false
      state.car.some(item => {
        if (item.id == goodsinfo.id) {
          item.count += parseInt(goodsinfo.count)
          flag = true
          return true
        }
      })
      if (!flag) {
        state.car.push(goodsinfo)
      }
      localStorage.setItem('car', JSON.stringify(state.car))
    },
    updateGoodsInfo(state, goodsinfo) {
      state.car.some(item => {
        if (item.id == goodsinfo.id) {
          item.count = parseInt(goodsinfo.count)
          return true
        }
      })
      localStorage.setItem('car', JSON.stringify(state.car))
    },
    removeFormCar(state, id) {
      state.car.some((item, i) => {
        if (item.id == id) {
          state.car.splice(i, 1)
          return true;
        }
      })
      localStorage.setItem('car', JSON.stringify(state.car))
    },
    updateGoodsSelected(state, info) {
      state.car.some(item => {
        if (item.id == info.id) {
          item.selected = info.selected
        }
      })
      localStorage.setItem('car', JSON.stringify(state.car))
    }
  },
  getters: { 
    getAllCount(state) {
      var c = 0;
      state.car.forEach(item => {
        c += item.count
      })
      return c
    },
    getGoodsCount(state) {
      var o = {}
      state.car.forEach(item => {
        o[item.id] = item.count
      })
      return o
    },
    getGoodsSelected(state) {
      var o = {}
      state.car.forEach(item => {
        o[item.id] = item.selected
      })
      return o
    },
    getGoodsCountAndAmount(state) {
      var o = {
        count: 0, 
        amount: 0 
      }
      state.car.forEach(item => {
        if (item.selected) {
          o.count += item.count
          o.amount += item.price * item.count
        }
      })
      return o
    }
  }
})




Vue.config.productionTip = false
new Vue({
  router,
  render: h => h(App),
  store
}).$mount('#app')

router.beforeEach((to, from, next) => {
  let phone = localStorage.getItem(phone)
  if (to.name == 'starinfo'||to.name == 'shopcart-product-id') {
      if(phone == undefined){
        router.push({ name: 'my' })
      }
  }
  if (to.name === 'my') { 
    if (phone != undefined) {
      router.push({ name: 'main' });
    }
  }
  next();
});
