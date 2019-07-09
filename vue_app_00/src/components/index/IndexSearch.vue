<template>
  <div class="container">
    <van-nav-bar title="预约进店" left-text="" left-arrow @click-left="onClickLeft">
      <van-icon name="wap-home" slot="right" @click="onClickRight" />
      <van-icon name="bars" slot="right" />
    </van-nav-bar>
    <div class="lwrapper" ref="lwrapper">
      <ul class="left">
        <li @click="selectMenu(index,$event)" v-for="(item,i) of provice" :key="i">{{item.provice}}<i></i></li>
      </ul>
    </div>
    <div class="rwrapper" ref="rwrapper">
      <ul class="right">
        <li v-for="(item,i) of lists" :key="i" class="shoplist">
          <div>
            <h5><van-icon name="location-o" />当前选择：</h5>
            <h3>推荐店铺</h3>
            <div class="card">
              <div><img :src="simg"></div>
              <div class="shopname">
                <span>{{item.sname}}</span>
                <a href="#">立即预约</a>
              </div>
              <div class="address">
                <van-icon name="location-o" />
                {{item.saddress}}
              </div>
            </div> 
          </div>     
        </li>
      </ul>          
    </div>
  </div>
</template>
<script>
import BScroll from 'better-scroll';
  export default {
    data() {
      return {
        lists:[],
        simg:"",
        provice:[],
      }
    },
    created() {
      this.getshoplist()
    },
    // computed: {
    //   currentIndex(){
    //       for( let i = 0;i<this.listHeight.length;i++ ){
    //         let height1 = this.listHeight[i];
    //         let height2 = this.listHeight[i+1];
    //         //当遍历到listHeight最后一个元素的时候，height2的值为undefined,如果是
    //         //最后一个元素的话!height2为真，后面就不需要判断了
    //         if( !height2 || (this.scrollY >= height1 && this.scrollY<height2)){
    //           return i;
    //         }
    //       }
    //       //默认情况下是返回第一个元素
    //       return 0;
    //   }
    // },
    mounted() {
      // 设置20ms的延迟
      setTimeout(() => {
          this._initScroll();
      }, 20);
      // 监听窗口改变重置高度
      window.addEventListener('resize', () => {
          this.height = window.innerHeight + 'px';
      })
    },
    methods: {
      selectMenu(index,event){
        console.log(111)
        let foodList = this.$refs.shoplist; 
        let el = foodList[index];
        this.foodsScroll.scrollToElement(el,300);                                       
      },
       _initScroll() {
          this.menuScroll = new BScroll(this.$refs.lwrapper,{
        });
        this.foodsScroll = new BScroll(this.$refs.rwrapper,{
        });
      },
    //  _calculateHeight(){
    //       let foodList = this.$refs.shoplist; //获取到所有的ref='foodList'的DOM元素
    //       let height = 0;
    //       this.listHeight.push(height); //第一个元素的高度是0
    //       for( let i =0;i<foodList.length;i++ ){
    //         let item = foodList[i];
    //         height += item.clientHeight;//通过原生DOM中的js获取到li的高度，并且累加
    //         this.listHeight.push(height);
    //       } 
    //   },
      onClickLeft(){
        this.$router.go(-1)
      },
      onClickRight(){
        this.$router.push('/main')
      },
      getshoplist(){
        this.axios.get("index/search").then(result=>{
          //console.log(result.data)
          this.provice = result.data.provices
          this.lists = result.data.address
         
          this.simg=require(this.lists[1].simg)
          console.log(this.simg)
        
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
  .lwrapper{
    width:25%;
    overflow:hidden;
    height:623px;
    background:#fff;
    float:left;
  }
  .rwrapper{
    width:75%;
    overflow:hidden;
    height:623px;
    background:#fff;
    float:right;
  }
  .lwrapper .left li{
    height:55px; 
    font-size: 15px;
    color:#222;
    text-align:center;
    line-height:55px;
    position:relative;
    border-bottom:1px solid #eee;
    border-right:1px solid #eee;
  }
  .lwrapper .left i.current{
    position:absolute;
    width:6px;
    height:18px;
    background:#a57a68;
    border-radius:3px;
    top:18px;
    left:15px;
  }
  .rwrapper .right h5{
    color:#a57a68;
    margin:20px 0 0 15px;
  }
  .rwrapper .right h3{
    margin:17px 0 0 15px;
    color:#222;
    font-size:16px;
    font-weight:400;
  }
  .card{
    width:100%;
    padding:12px 15px;
    border-bottom:1px solid #ccc;
  }
  .card img{
    width:100%;
  }
  .shopname{
    margin-top:8px;
  }
  .shopname span{
    font-size:15px;
    color:#222;
  }
  .shopname a{
    float:right;
    padding:0 5px;
    border:1px solid #a57a68;
    border-radius:5px;
    font-size:12px;
    color:#a57a68;
  }
  .address{
    font-size:12px;
    line-height:18px;
    margin-top:5px;
    color:#888;
  }
</style>