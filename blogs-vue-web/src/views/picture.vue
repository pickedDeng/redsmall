<template>
  <div class="picture">
    <div class="pic_content">
      <img :src="item" alt="" v-for="(item,index) in picList" :key="index" class="pic_list" @click="imgClick(item)">
    </div>
  </div>
</template>

<script>
import { getPic } from "../api/site";
export default {
  data() {
    return {
      picList: [],
    };
  },
  created() {
    this.getPicList()
  },
  methods: {
    imgClick(url){
      window.open(url)
    },
    async getPicList() {
      try {
        const picListRes = await getPic();
        if(picListRes.data.code===10000){
          console.log(picListRes)
          this.picList = picListRes.data.data
        }
      } catch (error) {
        this.$message.error("获取失败")
        console.log(error);
      }
    },
  },
};
</script>

<style lang="less">
.picture {
  .pic_content{
    display: flex;
    justify-content: left;
    flex-wrap: wrap;
    .pic_list{
      width: 178px;
      height: 178px;
      padding: 20px;
      border-radius: 25px;
      cursor: pointer;
    }
  }
}
</style>