<template>
  <div class="friendLink">
    <h2>友情链接</h2>
    <div class="link_list_content">
      <div
        class="link_item"
        v-for="(item,index) in linkList"
        :key="index"
        @click="gotoLink(item.linkurl)"
      >
        <img :src="item.thumb" :alt="item.title" :title="item.note" class="link_thumb" />
        <h3>{{item.title}}</h3>
      </div>
    </div>

    <div class="link_apply">
      <div class="link_apply_content">
        <h2>友链提交格式</h2>
        <p>
          <span class="circle"></span>
          <span>名称：</span> 红色小裤衩
        </p>
        <p>
          <span class="circle"></span>
          <span>描述：</span> 这个人很懒，什么都不想写...
        </p>
        <p>
          <span class="circle"></span>
          <span>网址：</span>
          <a href="http://pickeddeng.club">http://pickeddeng.club</a>
        </p>
        <p>
          <span class="circle"></span>
          <span>封面：</span>http://xxxx.jpg
        </p>
      </div>

      <div class="apply_msg">
        <el-form :model="ruleForm" ref="ruleForm" label-width="70px" class="demo-ruleForm">
          <el-form-item label="名称：" required>
            <el-input v-model="ruleForm.title"></el-input>
          </el-form-item>
          <el-form-item label="描述：" required>
            <el-input v-model="ruleForm.note"></el-input>
          </el-form-item>
          <el-form-item label="网址：" required>
            <el-input v-model="ruleForm.linkurl"></el-input>
          </el-form-item>
          <el-form-item label="封面：" required>
            <el-input v-model="ruleForm.thumb"></el-input>
          </el-form-item>
        </el-form>
        <div class="form_foot">
          <el-button
            :type="typeMsg"
            round
            class="submit"
            @click="applySubmitClick"
            :loading="loading"
          >{{submitMsg}}</el-button>
          <p @click="ruleForm.title = ruleForm.thumb = ruleForm.note = ruleForm.linkurl = ''">重置</p>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { friendLinkByStatus, applyLink } from "../api/friendLink";
const { config } = require("../config/config");
export default {
  data() {
    return {
      linkList: [],
      loading: false,
      typeMsg: "info",
      submitMsg: "提交",
      ruleForm: {
        title: "",
        thumb: "",
        note: "",
        linkurl: "",
      },
      
    };
  },
  created() {
    this.getLinkList(1);
  },
  methods: {
    async applySubmitClick() {
      if (
        !this.ruleForm.title ||
        !this.ruleForm.thumb ||
        !this.ruleForm.note ||
        !this.ruleForm.linkurl
      ) {
        this.$message("请检查信息是否填写完整");
        return;
      }
      if (
        !this.isScript(
          this.ruleForm.title,
          this.ruleForm.thumb,
          this.ruleForm.note,
          this.ruleForm.linkurl
        )
      ) {
        this.$message.error("禁止脚本");
        return;
      }
      this.loading = true;
      this.submitMsg = "提交中...";
      const applyRes = await applyLink(this.ruleForm);
      if (applyRes.data.code === 10000) {
        this.loading = false;
        this.submitMsg = "提交成功√";
        this.typeMsg = "success";
        setTimeout(() => {
          this.submitMsg = "提交";
          this.typeMsg = "info";
        }, 4000);
      } else {
        this.loading = false;
        this.submitMsg = "提交失败×";
        this.typeMsg = "danger";
        setTimeout(() => {
          this.submitMsg = "提交";
          this.typeMsg = "info";
        }, 4000);
      }
    },
    gotoLink(url) {
      window.open(url);
    },
    async getLinkList(status) {
      const listRes = await friendLinkByStatus(status);
      console.log(listRes);
      if (listRes.data.code === 10000) {
        this.linkList = listRes.data.data;
      } else {
      }
    },
    // xss
    isScript(a, b, c, d) {
      const arr = [a, b, c, d];
      let flag = true;
      arr.forEach((value, index) => {
        if (value.indexOf("script") > -1) {
          flag = false;
          return flag;
        }
      });
      return flag;
    },
  },
};
</script>

<style lang="less">
.friendLink {
  .link_apply {
    .apply_msg {
      margin-top: 20px;
      border: 2px solid rgba(238, 238, 238, 0.3);
      height: auto;
      padding: 20px;
      .form_foot {
        p {
          text-align: right;
          color: #fafafa;
          font-size: 14px;
          cursor: pointer;
        }
      }
      .submit {
        width: 140px;
        letter-spacing: 5px;
      }
      .el-input__inner {
        background: rgba(238, 238, 238, 0.2);
        outline: rgba(238, 238, 238, 0.5);
      }
    }
    .link_apply_content {
      padding: 10px 20px;
      color: #222;
      border-left: 4px solid #222;
      background: rgba(238, 238, 238, 0.3);
      margin-top: 66px;
      p {
        text-align: left;
        padding: 2px 5px;
        display: flex;
        align-items: center;
        font-size: 14px;
        a {
          color: #222;
        }
        .circle {
          display: inline-block;
          width: 6px;
          height: 6px;
          border-radius: 50%;
          background: #222;
          color: #222;
          margin-right: 8px;
        }
      }
      h2 {
        text-align: left;
        font-size: 18px;
        height: 40px;
      }
    }
  }
  .link_list_content {
    display: flex;
    justify-content: left;
    flex-wrap: wrap;
    .link_item {
      cursor: pointer;
      margin: 20px 30px;
      border-radius: 6px;
      background: rgba(238, 238, 238, 0.3);
      box-shadow: rgba(238, 238, 238, 0.8);
      h3 {
        font-size: 15px;
        color: #222;
        padding: 5px 0;
      }
      .link_thumb {
        width: 120px;
        height: 120px;
        object-fit: cover;
        border-radius: 6px 6px 0 0;
      }
    }
  }
}
</style>