import Vue from 'vue'
import Router from 'vue-router'
// 自定义主件
import HelloContainer from "./components/HelloWorld.vue"
// 1 引入Exam01.vue主件
import Exam01 from  "./components/exam/Exam01.vue"
//  引入Exam02.vue主件
import Exam02 from "./components/exam/Exam02.vue"
// 引入Exam03.vue
import Exam03 from "./components/exam/Exam03.vue"
// 引入Homework04.vue
import Homework04 from "./components/exam/Homework04.vue"
// 引入Exam05.vue
import Exam05 from "./components/exam/Exam05.vue"
// 引入Exam06.vue
import ExamContainer06 from "./components/exam/ExamContainer06.vue"
// 引入Exam06.vue
import ExamContainer07 from "./components/exam/ExamContainer07.vue"
// 引入ExamTabbar08.vue
import ExamTabbar08 from "./components/exam/ExamTabbar08.vue"
// 引入F10.vue
import F10 from "./components/exam/F10.vue"
// 引入Home.vue
import Home from "./components/weixin/Home.vue"
// 引入Messagelist.vue
import MessageList from "./components/weixin/common/MessageList.vue"
// 引入Login.vue
import Login from "./components/xz/Login.vue"
// 引入Father.vue
import Father from "./components/exam/father.vue"
import Home1 from "./components/xz/Home1.vue"
import Product from "./components/xz/Product.vue"
Vue.use(Router)
// 2 配置路径

export default new Router({
  routes: [
    {path:'/Product',component:Product},
    {path:'/Home1',component:Home1},
    {path:'/Login',component:Login},
    {path:'/',component:HelloContainer},
    {path:'/Exam01',component:Exam01},
    {path:'/Exam02',component:Exam02},
    {path:'/Exam03',component:Exam03},
    {path:'/Homework04',component:Homework04},
    {path:'/Exam05',component:Exam05},
    {path:'/Exam06',component:ExamContainer06},
    {path:'/Exam07',component:ExamContainer07},
    {path:'/Exam08',component:ExamTabbar08},
    {path:'/F10',component:F10},
    {path:'/Home',component:Home},
    {path:'/MessageList',component:MessageList},
    {path:'/Father',component:Father},
  ]
})
