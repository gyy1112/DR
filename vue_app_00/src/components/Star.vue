<template>
  <div>
    <van-nav-bar title="明星推荐" left-text="" left-arrow @click-left="onClickLeft">
      <van-icon name="wap-home" slot="right" @click="onClickRight" />
      <van-icon name="bars" slot="right" />
    </van-nav-bar>
    <div class="startop">
      <h3>与<i>43</i>位</h3>
      <p>明星一同见证DR真爱祝福</p>
      <div class="line"></div>
    </div>
    <ul class="starinfo">
      <li v-for="(item,i) of stars" :key="i">
          <router-link :to="'/star/starinfo/'+item.id">
            <img :src="item.img" />
            <div>{{item.title}}</div>
            <p>{{item.subtitle}}</p>
          </router-link>
      </li>
    </ul>
    <div class="starbottom">没有更多了</div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      stars:[],
      starScroll:''
    }
  },
  created() {
    this.getstarlist()
  },
  methods: {
    onClickLeft(){
      this.$router.go(-1)
    },
    onClickRight(){
      this.$router.push('/main')
    },
    getstarlist(){
      this.axios.get("star").then(result=>{
        console.log(result.data)
        this.stars = result.data
      })
    },
  },
}
</script>
<style scoped>
  .van-nav-bar{
    height:44px;
    line-height:44px;
  }
  .van-nav-bar__text{
    color:#231815;
    font-size:22px;
  }
  .van-nav-bar .van-icon-wap-home,.van-nav-bar .van-icon-bars{
    font-size:20px;
    color:#999;
  }
  .van-nav-bar .van-icon-wap-home{
    margin-right:10px;
  }
  .van-tree-select__nav-item{
    width:124px;
    height:55px;
    text-align:center;
    color:#222;
    font-size:15px;
    margin-right:0;
    line-height:55px;
  }
  .startop{
    width:100%;
    padding-top:32px;
    background:#f4f4f4;
  }
  .startop h3{
    font:14px 'yahei';
    color:#222;
    height:40px;
    text-align:center;
    line-height:40px;
    Letter-spacing:1px;
  }
  .startop h3 i{
    font-size:41px;
    font-style:normal;
  }
  .startop p{
    margin-top:20px;
    font-size:14px;
    color:#222;
    text-align:center;
  }
  .line{
    width:30px;
    height:1px;
    border-top: 1px solid #000;
    margin: 15px 0 15px 46%;
  }
  .starinfo{
    width:100%;
    padding:0 10px;
  }
  .starinfo li{
    width:100%;
    margin-bottom:10px;
  }
  .starinfo li img{
    display:block;
    width:100%;
  }
  .starinfo li div{
    padding:20px 10px 0 10px;
    font-size:16px;
    color: #222;
    text-overflow: ellipsis;
    overflow: hidden;
    white-space: nowrap;
    background:#fff;
    box-sizing:border-box;
    text-align:center;
  }
  .starinfo li p{
    background:#fff;
    padding: 10px;
    font-size: 12px;
    color: #888;
    text-overflow: ellipsis;
    overflow: hidden;
    white-space: nowrap;
    text-align:center;
  }
  .starbottom{
    padding:20px 0;
    font:12px 'yehei';
    text-align:center;
    color:#888;
  }
</style>