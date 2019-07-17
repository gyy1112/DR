<template>
  <div class="doughnut-container">
    <van-tabs v-model="activeName" @click="tabstoggle">
      <van-tab title="推荐" name="推荐">
        <ul class="dougnnut">
          <li v-for="(item,i) of list1" :key="i">
            <div class="card">
              <span>DR达人说</span>
              <van-icon name="ellipsis" class="pull"/>
              <div class="time">{{item.dgtime}}</div>
              <a>
                <div class="judge" :class="{'hide':check == true}">
                {{item.judge}}
                </div>
              </a>
              <div class="btn" @click="toggelemsg">{{check==true?'全文':'收起'}}</div>
              <div class="imgs">
                <img :src="imgs" v-for="(imgs,index) of imgs1[i]">
              </div>
              <van-divider />
              <div class="dougnnutbottom">
                <van-icon name="smile-o" /><span class="num">3</span>
              </div>
            </div>
          </li>
        </ul>
      </van-tab>
      <van-tab title="爱的承诺" name="爱的承诺">
        <ul class="dougnnut">
          <li v-for="(info,i) of list2" :key="i">
            <div class="card">
              <span>DR达人说</span>
              <van-icon name="ellipsis" class="pull"/>
              <div class="time">{{info.dgtime}}</div>
              <a>
                <div class="judge" :class="{'hide':check == true}">
                {{info.judge}}
                </div>
              </a>
              <div class="btn" @click="toggelemsg">{{check==true?'全文':'收起'}}</div>
              <div class="imgs">
                <img :src="pic" v-for="(pic,index) of imgs2[i]">
              </div>
              <van-divider />
              <div class="dougnnutbottom">
                <van-icon name="smile-o" /><span class="num">3</span>
              </div>
            </div>
          </li>
        </ul>
      </van-tab>
      <van-tab title="甜蜜约会" name="甜蜜约会">
        <ul class="dougnnut">
          <li v-for="(item,i) of list3" :key="i">
            <div class="card">
              <span>DR达人说</span>
              <van-icon name="ellipsis" class="pull"/>
              <div class="time">{{item.dgtime}}</div>
              <a>
                <div class="judge" :class="{'hide':check == true}">
                {{item.judge}}
                </div>
              </a>
              <div class="btn" @click="toggelemsg">{{check==true?'全文':'收起'}}</div>
              <div class="imgs">
                <img :src="imgs" v-for="(imgs,index) of imgs3[i]">
              </div>
              <van-divider />
              <div class="dougnnutbottom">
                <van-icon name="smile-o" /><span class="num">3</span>
              </div>
            </div>
          </li>
        </ul>
      </van-tab>
    </van-tabs>
    <van-tabbar route >
      <van-tabbar-item replace to="/main" icon="wap-home" name='main'>首页
      </van-tabbar-item>
      <van-tabbar-item replace to="/star" icon="star-o" name='star'>明星
      </van-tabbar-item>
      <van-tabbar-item replace to="/doughnut" icon="like-o" name='daugthnut'>甜甜圈
      </van-tabbar-item>
      <van-tabbar-item replace to="/shopcart" icon="shopping-cart-o" name="shopcart" :info="this.$store.getters.getAllCount">购物袋
      </van-tabbar-item>
      <van-tabbar-item replace to="/my" icon="manager" name="my">我的
      </van-tabbar-item>                                                                                  
    </van-tabbar>
  </div>
</template>
<script>
export default {
  data() {
    return {
      activeName: '推荐',
      list1:[],
      imgs1:[],
      list2:[],
      imgs2:[],
      list3:[],
      imgs3:[],
      check:true
    }
  },
  created() {
    this.doughnut1()
  },
  methods: {
    tabstoggle($event){
      if($event == '推荐'){
        this.doughnut1()
      }else if($event == '爱的承诺'){
        this.doughnut2()
      }else if($event == '甜蜜约会'){
        this.doughnut3()
      }
    },
    toggelemsg(){
      this.check = !this.check;
    },
    doughnut1(){
      this.axios.get('doughnut/tuijian').then(result=>{
        this.list1 = result.data
        for(var i=0,a=[];i<this.list1.length;i++){
          var b = this.list1[i].imgs.split('&')
          a.push(b)
        }
        this.imgs1 = a
      })
    },
    doughnut2(){
      this.axios.get('doughnut/chengnuo').then(result=>{
        console.log(result)
        this.list2 = result.data
        for(var i=0,c=[];i<this.list2.length;i++){
          var d = this.list2[i].imgs.split('&')
          c.push(d)
        }
        this.imgs2 = c
      })
    },
    doughnut3(){
      this.axios.get('doughnut/yuehui').then(result=>{
        this.list3 = result.data
        for(var i=0,e=[];i<this.list3.length;i++){
          var f = this.list3[i].imgs.split('&')
          e.push(f)
        }
        this.imgs3 = e
      })
    },
  }
}  
</script>
<style scoped>
/deep/ .van-tab{
  color:#333;
  font-weight:400;
}
/deep/ .van-tab.van-tab--active{
  color:#a57a68;
  font-size: 12px;
}
/deep/ .van-tabs__line{
  background-color:#a57a68;
  width:25px !important;
  height:2px;
}
.dougnnut{
}
.dougnnut li{
  margin-bottom:10px;
  padding:0 10px 0 60px;
  background-color:#fff;
}
.dougnnut .card{
  width:90%;
  padding-top:15px;
  color:#333;
  font-size:14px;
}
.dougnnut .card .pull{
  float:right;
  font-size:25px;
  color:#bdbdbd;
}
.dougnnut .card .time{
  color:#a0a0a0;
  font-size:12px;
}
.dougnnut .card .judge{
  font-size:14px;
  color:#333;
  line-height:25px;
}
.hide{
  height:130px;
  overflow:hidden;
}
.dougnnut .card .btn{
  margin-top:0px;
  color: #c67c59;
  font-size: 14px;
  line-height:20px;
}
.van-divider--hairline{
  margin-bottom:6px;
}
.dougnnutbottom{
  padding-bottom:4px;
}
.van-icon-smile-o{
  font-size:20px;
  vertical-align:top;
}
.num {
  color:#6c6c6c;
  font-size:12px;
  margin-left:10px;
}
.imgs{
  width:100%;
  display:flex;
  flex-wrap:wrap;
}
.imgs img{
  width:32%;
  margin-bottom:5px;
}
.imgs img:nth-child(3n-1){
  margin:0 2% 5px 2%; 
}
.van-tabbar-item--active{
    color:#a57a68;
}
</style>