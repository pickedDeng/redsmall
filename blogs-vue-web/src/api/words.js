import axios from "axios";

// 提交留言
export function wordsapply(data){
    return axios.post(`words/add`,data)
}

export function wordsList(){
    return axios.get(`words/list?temp=${Date.now()}`)
}

export function getIp(){
    return axios.get("http://pv.sohu.com/cityjson?ie=utf-8")
}