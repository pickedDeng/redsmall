import axios from "axios";
// 获取博客分类列表
export function getCateList() {
    return axios.get("blogs")
}


// 获取文章详情评论
export function getCommentByBlogId(id) {
    return axios.get(`blogs/commentList?id=${id}`)
}

// 添加博客点击数
export function addHits(id) {
    return axios.get(`blogs/hits?id=${id}`)
}

// 根据id查看博客详情
export function blogsDetail(id) {
    return axios.get(`blogs/detail/${id}`)
}

// 根据分类id分页获取  博客列表
export function blogsListByCateId(id, page, rows) {
    page = page || 1,
    rows = rows || 5
    return axios.get(`blogs/list?page=${page}&rows=${rows}&id=${id}`)
}
// 获取置顶文章
export function getCateHotList(id) {
    return axios.get(`blogs/hotList?id=${id}`)
}

// 提交评论
export function commentApply(data){
    return axios.post("comment/apply",data)
}



