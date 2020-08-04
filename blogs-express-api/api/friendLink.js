const { exec, sql, transaction } = require("mysqls");
const assetConfig = require("../config/assetConfig");
const friendLinkHandle = {
    async linkApply(data) {
        data.site_id = 1;
        data.project_id = 12;
        data.cate_id = 0;
        data.status = 0; 
        const innsertSql = sql.table("tb_2").data(data).insert()
        const finRes = await exec(innsertSql)
        return  finRes
    },
    async getFriendLinkByStatus(status){
        const friendListSql = sql.table("tb_2").where({status}).select();
        const thumbSql = []
        const linkList = await exec(friendListSql);
        // if(linkList.length>0){
        //     linkList.forEach((value,index)=>{
        //         thumbSql.push(sql.table("tb_res").field("id,filename").where({id:value.thumb}).select());
        //     })
        //     const thumbList = await transaction(thumbSql);
        //     linkList.forEach((value,index)=>{
        //         value.thumb = thumbList[index][0].filename? assetConfig.prefix + thumbList[index][0].filename :"";
        //     })
        // }
        
        return linkList
    }
}


module.exports = friendLinkHandle