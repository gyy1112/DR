<template>
  <div class="mui-numbox" data-numbox-min='1' data-numbox-max='99' style="height:25px;">
    <button class="mui-btn mui-btn-numbox-minus" type="button">-</button>
    <input id="test" class="mui-input-numbox" type="number" :value="initcount" @change="countChanged" ref="numbox" readonly />
    <button class="mui-btn mui-btn-numbox-plus" type="button">+</button>
  </div>
</template>
<script>
import mui from '../../lib/mui/js/mui.js'
export default {
  mounted() {
    mui(".mui-numbox").numbox();
  },
  methods: {
    countChanged() {
      this.$store.commit("updateGoodsInfo", {
        productid: this.goodsid,
        count: this.$refs.numbox.value
      });
      var phone = localStorage.getItem('phone')
      this.axios.get('updusercarts',{params:{
        phone:phone,productid:this.goodsid,count:this.$refs.numbox.value
      }}).then(res=>{
        console.log('用户购物车更新')
      })
    }
  },
  props: ["initcount", "goodsid"]
};
</script>
<style scoped>
</style>
