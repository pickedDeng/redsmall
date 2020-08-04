import Vue from 'vue'
import Vuex from 'vuex'
import { blogsListByCateId, getCateHotList } from "../api/blogs";
const config = require("../config/config")
Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    blogList: {},
    config,
    cate_id:null,
    siteMsg:{}
  },
  mutations: {
    setBlogList(state, data) {
      state.blogList = data
    },
    setCateId(state,id){
      state.cate_id = id
    },
    saveSiteMsg(state,data){
      state.siteMsg = data
    }
    
  },
  actions: {
  },
  modules: {
  }
})
