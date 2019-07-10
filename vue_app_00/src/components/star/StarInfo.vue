<template>
  <div class="newsinfo-container">
    <h3 class="title">{{newsinfo.title}}</h3>
    <p class="subtitle">
      <span>发表时间：{{newsinfo.add_time|dateFormat}}</span>
      <span>点击：{{newsinfo.click}}次</span>
    </p>
    <hr>
    <div class="content" v-html="newsinfo.content"></div>
    <comment :id="this.id"></comment>
  </div>
</template>
<script>
import comment from "../subcomponents/comments.vue";
export default {
  data() {
    return {
      id: this.$route.params.id,
      newsinfo: {}
    };
  },
  created() {
    this.getNewsInfo();
  },
  methods: {
    getNewsInfo() {
      this.axios.get("star/starinfo/" + this.id).then(result => {
          console.log(result)
          this.newsinfo = result.data.message[0];
      });
    }
  },
  components: {
    "comment": comment
  }
};
</script>
<style scoped>
.newsinfo-container {
  padding: 0 4px;
}  
.newsinfo-container .title {
  font-size: 16px;
  text-align: center;
  margin: 15px 0;
  color: red;
}
.newsinfo-container .subtitle {
  font-size: 13px;
  color: #226aff;
  display: flex;
  justify-content: space-between;
}
.newsinfo-container .content img{
  width: 100%;
}
</style>