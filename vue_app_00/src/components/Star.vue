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
      <li>
        <div class="mui-card-header mui-card-media">
	        <img src="" />
	        <div class="mui-media-body">
		      小M
		      <p>发表于 2016-06-30 15:30</p>
	        </div>
        </div>
      </li>
    </ul>
  </div>
</template>
<script>
export default {
  data() {
    return {
      
    }
  },
  methods: {
    onClickLeft(){
      this.$router.go(-1)
    },
    onClickRight(){
      this.$router.push('/main')
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
    padding-bottom:28px;
  }
</style>