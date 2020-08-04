<template>
  <div class="blogdetail" v-if="blogdetail">
    <div class="blogs_item_title">{{ blogdetail.title }}</div>
    <div class="blogs_item_msg_con">
      <span class="iconfont icon-zhiding" v-if="blogdetail.attr == 'h'">置顶</span>
      <span class="iconfont icon-shalou">发布时间{{ blogdetail.dateline*1000 | formData }}</span>
      <span class="iconfont icon-liulanliang">点击{{blogdetail.hits}}</span>
    </div>
    <div class="blogs_item_summary" v-html="blogdetail.content"></div>

    <h2>评论区</h2>
    <div class="leave_apply">
      <el-form :model="ruleForm" ref="ruleForm" label-width="70px" class="demo-ruleForm">
        <div>
          <el-form-item label="昵称：" required>
            <el-input v-model="ruleForm.title" size="small"></el-input>
          </el-form-item>
          <el-form-item label="内容：" required class="wordsContent">
            <el-input type="textarea" :rows="3" placeholder="这瓜你有什么看法？" v-model="ruleForm.content"></el-input>
          </el-form-item>
        </div>
      </el-form>
      <div class="form_foot">
        <el-button
          :type="typeMsg"
          round
          class="submit"
          @click="applySubmitClick(true)"
          :loading="loading"
          size="small"
        >{{submitMsg}}</el-button>
        <p
          @click="ruleForm.fullname = ruleForm.mobile = ruleForm.note = ruleForm.qq = ruleForm.content = ''"
        >重置</p>
      </div>
    </div>
    <div class="wordsList_content">
      <div class="wordsList_item outcontent" v-for="item in commentList" :key="item.id">
        <img src="../assets/images/people.png" alt />
        <div class="user_info">
          <p class="color">
            <span>{{ item.title }}</span>
            ip-{{item.ip}}
            <span class="back_reply" @click="back_words(item)">回复</span>
          </p>
          <p class="color">{{ item.addtime*1000 | formData }}</p>
          <p class="wordsContent" v-text="item.content"></p>
          <div class="leave_apply" v-if="item.showFlag && item.id == current_Reply.id">
            <span class="el-icon-close" @click="item.showFlag = false"></span>
            <el-form :model="ruleForm" ref="ruleForm" label-width="70px" class="demo-ruleForm">
              <div>
                <el-form-item label="昵称：" required>
                  <el-input v-model="ruleForm.title" size="small"></el-input>
                </el-form-item>
                <el-form-item label="内容：" required class="wordsContent">
                  <el-input
                    type="textarea"
                    :rows="3"
                    :placeholder="`@${current_Reply.title}`"
                    v-model="ruleForm.content"
                  ></el-input>
                </el-form-item>
              </div>
            </el-form>
            <div class="form_foot">
              <el-button
                :type="typeMsg"
                round
                class="submit"
                @click="applySubmitClick(false)"
                :loading="loading"
                size="small"
              >{{submitMsg}}</el-button>
              <p
                style="color:#fff"
                @click="ruleForm.fullname = ruleForm.mobile = ruleForm.note = ruleForm.qq = ruleForm.content = ''"
              >重置</p>
            </div>
          </div>
          <!-- 管理员回复 -->
          <div class="admin_reply" v-for="innervalue in item.children" :key="innervalue.id">
            <div class="wordsList_item">
              <img src="../assets/images/admin.png" alt v-if="innervalue.admin_id !=0" />
              <img src="../assets/images/people.png" alt v-else />
              <div class="user_info">
                <p class="color">
                  <span v-if="innervalue.admin_id !=0">博主：红色小裤衩</span>
                  <span v-else>{{ innervalue.title }}</span>
                  ip-{{ innervalue.ip? innervalue.ip:'127.0.0.1'}}
                  <span
                    class="back_reply"
                    @click="back_words(item)"
                  >回复</span>
                </p>
                <p class="color">{{ innervalue.addtime*1000 | formData }}</p>
                <p class="wordsContent" v-html="innervalue.content"></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import {
  blogsDetail,
  getCommentByBlogId,
  addHits,
  commentApply,
} from "../api/blogs";
const config = require("../config/config");
export default {
  data() {
    return {
      current_Reply: {},
      dialogVisible: false,
      id: null,
      blogdetail: {},
      commentList: [],
      ruleForm: {
        ip: returnCitySN["cip"],
        title: returnCitySN["cname"] + "网友",
        content: "",
        addtime: "",
      },
      submitMsg: "提交",
      loading: false,
      typeMsg: "info",
    };
  },
  created() {
    this.id = this.$route.query.id;
    this.getDetail();
  },
  mounted() {
    addHits(this.id);
    this.getComment();
  },
  methods: {
    async getComment() {
      const res = await getCommentByBlogId(this.id);
      this.commentList = res.data.data;
    },
    back_words(item) {
      this.ruleForm.content = "";
      item.showFlag = true;
      this.current_Reply = item;
    },
    async applySubmitClick(flag) {
      if (!this.ruleForm.title || !this.ruleForm.content) {
        this.$message("请检查信息是否填写完整");
        return;
      }
      if (!this.isScript(this.ruleForm.title, this.ruleForm.content)) {
        this.$message.error("禁止脚本");
        return;
      }
      this.ruleForm.addtime = parseInt(Date.now() / 1000);
      this.ruleForm.tid = this.id;
      if (flag) {
        this.ruleForm.parent_id = 0
      } else {
        if (this.current_Reply.parent_id) {
          this.ruleForm.parent_id = this.current_Reply.parent_id;
        } else {
          this.ruleForm.parent_id = this.current_Reply.id;
        }
      }

      this.loading = true;
      this.submitMsg = "提交中...";
      const applyRes = await commentApply(this.ruleForm);
      if (applyRes.data.code === 10000) {
        this.getComment();
        this.ruleForm.content = ""
        this.loading = false;
        this.submitMsg = "提交成功√";
        this.typeMsg = "success";
        setTimeout(() => {
          this.submitMsg = "提交";
          this.typeMsg = "info";
        }, 3000);
      } else {
        this.loading = false;
        this.submitMsg = "提交失败×";
        this.typeMsg = "danger";
        setTimeout(() => {
          this.submitMsg = "提交";
          this.typeMsg = "info";
        }, 3000);
      }
    },
    isScript(a, b) {
      const arr = [a, b];
      let flag = true;
      arr.forEach((value, index) => {
        if (value.indexOf("script") > -1) {
          flag = false;
          return flag;
        }
      });
      return flag;
    },
    //增加阅读数
    // 获取详情
    async getDetail() {
      if (!this.id) {
        this.$message("没有文章id");
        return;
      }
      const res = await blogsDetail(this.id);
      if (res.data.code === 10000) {
        const dataObj = res.data.data;
        dataObj.content = dataObj.content.replace(
          /res\//g,
          `${config.prefix}res/`
        );
        this.blogdetail = dataObj;
      } else {
        console.log("获取博客详情失败");
      }
    },
  },
};
</script>

