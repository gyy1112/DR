<template>
  <div>
    <van-nav-bar class="icon" title="注册/登录" left-text="" left-arrow @click-left="onClickLeft">
      <van-icon name="wap-home" slot="right" @click="onClickRight" />
      <van-icon name="bars" slot="right" />
    </van-nav-bar>
    <div class="user-container">
      <van-image lazy-load src="http://127.0.0.1:8080/img/mainImg/11.jpg" class="pic"/>
      <div class="userinfo">
        <input type="text" placeholder="请输入手机号" v-model="phone">
        <input type="text" placeholder="请输入验证码" class="code" v-model="sms">
        <a href="javascript:;">获取短信验证码</a>
      </div>
      <div class="agree">
        <van-icon name="passed" /> 同意 <a>《注册协议》</a> 和 <a>《隐私条款》</a>
      </div>
      <p class="loginwd">
        使用 
        <a>密码登录</a>
        <i>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</i>
        <a>获取语音验证码</a>
      </p>
      <van-button type="" size="large" @click="login">登录</van-button>
      <div class="otherlogin">
        <p>其他登录方式<van-icon name="arrow-up" :class="{a:active == true}" @click="check"/></p>
        <div v-show="active">
          <img src="../../public/img/indexImg/wb.png">
          <img src="../../public/img/indexImg/qq.png">
          <img src="../../public/img/indexImg/zfb.png">
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      active:true,
      phone:'',
      sms:''
    }
  },
  methods: {
    onClickLeft(){
      this.$router.go(-1)
    },
    onClickRight(){
      this.$router.push('/main')
    },
    check(){
      this.active = !this.active
    },
    login(){
      if(!(/^\d{11}$/.test(this.phone))){
        this.$toast("手机号验证不通过")
        return
      }
      if(this.sms.trim() == null){
        this.$toast("验证码输入不正确")
        return
      }
      this.axios.post('login',`phone=${this.phone}&sms=${this.sms}`).then(result=>{
        console.log(result)
      })
    }
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
  .user-container{
    padding:0 28px;
    background:#fff;
    padding-bottom:60px;
  }
  .user-container .pic{
    display:block;
    width:40%;
    padding-top:20px;
    margin:0 auto;
  }
  .userinfo{
    margin-top:30px;
  }
  .userinfo input{
    font:12px 'yahei';
    padding:12px 0 15px 17px;
    border:0;
    background:#f7f7f7;
  }
  .userinfo input.code{
    width:60%;
  }
  .userinfo a{
    width:35%;
    height:40px;
    line-height:40px;
    text-align:center;
    vertical-align:top;
    display:inline-block;
    border:1px solid #a57a68;
    color:#a57a68;
    font-size:12px;
    float:right;
  }
  .agree{
    margin-top:10px;
    font:12px 'yahei';
    color:#888;
  }
  .van-icon.van-icon-passed{
    font-size:16px;
    background:#a57a68;
    color:#fff;
    border-radius:50%;
    vertical-align:bottom;
  }
  .agree a{
    color:#a57a68;
  }
  .loginwd{
    text-align:center;
    color:#888;
    font:12px 'yahei';
    padding:30px;
  }
  .loginwd a,.loginwd i{
    font-style:normal;
    color:#a57a68;
  }
  .van-button{
    background:#a57a68;
    color:#fff;
  }
  .otherlogin p{
    text-align:center;
    padding-top:30px;
  }
  .van-icon.van-icon-arrow-up{
    font-size:20px;
    vertical-align:middle;
    margin-left:10px;
  }
  .otherlogin div{
    display:flex;
    justify-content:space-around;
  }
  .otherlogin img{
    width:50px;
    height:50px;
    border-radius:50%;
  }
  .a{
    transform:rotate(180deg);
  }
</style>