import axios from"axios";

export function applyLink(data){
    return axios.post("friendLink/apply",data)
}
// 获取根据状态获取列表
export function friendLinkByStatus(status){
    // 0 未审核  1 已审核
    return axios.get(`friendLink/list?status=${status}`)
}

export function upload(data){
    return axios.post("blogs/api.php?c=upload&f=save",data)
}