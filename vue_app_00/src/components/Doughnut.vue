<template>
  <div class="doughnut-container">
    <van-tabs v-model="activeName">
      <van-tab title="推荐" name="推荐">
        <ul class="dougnnut">
          <li>
            <div class="card">
              <span>DR达人说</span>
              <van-icon name="ellipsis" class="pull"/>
              <div class="time">2019-06-12</div>
              <a>
                <div class="judge" :class="{'hide':check == true}">
                DR家的款式很多，有好几个系列~店员小姐姐人很nice，帮我试戴了Just You经典款，本来担心我这种肉肉的小胖手不适合戴戒指，没想到效果让我很惊喜！因为这款是心形扭臂设计的，可以很完美地修饰手型，显得手指更修长，是不是很神奇！！！墙裂推荐给跟我一样的红薯们~简直是小胖手的救星呀！
                </div>
              </a>
              <div class="btn" @click="toggelemsg">{{check==true?'全文':'收起'}}</div>
              <div class="imgs">
                <img src="../../public/img/mainImg/01.jpg">
                <img src="../../public/img/mainImg/01.jpg">
                <img src="../../public/img/mainImg/01.jpg">
                <img src="../../public/img/mainImg/01.jpg">
                <img src="../../public/img/mainImg/01.jpg">
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
          <li>11</li>
        </ul>
      </van-tab>
      <van-tab title="甜蜜约会" name="甜蜜约会">
        <ul class="dougnnut">
          <li>111</li>
        </ul>
      </van-tab>
    </van-tabs>
  </div>
</template>
<script>
export default {
  data() {
    return {
      activeName: '推荐',
      list1:[],
      list2:[],
      list3:[],
      check:true,
    }
  },
  created() {
  },
  methods: {
    toggelemsg(){
      this.check = !this.check;
    }
  },
}
</script>
<style scoped>
.doughnut-container{
  background-color:#fff;
}
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
  padding:0 10px 0 60px;
}
.dougnnut li{
  margin-bottom:10px;
}
.dougnnut .card{
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
.dougnnutbottom{
  padding-bottom:20px;
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
}
.imgs img:nth-child(2n){
  margin:0 2%;
}
</style>