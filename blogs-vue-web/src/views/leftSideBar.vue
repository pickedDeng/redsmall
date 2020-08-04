<template>
  <div class="leftSideBar">
    <!-- 站点信息 -->
    <div class="singleDiv circle_top" style="overflow:hidden">
      <div class="sitetit_top" v-if="websiteMsg">
        <div class="siteCon">
          <div class="sitemsg">
            <div class="thumb">
              <img :src="websiteMsg.thumb" :title="websiteMsg.title" />
            </div>
          </div>
          <span>{{ websiteMsg.title }}</span>
        </div>

        <p>{{ websiteMsg.descripte }}</p>
        <p class="circle_connect">
          <a :href="`http://wpa.qq.com/msgrd?v=3&uin=${websiteMsg.qq}&amp;site=qq&amp;menu=yes`"><span class="iconfont icon-qq" :title="websiteMsg.qq"></span></a>
          <span class="iconfont icon-renshutongji" :title="`历史人数：${websiteMsg.historynumber}`"></span>
          <a :href="websiteMsg.git" target="_blank" style="color:#ccc"><span class="iconfont icon-github" :title="websiteMsg.git"></span></a>
        </p>
      </div>
    </div>

    <div class="singleDiv circle_bottom">
      <!-- side 菜单 -->
      <div class="side_menu">
        <ul>
          <li
            :class="['iconfont',item.iconfont,currentSelect == index?'currentSelectClass':'']"
            v-for="(item,index) in leftSideBarList"
            :key="item.id"
            @click="sideBarClick(item,index)"
          >{{item.title}}</li>
        </ul>
      </div>
    </div>
  </div>
</template>

<script>
import { getCateList, blogsListByCateId } from "../api/blogs";
import { siteMsg,historyHits } from "../api/site"
export default {
  data() {
    return {
      currentSelect: 0,
      leftSideBarList: [
        {
          path: "/main/picture",
          title: "相册",
          iconfont: "icon-xiangce",
        },
        {
          path: "/main/friendLink",
          title: "友情链接",
          iconfont: "icon-youqinglianjie",
        },
        {
          path: "/main/words",
          title: "留言板",
          iconfont: "icon-liuyanban-yimidida",
        },
        {
          path: "/main/about",
          title: "关于",
          iconfont: "icon-guanyuwo",
        },
      ],
      websiteMsg:{},
    };
  },
  created() {
    this.cateList().then(() => {
      this.switchRouter();
    });
    this.getSiteMsg()
  },
  methods: {
    switchRouter() {
      this.leftSideBarList.forEach((value, index) => {
        if (value.path == this.$route.path) {
          this.currentSelect = index;
        }
      });
    },
    sideBarClick(item, index) {
      this.currentSelect = index;
      if(this.$route.fullPath === item.path){
        return
      }
      this.$router.push(item.path);
    },
    async cateList() {
      try {
        const cateRes = await getCateList();
        if (cateRes.data.code === 10000) {
          cateRes.data.data.forEach((value) => {
            value.iconfont = "icon-icon_A";
            value.path = `/main/blogs?cateid=${value.id}`;
          });
          this.leftSideBarList = cateRes.data.data.concat(this.leftSideBarList);
          this.$router.push(this.leftSideBarList[0].path)
          // 根据id获取博客列表
        } else {
          // this.$Message.error("获取博客分类失败");
        }
      } catch (error) {
        console.log(error);
      }
    },
    async getSiteMsg(){
        const res  = await siteMsg();
        this.websiteMsg = res.data.data;
        this.$store.commit("saveSiteMsg",this.websiteMsg)
    }
  },
  
};
</script>

<style lang="less">
.leftSideBar {
  .siteCon {
    display: flex;
    justify-content: center;
    align-items: center;
  }
  .singleDiv {
    background: rgba(235, 235, 235, 0.8);
  }
  .circle_top {
    border-radius: 8px 8px 0 0;
  }
  .circle_bottom {
    border-radius: 0 0 8px 8px;
  }
  .sitemsg {
    overflow: hidden;
    margin-right: 15px;
    .thumb {
      img {
        width: 50px;
        height: 50px;
        border-radius: 50%;
      }
    }
  }
  .side_menu {
    height: auto;
    padding: 20px 0;
    border-radius: 0 5px 5px 0;
    ul {
      color: #222;
      text-align: left;
      .iconfont::before {
        margin-right: 6px;
      }
      .currentSelectClass {
        background: rgba(235, 235, 235, 0.95);
      }
      li {
        padding: 14px 14px 14px 28px;
        cursor: pointer;
        font-size: 15px;
        font-family: "宋体";
        &:hover {
          background: rgba(235, 235, 235, 0.95);
        }
      }
    }
  }
  .sitetit_top {
    width: 100%;
    .circle_connect {
      span {
        font-size: 20px;
        margin: 5px;
        cursor: pointer;
      }
    }
    span {
      font-size: 24px;
    }
    p {
      margin-top: 10px;
      color: #ddd;
    }
    padding: 20px 0;
    background: #222222;
    color: #fff;
  }
}
</style>