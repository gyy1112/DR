<template>
  <div class="cmt-container">
    <h3>发表评论</h3>
    <hr>
    <textarea placeholder="请输入评论内容" maxlength="120" v-model="msg"></textarea>
    <mt-button type="primary" size="large" @click="postComment">发表评论</mt-button>
    <div class="cmt-list">
      <div class="cmt-item" v-for="(item, i) in comments" :key="item.add_time">
        <div class="cmt-title">
          第{{ i+1 }}楼&nbsp;&nbsp;用户：{{ item.user_name }}&nbsp;&nbsp;发表时间：{{ item.add_time | dateFormat }}
        </div>
        <div class="cmt-body">
          {{ item.content == 'undefined' ? '此用户很懒，什么都没说': item.content }}
        </div>
      </div>
    </div>
    <mt-button type="danger" size="large" plain @click="getMore">加载更多</mt-button>
  </div>
</template>
<script>
export default {
  data() {
    return {
      pageIndex: 1,
      comments: [],
      msg: "" 
    }
  },
  created() {
    this.getComments();
  },
  methods: {
    getComments() {
      this.axios.get("star/getcomments",{params:{
        id:this.id,pageindex:this.pageIndex
      }}).then(result => {
            this.comments = this.comments.concat(result.data);
      });
    },
    getMore() {
      this.pageIndex++;
      this.getComments();
    },
    timeChange(dateString, formdate) {
      if (dateString == null || dateString == '') {
          return '';
      }
      var date = new Date(parseInt(dateString));
      var year = date.getFullYear();
      var month = date.getMonth() + 1 < 10 ? "0" + (date.getMonth() + 1) : date.getMonth() + 1;
      var currentDate = date.getDate() < 10 ? "0" + date.getDate() : date.getDate();
      var hours = date.getHours() < 10 ? "0" + date.getHours() : date.getHours();
      var minutes = date.getMinutes() < 10 ? "0" + date.getMinutes() : date.getMinutes();
      if (formdate == null || formdate == "yyyy-mm-dd HH:mm") {
          return year + "-" + month + "-" + currentDate + " " + hours + ":" + minutes;
      }
    },
    postComment() {
      if (this.msg.trim().length === 0) {
        return this.$toast("评论内容不能为空！");
      }
      var  abc=this;
      this.axios.post("star/postcomment",
          `id=${this.$route.params.id}&user_name=匿名用户&add_time=${this.timeChange(Date.now())}&content=${this.msg.trim()}`
      ).then(function(result) {
            var cmt = {
              user_name: '匿名用户',
              add_time: new Date(),
              content: abc.msg.trim()
            };
            abc.comments.unshift(cmt);
            abc.msg = "";
        });
    }
  },
  props: ["id"]
};
</script>
<style scoped>
.cmt-container h3{
  font-size: 18px;
}
.cmt-container textarea {
  font-size: 14px;
  height: 85px;
  margin: 0;
}
.cmt-container .cmt-list {
  margin: 5px 0;
}  
.cmt-container .cmt-list .cmt-item {
  font-size: 13px;
}
.cmt-container .cmt-list .cmt-title {
  line-height: 30px;
  background-color: #ccc;
}
.cmt-container .cmt-list .cmt-body {
  line-height: 35px;
  text-indent: 2em;
  font-size:14px;
}
</style>