<style lang="less">
.blogdetail {
  .leave_apply {
    margin: 20px 0;
    padding: 8px;
    border: 1px dashed #ddd;
    .form_foot {
      justify-content: center;
      display: flex;
      flex-wrap: wrap;
      color: #fff;
      .submit {
        width: 120px;
        letter-spacing: 5px;
      }
      p {
        text-align: right;
        color: #fafafa;
        font-size: 14px;
        cursor: pointer;
        width: 100%;
      }
    }
    .demo-ruleForm {
      > div {
        display: flex;
        flex-wrap: wrap;
        justify-content: left;
        .el-form-item {
          width: 30%;
          margin-right: 10px;
        }
        .wordsContent {
          width: 100%;
        }
      }
    }
  }
  > h2 {
    text-align: left;
    border-left: 3px solid #222;
    color: #222;
    padding: 0 15px;
    margin: 30px 0;
  }
  .el-icon-close {
    float: right;
    font-size: 20px;
    cursor: pointer;
  }
  .wordsList_content {
    text-align: left;
    .wordsList_item {
      display: flex;
      margin: 25px;

      .back_reply {
        width: 60px;
        color: #222;
        float: right;
        font-size: 14px;
        cursor: pointer;
      }
      img {
        width: 40px;
        height: 40px;
      }
      .user_info {
        width: 600px;
        margin-left: 15px;
        .wordsContent {
          color: #222;
          font-size: 14px;
        }
        .color {
          color: #666;
        }
        p {
          color: #222;
          font-size: 16px;
          height: 30px;
          span {
            color: #1abc9c;
            margin-right: 20px;
          }
        }
      }
    }
    .outcontent {
      border-bottom: 1px dashed #ddd;
    }
    .icon-nimingyonghu {
      font-size: 40px;
      color: #222;
    }
  }
  .blogs_item_title {
    font-size: 24px;
  }
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
</style>