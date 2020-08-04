import axios from "axios";


// 增加历史人数
export function historyHits(){
    return axios.get("site/history")
}


// 获取相册
export function getPic(){
    return axios.get("site/pic")
}

// 获取站点信息
export function siteMsg(){
    return axios.get("site/msg")
}