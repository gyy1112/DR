<template>
  <div class="mui-numbox" data-numbox-min='1' data-numbox-max='99'>
    <button class="mui-btn mui-btn-numbox-minus" type="button">-</button>
    <input id="test" class="mui-input-numbox" type="number" value="1" @change="countChanged" ref="numbox" />
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
      this.$emit("getcount", parseInt(this.$refs.numbox.value));
    }
  },
  props: ["max"],
};
</script>
<style scoped>
</style>
