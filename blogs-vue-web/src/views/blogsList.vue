<template>
  <div class="page_blogs_list">
    <div class="blogs_list_item" v-for="item in hotList" :key="item.id" v-if="currentPage == 1">
      <div class="blogs_item_title">{{ item.title }}</div>
      <div class="blogs_item_msg_con">
        <span class="iconfont icon-zhiding" v-if="item.attr == 'h'">置顶</span>
        <span class="iconfont icon-shalou">发布时间{{ item.dateline*1000 | formData }}</span>
        <span class="iconfont icon-liulanliang">点击{{item.hits}}</span>
      </div>
      <div class="blogs_item_summary" v-html="item.summary"></div>
      <div class="blogs_item_btn" @click="lookDetail(item.id)">
        阅读全文
        <span class="iconfont icon-xiangyou"></span>
      </div>
    </div>
    <div class="blogs_list_item" v-for="item in blogList.data" :key="item.id">
      <div class="blogs_item_title">{{ item.title }}</div>
      <div class="blogs_item_msg_con">
        <span class="iconfont icon-zhiding" v-if="item.attr == 'h'">置顶</span>
        <span class="iconfont icon-shalou">发布时间{{ item.dateline*1000 | formData }}</span>
        <span class="iconfont icon-liulanliang">点击{{item.hits}}</span>
      </div>
      <div class="blogs_item_summary" v-html="item.summary"></div>
      <div class="blogs_item_btn" @click="lookDetail(item.id)">
        阅读全文
        <span class="iconfont icon-xiangyou"></span>
      </div>
    </div>

    <!-- 分页 -->
    <el-pagination
      background
      layout="prev, pager, next"
      :hide-on-single-page="blogList.total >5? true:false"
      v-if="blogList.total"
      :total="blogList.total"
      :page-size="5"
      :current-page="currentPage"
      @current-change="pageChange"
      class="page_class"
    ></el-pagination>
  </div>
</template>

<script>
const {
  getCateList,
  getCateHotList,
  blogsListByCateId,
} = require("../api/blogs");
const config = require("../config/config");
export default {
  data() {
    return {
      currentPage: 1,
      hotList: [],
      cateid: null,
      blogList: {},
    };
  },
  created() {
    this.cateid = this.$route.query.cateid;
    this.getCateHotList(this.cateid);
    this.getBlogsList({ id: this.cateid, page: 1, rows: 5 });
    this.pageChange(1);
  },
  mounted() {},
  methods: {
    lookDetail(id) {
      this.$router.push(`/main/blogdetail?id=${id}`);
    },

    // getBlogsList() {},
    async getBlogsList(data) {
      try {
        const res = await blogsListByCateId(data.id, data.page, data.rows);
        if (res.data.code === 10000) {
          // console.log(res)
          const dataObj = res.data.data;
          dataObj.data.forEach((value) => {
            value.summary = value.summary.replace(
              /res\//g,
              `${config.prefix}res/`
            );
          });
          this.blogList = dataObj;
        }
      } catch (error) {
        console.log(error);
      }
    },
    async getCateHotList(id) {
      const listRes = await getCateHotList(id);
      if (listRes.data.code === 10000) {
        const dataObj = listRes.data.data;
        dataObj.forEach((value) => {
          value.summary = value.summary.replace(
            /res\//g,
            `${config.prefix}res/`
          );
        });
        this.hotList = dataObj;
      } else {
        console.log("获取列表hot失败");
      }
    },
    pageChange(page) {
      this.currentPage = page;
      const data = {
        id: this.cateid,
        page,
        rows: 5,
      };
      this.getBlogsList(data);
    },
    loading(flag) {
      if (flag) {
        this.$Message.loading({
          content: "Loading...",
          duration: 10,
        });
      } else {
        this.$message.destroy();
      }
    },
  },
  watch: {
    $route(to, from) {
      this.cateid = to.query.cateid;
      this.getCateHotList(this.cateid);
      this.getBlogsList({ id: this.cateid, page: 1, rows: 5 });
    },
  },
};
</script>

<style lang="less">
.page_blogs_list {
  color: #222222;
  letter-spacing: 1px;
  .page_class{
    margin-top: 30px;
    .active{
      background: #222 !important;
    }
    li{
      background: rgba(235, 235, 235, 0.8);
    }
  }
  .blogs_list_item {
    padding: 30px 0;
    font-size: 24px;
    cursor: pointer;
    border-bottom: 1px dashed #ddd;

    .blogs_item_btn {
      margin: auto;
      cursor: pointer;
      text-align: center;
      display: flex;
      align-items: center;
      justify-content: center;
      border: 2px solid #000;
      width: 110px;
      font-size: 14px;
      transition: all 0.5s;
      &:hover {
        background: #222;
        color: #eee;
      }
    }
    .blogs_item_summary {
      font-size: 15px;
      text-align: left;
      padding: 50px 20px;
      line-height: 25px;
      overflow: hidden;
    }
    .blogs_item_msg_con {
      span {
        font-size: 13px;
        padding: 0 10px;
        border-right: 1px solid #ddd;
        color: #eee;
        &:last-child {
          border-right: none;
        }
      }
    }
  }
  .blogs_list_item:last-child {
    border: none;
  }
}
</style>