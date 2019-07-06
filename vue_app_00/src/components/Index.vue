<template>
  <div>
    <van-nav-bar title="Darry Ring" left-text="X" fixed>
      <van-icon name="wap-home" slot="right" />
      <van-icon name="bars" slot="right" />
    </van-nav-bar>
    <ul>
      <li class="page1">
        <img src="../img/indexImg/banner.jpg" class="banner">
      </li>
      <li class="page2">
        <img src="../img/indexImg/p2_t.png">
        <p>基于让爱情变的更美好的品牌使命<br />
        致力于对真爱唯一的传播与见证<br />
        <span>男士一生仅能定制一枚</span><br />
        赠予一生唯一真爱的人<br />
        在求婚的那一刻，许下对爱一生的承诺</p>
        <img src="../img/indexImg/p2_b.jpg">
      </li>
      <li class="page3">
        <img src="../img/indexImg/p3_t.png" class="page3-t">
        <p>
          每一枚DR求婚钻戒背后，都有一个相爱一生的故事。<br>
					期待我们也能见证您一生唯一的爱情！
        </p>
        <mt-swipe :auto="2000">
          <mt-swipe-item>
            <img src="../img/indexImg/p3_1.jpg">
          </mt-swipe-item>
          <mt-swipe-item>
            <img src="../img/indexImg/p3_2.jpg">
          </mt-swipe-item>
          <mt-swipe-item>
            <img src="../img/indexImg/p3_3.jpg">
          </mt-swipe-item>
        </mt-swipe>
      </li>
      <li class="page4">
        <img src="../img/indexImg/p4_t.png" class="page3-t">
        <mt-swipe :auto="3000">
          <mt-swipe-item>
            <img src="../img/indexImg/p4_1_1.jpg">
          </mt-swipe-item>
          <mt-swipe-item>
            <img src="../img/indexImg/p4_1_2.jpg">
          </mt-swipe-item>
          <mt-swipe-item>
            <img src="../img/indexImg/p4_1_3.jpg">
          </mt-swipe-item>
          <mt-swipe-item>
            <img src="../img/indexImg/p4_1_4.jpg">
          </mt-swipe-item>
        </mt-swipe>
      </li>
      <li class="page5" >
        <img src="../img/indexImg/p4_2t.png" class="page3-t">
        <mt-swipe :auto="4000" :show-indicators="false">
          <mt-swipe-item>
            <img src="../img/indexImg/p4_2_1.jpg">
          </mt-swipe-item>
          <mt-swipe-item>
            <img src="../img/indexImg/p4_2_2.jpg">
          </mt-swipe-item>
          <mt-swipe-item>
            <img src="../img/indexImg/p4_2_3.jpg">
          </mt-swipe-item>
        </mt-swipe>
      </li>
      <li class="page6">
        <van-button type="info" class="btn">联系在线客服</van-button>
        <p>
        我需要看实际试戴效果<br>
        我还想要寻找浪漫的求婚场所<br>
        我想体验爱情的仪式感<br>
        ……<br>
        <img src="../img/indexImg/arr.png" class="more">
        </p>
      </li>
      <li class="page7">
        <h3>探索最近的DR真爱体验店</h3>
        <p>DR真爱体验店遍布全国，提供钻戒试戴与求婚服务。</p>
         <van-cell-group>
            <van-cell v-model="carmodel" title="请选择所在地区" value="" @click="show = true"></van-cell>
            <van-popup v-model="show" position="bottom">
              <van-area value="110000" :area-list="areaList" @change="onChange" @confirm="show = false" @cancel="show = false" :columns-num="2"/>
            </van-popup>
         </van-cell-group>
         <van-button type="primary" size="large">搜索</van-button>
      </li>
    </ul>
    <van-tabbar v-model="active">
      <van-tabbar-item name="service-o" icon="service-o">在线咨询</van-tabbar-item>
      <van-tabbar-item name="phone-o" icon="phone-o">预约进店</van-tabbar-item>
    </van-tabbar>
  </div>
</template>
<script>
export default {
  data() {
    return {
      active:'service-o',
      show: false,
      carmodel: '',
      areaList:{
        province_list: {
          110000: '北京市',
          120000: '天津市',
          130000: '河北省',
          140000: '山西省',
          210000: '辽宁省',
          220000: '吉林省',
          230000: '黑龙江省',
          310000: '上海市',
          320000: '江苏省',
          420000: '湖北省',
          430000: '湖南省',
        },
        city_list: {
          110100: '北京市',
          120100: '天津市',
          130100: '石家庄市',
          130200: '唐山市',
          130300: '秦皇岛市',
          130400: '邯郸市',
          130500: '邢台市',
          130600: '保定市',
          130700: '张家口市',
          130800: '承德市',
          130900: '沧州市',
          131000: '廊坊市',
          140900: '忻州市',
          211300: '朝阳市',
          211400: '葫芦岛市',
          220100: '长春市',
          220200: '吉林市',
          220300: '四平市',
          220400: '辽源市',
          220500: '通化市',
          310100: '上海市',
          320100: '南京市',
          320200: '无锡市',
          420100: '武汉市',
          420200: '黄石市',
          420300: '十堰市',
          420500: '宜昌市',
          420600: '襄阳市',
          420700: '鄂州市',
          420800: '荆门市',
          420900: '孝感市',
          430500: '邵阳市',
          430600: '岳阳市',
          430700: '常德市',
          430800: '张家界市',
          430900: '益阳市',
          431000: '郴州市',
        },
      }
    }
  },
  methods: {
    onChange (picker,value,index) {
      let areaName = ''
      for (var i = 0; i < value.length; i++) {
        areaName = areaName + value[i].name + ' '
      }
      this.carmodel = areaName
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
  ul{
    padding-top:44px;
  }
  ul li img{
    width:100%;
  }
  .page1{
    display:flex;
  }
  .banner{
    width:100%;
  }
  .page2{
    background-color:#f4eeee;
  }
  .page2 img{
    padding: 20px 0;  
  }
  .page2 p,.page3 p,.page6 p{
    font: 14px simsun;
    color:#2a0305;
    line-height:30px;
    text-align:center;
  }
  .page2 p span{
    color:#b47455;
  }
  .page3{
    background-image:radial-gradient(#f3e6dd,#dacdc3)
  }
  .page3-t{
    padding:20px 0;
  }
  .page3 image[lazy=loading]{
    width:100%;
  }
  .mint-swipe{
    height:300px;
    margin-top:30px;
    padding-bottom:40px;
  }
  .page4 img,.page5 img{
    width:80%;
    margin-left:10%;
  }
  .page4,.page5,.page6{
    background-image:radial-gradient(#fff,#f7ede5)
  }
  .page6 p {
    margin-bottom:0;
  }
  .page6 .btn{
    margin-left:35%;
  }
  .page6 img.more{
    width:40px;
  }
  .page7 {
    background-image:radial-gradient(#fff,#cec2ba);
    padding-top:120px;
    padding-bottom:80px;
  }
  .page7 h3{
    font:18px simsun;
    text-align:center;
    font-weight:700;
    margin-bottom:0;
  }
  .page7 p{
    font:12px simsun;
    text-align:center;
  }
  .van-button--large{
    margin-top:20px;
  }
  .bottom{
    position:fixed;
    width:100%;
  }
  .van-hairline--top-bottom{
    background:#a98f83;
  }
  .van-tabbar-item--active{
    color:#fff;
  }
</style>