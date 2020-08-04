<template>
  <div class="leave_words">
    <h2>留言板</h2>
    <div class="leave_apply">
      <el-form :model="ruleForm" ref="ruleForm" label-width="70px" class="demo-ruleForm">
        <div>
          <el-form-item label="昵称：" required>
            <el-input v-model="ruleForm.fullname" size="small"></el-input>
          </el-form-item>
          <el-form-item label="QQ：">
            <el-input v-model="ruleForm.qq" type="tel" size="small"></el-input>
          </el-form-item>
          <el-form-item label="MOBILE：">
            <el-input v-model="ruleForm.mobile" type="tel" size="small"></el-input>
          </el-form-item>
          <el-form-item label="内容：" required class="wordsContent">
            <el-input type="textarea" :rows="3" placeholder="留言内容..." v-model="ruleForm.content"></el-input>
          </el-form-item>
        </div>
      </el-form>
      <div class="form_foot">
        <el-button
          :type="typeMsg"
          round
          class="submit"
          @click="applySubmitClick"
          :loading="loading"
        >{{submitMsg}}</el-button>
        <p
          @click="ruleForm.fullname = ruleForm.mobile = ruleForm.note = ruleForm.qq = ruleForm.content = ''"
        >重置</p>
      </div>
    </div>

    <h2 class="wordsList_title">留言：{{ wordsListArr.length }}</h2>
    <div class="wordsList_content">
      <div class="wordsList_item" v-for="item in wordsListArr" :key="item.id">
        <img src="../assets/images/people.png" alt="">
        <div class="user_info">
          <p class="color">
            <span>{{ item.fullname }}</span>
            ip-{{item.ip}}
          </p>
          <p class="color">{{ item.dataline }}</p>
          <p class="wordsContent" v-html="item.content"></p>

          <!-- 管理员回复 -->
          <div class="admin_reply" v-if="item.adminreply">
            <div class="wordsList_item">
              <img src="../assets/images/admin.png" alt="">
              <div class="user_info">
                <p class="color">
                  <span>博主：红色小裤衩</span>回复&nbsp;&nbsp;&nbsp; {{ item.fullname }}&nbsp;&nbsp;&nbsp;
                  ip-127.0.0.1
                </p>
                <p class="color">{{ item.replytime }}</p>
                <p class="wordsContent" v-html="item.adminreply"></p>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { wordsapply, wordsList } from "../api/words";
export default {
  data() {
    return {
      activeNames: [],
      ruleForm: {
        ip: returnCitySN["cip"],
        fullname: returnCitySN["cname"] + "吃瓜网友",
        qq: "",
        mobile: "",
        content: "",
        dataline: "",
      },
      loading: false,
      typeMsg: "info",
      submitMsg: "提交",
      wordsListArr: [],
    };
  },
  methods: {
    async getWordsList() {
      const listRes = await wordsList();
      if (listRes.data.code === 10000) {
        this.wordsListArr = listRes.data.data;
        this.wordsListArr.forEach((value) => {
          this.activeNames.push(value.id);
        });
      }
    },
    async applySubmitClick() {
      if (
        !this.ruleForm.fullname ||
        !this.ruleForm.content
      ) {
        this.$message("请检查信息是否填写完整");
        return;
      }
      if (
        !this.isScript(
          this.ruleForm.fullname,
          this.ruleForm.qq,
          this.ruleForm.mobile,
          this.ruleForm.content
        )
      ) {
        this.$message.error("禁止脚本");
        return;
      }
      this.ruleForm.dataline = this.formData(Date.now());
      this.loading = true;
      this.submitMsg = "提交中...";
      const applyRes = await wordsapply(this.ruleForm);
      if (applyRes.data.code === 10000) {
        this.getWordsList()
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
  created() {
    this.getWordsList();
  },
};
</script>

<style lang="less">
.leave_words {
  .wordsList_content {
    text-align: left;
    .wordsList_item {
      display: flex;
      margin: 25px;
      border-bottom: 1px dashed #ddd;
      img{
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
        .color{
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
    .icon-nimingyonghu {
      font-size: 40px;
      color: #222;
    }
  }
  // .el-collapse-item__header,
  // .el-collapse-item__content {
  //   background: rgba(0, 0, 0, 0.1);
  // }
  .wordsList_title {
    font-size: 20px;
    border-left: 3px dashed #222;
    padding: 0 10px;
    text-align: left;
    color: #222;
  }
  .leave_apply {
    margin-top: 30px;
    .form_foot {
      justify-content: right;
      .submit {
        width: 140px;
        letter-spacing: 5px;
      }
      p {
        text-align: right;
        color: #fafafa;
        font-size: 14px;
        cursor: pointer;
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
  .el-input__inner,
  .el-textarea__inner {
    background: rgba(238, 238, 238, 0.2);
    outline: rgba(238, 238, 238, 0.5);
  }
  .icon-renwu-{
    color: #ff7752;
  }
}
</style>