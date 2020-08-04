<template>
  <div class="main_content">
    <router-view :class="['animated',changeFlag?'fadeInDown':'']"></router-view>
  </div>
</template>

<script>
import blogsList from "./blogsList";
export default {
  components: {
    blogsList,
  },
  data() {
    return {
      changeFlag: false,
    };
  },
  mounted() {
    this.changeFlag = true;
  },
  watch:{
    // 切换动画
    $route(to,from){
      this.changeFlag = false
      this.changeFlag = true
    }
  }
};
</script>

<style lang="less">
.main_content {
  margin-left: 25px;
  padding: 50px;
  border-radius: 5px;
  height: 100%;
  overflow: auto;
  background: rgba(235, 235, 235, 0.8);
  //   .fade-enter-active,
  //   .fade-leave-active {
  //     transition: opacity 0.8s;
  //   }
  //   .fade-enter, .fade-leave-to /* .fade-leave-active below version 2.1.8 */ {
  //     opacity: 0;
  //   }
}
</style>