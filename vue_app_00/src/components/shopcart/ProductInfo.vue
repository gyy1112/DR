<template>
  <div>
     <van-nav-bar title="" left-text="" left-arrow @click-left="onClickLeft">
      <van-icon name="wap-home" slot="right" @click="onClickRight" />
      <van-icon name="bars" slot="right" />
     </van-nav-bar>
     <van-swipe>
      <van-swipe-item v-for="(item,i) of imgs" :key="i">
        <img :src="item">
      </van-swipe-item>
    </van-swipe>
    <div class="ringbuy">
      <h3 class="title">{{productdetail.subtitle}}</h3>
      <p>
        <strong><i>￥</i>{{productdetail.price}}</strong>
      </p>
      <div class="save" :class="{'dn':check == true}" @click="saveproduct">
        ❤
        <p>{{check == true?'已收藏':'收藏'}}</p>
      </div>
    </div>
    <div class="buycort_choose">
      <div class="buycort_tap">
        <i>
          材质：白18K金 200分D色
          <br>
          手寸：5
        </i>
      </div>
      <p>购买数量：
        <button class="minux">-</button>
       <input type="number" min=1 max=99 value="1" class="numberbox"></input>
       <button class="plus">+</button>
      </p>
      <div class="buycort_delivery">
        <label>配送说明：</label>
        <span>预计40个工作日送达（限大陆地区）,如需加急或者其他地区请咨询客服。</span>
      </div>
    </div>
    <div class="Productnum">
      <div class="Productnum_title">
        <span>商品参数</span>
      </div>
      <div class="Productnum_cort">
        <div class="left">
          <p>
            <span>商品分类：</span><i>求婚钻戒</i>
          </p>
          <p>
            <span>系列名称：</span><i>TRUE LOVE系列</i>
          </p>
          <p>
            <span>主石大小：</span><i class="size">200分</i>
          </p>
          <p>
            <span>主石材质：</span><i class="material">钻石</i>
          </p>
          <p>
            <span>主石数量：</span><i class="number">1</i>
          </p>
          <p>
            <span>净度：</span><i class="clarity">VS1</i>
          </p>
          <p>
            <span>颜色：</span><i class="color">D</i>
          </p>
          <p>
            <span>切工：</span><i class="cut">VG</i>
          </p>
          <p>
            <span>抛光：</span><i class="p_polish">VG</i>
          </p>
          <p>
            <span>对称：</span><i class="p_symm">VG</i>
          </p>
        </div>
        <div class="right">
          <p>
            <span>产品编号：</span><i>J10136</i>
          </p>
          <p>
            <span>戒托材质：</span><i class="ring_material">白18K金</i>
          </p>
          <p>
            <span>手寸：</span><i>客订</i>
          </p>
          <p>
            <span>形状：</span><i>圆形</i>
          </p>
        </div>
        <div class="clearfix"></div>
      </div>
    </div>
    <div class="hotevaluate">
      <div><span>商品评价（0）</span></div>
    </div>
    <div class="Productimg">
      <div class="detail"><span>商品详情</span></div>
      <div class="imgs">
        <img src="../../../public/img/shopdetailImg/1.jpg">
        <img src="../../../public/img/shopdetailImg/2.jpg"><img src="../../../public/img/shopdetailImg/3.jpg">
        <img src="../../../public/img/shopdetailImg/4.jpg">
        <img src="../../../public/img/shopdetailImg/5.jpg">
        <img src="../../../public/img/shopdetailImg/6.jpg">
        <img src="../../../public/img/shopdetailImg/7.jpg">
        <img src="../../../public/img/shopdetailImg/8.jpg">
        <img src="../../../public/img/shopdetailImg/9.jpg">
        <img src="../../../public/img/shopdetailImg/10.jpg">
        <img src="../../../public/img/shopdetailImg/11.jpg">
        <img src="../../../public/img/shopdetailImg/12.jpg">
        <img src="../../../public/img/shopdetailImg/13.jpg">
        <img src="../../../public/img/shopdetailImg/14.jpg">
        <img src="../../../public/img/shopdetailImg/15.jpg">
        <img src="../../../public/img/shopdetailImg/16.jpg">
        <img src="../../../public/img/shopdetailImg/17.jpg">
      </div>  
    </div>
    <div class="detailService">
      <div><span>客户服务</span></div>
      <div class="txt">测量手寸</div>
      <div class="txt">购买流程</div>
      <div class="txt">专业认证</div>
      <div class="txt">售后保证</div>
    </div>
    <div class="shopfixed">
      <a class="a1">
        <van-icon name="service-o"/>
        <span>客服</span>
      </a>
      <a class="a2">
        <van-icon name="bag-o" info="0"/>
        <span>购物袋</span>
      </a>
      <div class="right-server">
        <a class="a3">加入购物袋</a>
        <a class="a4">立即购买</a>
      </div>  
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      id:this.$route.params.id,
      check:false,
      // selectedCount: 1
      productdetail:{},
      imgs:[]
    }
  },
  created() {
    this.getproductdetail()
  },
  methods: {
    saveproduct(){
      this.check = !this.check
    },
    onClickLeft(){
      this.$router.go(-1)
    },
    onClickRight(){
      this.$router.push('/main')
    },
    // getSelectedCount(count) {
    //   this.selectedCount = count;
    // }
    getproductdetail(){
      this.axios.get('shopcart/product/',{params:{ id:this.id}})
      .then(result=>{
        this.productdetail = result.data[0]
        this.imgs = this.productdetail.carouselimg.split('&')
        console.log(this.imgs)
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
  .van-swipe-item img{
    display:block;
    width:100%;
  }
  .ringbuy{
    padding:14px;
    background:#fff;
    position:relative;
  }
  .ringbuy h3{
    font:16px 'yahei';
    font-style:400;
  }
  .ringbuy p{
    font-size:16px;
    color:#cc9578;
    font-weight:700;
  }
  .ringbuy i{
    font-style:normal;
    font-size:12px;
  }
  .ringbuy .save{
    position:absolute;
    top:30px;
    right:20px;
    text-align:center;
    color:#000;
    font-size:20px;
  }
  .ringbuy .save p{
    font:12px 'yahei';
    color:#999;
  }
  .ringbuy .dn{
    color:#f00;
  }
  i{
    font-style:normal;
  }
  .buycort_choose{
    background:#fff;
    padding:8px 10px;
    border-top:1px solid #eaeaea; 
    border-bottom:1px solid #eaeaea; 
    margin-bottom:40px;
  }
  .buycort_choose p{
    padding-top:5px;
    border-top:1px solid #eaeaea; 
  }
  .buycort_tap i{
    font:14px 'yahei';
    color:#333;
    line-height:35px;
  }
  .minux{
    margin-left:30px;
  }
  .numberbox{
    width:40px;
    height:33px;
    padding:5px;
  }
  .buycort_delivery{
    border-top:1px solid #eaeaea; 
    padding-top:5px;
  }
  .buycort_delivery label{
    font:13px 'yahei';
    color:#333;
  }
  .buycort_delivery span{
    font:13px 'yahei';
    color:#888;
  }
  .Productnum{
    background:#fff;
    text-align:center; 
    border-bottom:1px solid #eaeaea; 
  }
  .Productnum_title{
    margin:auto 10px;
    color:#333;
    font:16px 'yahei';
    height:50px;
    line-height:50px;
  }
  .Productnum_cort{
    padding:20px 10px 10px;
    font:12px 'yahei';
    position:relative;
  }
  .Productnum_cort .left{
    width:48%;
    float:left;
    text-align:left;
  }
  .Productnum_cort .right{
    width:48%;
    float:right;
    text-align:left;
  }
  .Productnum_cort p span,.Productnum_cort p i{
    font:12px 'yahei';
    color:#333;
    
  }
  .Productnum_cort p i{
    color:#999;
  }
  .clearfix{
    clear:both;
  }
  .hotevaluate,.Productimg,.detailService{
    text-align:center;
    font:16px 'yahei';
    color:#333;
    background:#fff;
    margin:10px 0;
  }
  .Productimg,.detailService{
    margin-bottom:0;
    padding-bottom:60px;
  }
  .hotevaluate div,.Productimg .detail,.detailService div{
    height:50px;
    line-height:50px;
  }
  .Productimg .imgs{
  }
  .Productimg img{
    display:block;
    width:100%;
  }
  .txt{
    height:40px;
    line-height:40px;
    font:14px 'yahei';
    color:#333;
    text-align:left;
    padding:10px;
  }
  .shopfixed{
    border-top:1px solid #eaeaea;
    background:#fff;
    width:100%;
    height:50px;
    position:fixed;
    bottom:0;
    left:0;
  }
  .shopfixed .a1,.shopfixed .a2{
    margin-left:0;
    width:15%;
    color:#231815;
    display:blocl;
    float:left;
    text-align:center;
    
  }
  .shopfixed .a1,.shopfixed .a2{
    border-right:1px solid #eaeaea;
    margin-top:8px;
  }
  .shopfixed .a1 .van-icon-service-o,.shopfixed .a2 .van-icon-bag-o{
    display:block;
    font-size:20px;
  }
  .shopfixed .a1 span,.shopfixed .a2 span{
    display:block;
    font:12px 'yahei';
    color:#666;
  }
  .right-server{
    width:70%;
    float:right;
    height:50px;
  }
  .right-server .a3,.right-server .a4{
    display:block;
    width:50%;
    float:left;
    height:50px;
    text-align:center;
    font:15px 'yahei';
    padding-top:15px;
  }
  .right-server .a3{
    color:#222;
    background:#ddd;
  }
  .right-server .a4{
    color:#fff;
    background:#a57a68;
  }
  .van-info{
    right:14px;
  }
</style>