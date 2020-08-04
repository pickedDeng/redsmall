<template>
  <div class="about">
    <div class="about_site_msg">
      <img :src="siteInfo.thumb" :title="siteInfo.title" alt />
      <div class="smallicon">
        <span class="iconfont icon-qq" title="qq号">{{ siteInfo.qq }}</span>
        <span class="iconfont icon-weixin" title="微信号">{{ siteInfo.wechat }}</span>
        <span class="iconfont icon-github">
          <a :href="siteInfo.git" target="_blank" title="git地址">{{ siteInfo.git }}</a>
        </span>
        <span class="iconfont icon-renshutongji" title="访问人数">{{ siteInfo.historynumber }}</span>
      </div>
    </div>
    <div class="pay_pic">
      <div class="pic_con">
        <img :src="siteInfo.paywechat" alt />
        <h3>微信赞赏</h3>
      </div>
      <div class="pic_con">
        <img :src="siteInfo.payali" alt />
        <h3>支付宝赞赏</h3>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  created() {
    this.siteInfo = this.$store.state.siteMsg;
  },
  data() {
    return {
      siteInfo: {},
    };
  },
};
</script>

<style lang="less">
.about {
  text-align: left;
  display: flex;
  flex-wrap: wrap;

  .pay_pic {
    justify-content: center;
    display: flex;
    margin: 50px auto 0px;

    .pic_con{
      display: flex;
      flex-wrap: wrap;
      width: 200px;
      margin: 20px;
      h3{
        text-align: center;
        width: 100%;
        margin: 16px;
      }
      img{
        width: 100%;
        height: auto;
        border-radius: 5px;
      }
    }
  }
  .about_site_msg {
    display: flex;
    justify-content: center;
    width: 100%;
    .smallicon {
      display: flex;
      flex-wrap: wrap;
      width: 50%;
      .iconfont::before {
        margin-right: 18px;
        font-size: 24px;
      }
      span {
        display: flex;
        align-items: center;
        width: 100%;
        color: #222;
        font-size: 18px;
        a {
          color: #222;
          text-decoration: underline;
        }
      }
    }

    > img {
      width: 160px;
      height: 160px;
      border-radius: 50%;
      margin: 20px 30px;
    }
  }

  h2 {
    border-left: 4px solid #222;
    padding: 0 15px;
    color: #222;
    margin: 30px 0;
  }
  p {
    color: #fafafa;
  }
  .red {
    color: red;
    font-size: 18px;
  }
}
</style>