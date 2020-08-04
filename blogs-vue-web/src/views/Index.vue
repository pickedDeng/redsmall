<template>
  <div class="index">
    <el-row :gutter="20">
      <el-col  :span="3" :offset="5" :class="['animated',mountedFlag?'bounceInDown':'']">
        <!-- 左侧sidebar -->
        <left-side-bar></left-side-bar>
      </el-col>
      <el-col :span="11" :offset="0">
        <!-- 主要内容 -->
        <router-view></router-view>
      </el-col>
    </el-row>
  </div>
</template>

<script>
import leftSideBar from "../views/leftSideBar";
import mainContent from "../views/mainContent";
import { historyHits } from "../api/site"
export default {
  data() {
    return {
      mountedFlag: false,
    };
  },
  components: {
    leftSideBar,
    mainContent,
  },
  mounted() {
    this.mountedFlag = true;
    historyHits();//增加历史人数
  },
  methods: {},
};
</script>

<style lang="less">
.index {
  color: #fff;
  padding: 40px 0 0;
  height: 100%;
  box-sizing: border-box;
  overflow-y: auto;
  overflow-x: hidden;
}
</style>