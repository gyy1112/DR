<template>
  <div class="doughnut-container">
    <van-tabs v-model="activeName">
      <van-tab title="推荐" name="a">
        <ul class="dougnnut">
          <li>
            <div class="card">
              <span>DR达人说</span>
              <van-icon name="ellipsis" />
            </div>
          </li>
        </ul>
      </van-tab>
      <van-tab title="爱的承诺" name="b">
        <ul class="dougnnut">
          <li>11</li>
        </ul>
      </van-tab>
      <van-tab title="甜蜜约会" name="c">
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
      activeName: 'a',
      list1:[],
      list2:[],
      list3:[]
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
.dougnnut .card{
  padding-top:18px;
}
</style>