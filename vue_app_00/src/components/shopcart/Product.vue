<template>
  <div>
    <van-nav-bar title='求婚钻戒' left-text="" left-arrow @click-left="onClickLeft">
      <van-icon name="wap-home" slot="right" @click="onClickRight" />
      <van-icon name="bars" slot="right" />
    </van-nav-bar>
    <van-search v-model="value" placeholder="请输入搜索关键词" show-action shape="round" @search="onSearch">
      <div slot="action" @click="onSearch">搜索</div>
    </van-search>
    <van-tabs v-model="active" @click="changes">
      <van-tab title="综合" name="综合" @click="tab1">
        <ul class="ringimg">
          <li v-for="(item,i) of tj" :key="i" >
            <router-link :to="'/shopcart/product/'+item.id">
              <img :src="item.img">
              <p>{{item.title}}</p>
              <span>￥{{item.price}}</span>
            </router-link>
          </li>
        </ul>
        <div class="ringbottom">已经到底了...</div>
      </van-tab>
      <van-tab title="人气" name="人气" @click="tab2">
        <ul class="ringimg">
          <li v-for="(a,i) of rq" :key="i">
            <router-link :to="'/shopcart/product/'+a.id">
              <img :src="a.img">
              <p>{{a.title}}</p>
              <span>￥{{a.price}}</span>
            </router-link>
          </li>
        </ul>
        <div class="ringbottom">已经到底了...</div>
      </van-tab>
      <van-tab title="新品" name="新品" @click="tab3">
        <ul class="ringimg">
          <li v-for="(b,i) of xp" :key="i">
            <router-link :to="'/shopcart/product/'+b.id">
              <img :src="b.img">
              <p>{{b.title}}</p>
              <span>￥{{b.price}}</span>
            </router-link>  
          </li>
        </ul>
        <div class="ringbottom">已经到底了...</div>
      </van-tab>
      <van-tab title="价格" v-model="change" name="价格" @click="tab4">
        <ul class="ringimg">
          <li v-for="(c,i) of jg" :key="i">
            <router-link :to="'/shopcart/product/'+c.id">
              <img :src="c.img">
              <p>{{c.title}}</p>
              <span>￥{{c.price}}</span>
            </router-link>  
          </li>
        </ul>
        <div class="ringbottom">已经到底了...</div>
      </van-tab>
    </van-tabs>  
  </div>
</template>
<script>
export default {
  data() {
    return {
      value:'',
      active:0,
      change:'ASC',
      tj:{},
      rq:{},
      xp:{},
      jg:{}
    }
  },
  created() {
    this.tab1()
  },
  methods: {
    changes($event){
      if($event == '综合'){
        this.tab1()
      }else if($event == '人气'){
        this.tab2()
      }else if($event == '新品'){
        this.tab3()
      }else if($event == '价格'){
        this.tab4()
      }
    },
    tab1(){
      this.axios.get('shopcart/zonghe').then(result=>{
        this.tj = result.data
      })
    },
    tab2(){
      this.axios.get('shopcart/renqi').then(result=>{
        console.log(result.data)
        this.rq = result.data
      })
    },
    tab3(){
      this.axios.get('shopcart/xinpin').then(result=>{
        console.log(result.data)
        this.xp = result.data
      })
    },
    tab4(){
      var state = this.change
      this.axios.get('shopcart/jiage',{params:{state}}).then(result=>{
        if(state =="ASC"){
          this.change = 'DESC'
        }else{
          this.change = 'ASC'
        }
        console.log(result.data)
        this.jg = result.data
      })
    },
    onClickLeft(){
      this.$router.go(-1)
    },
    onClickRight(){
      this.$router.push('/main')
    },
    onSearch(){
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
  .van-search{
    padding-bottom:0;
    vertical-align:top;
  }
  .van-search__content{
    background:#fff;
  }
  .van-search__action{
    margin-bottom:15px;
    padding-left:0;
  }
  .van-tabs__wrap{
    border-top:1px solid #e8e8e8;
    border-bottom:1px solid #e8e8e8;
  }
  .van-tab__pane{
    background:#fff;
  }
  .van-tabs__line{
    height:0;
  }
  .ringimg{
    display:flex;
    flex-wrap:wrap;
  }
  .ringimg li{
    width:50%;
    border-bottom:1px solid #e8e8e8;
    border-right:1px solid #e8e8e8;
  }
  .ringimg li img{
    width:100%;
  }
  .ringimg li p{
    padding: 0 5px;
    font-size:14px;
    color:#5d5d5d;
    text-align:center;
    height:40px;
    margin-bottom:0;
  }
  .ringimg li span{
    display:block;
    height:30px;
    text-align:center;
    line-height:30px;
    color:#bf7a58;
    font-size:14px;
  }
  .ringbottom{
    color:#ccc;
    font-size:12px;
    margin-top:20px;
    text-align:center;
  }
</style>