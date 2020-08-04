const  {exec,sql,transaction}  = require("mysqls");

const leaveWordsHandle = {
    async wordsAdd(data){
        data.site_id = 1;
        data.project_id = 13;
        data.cate_id = 0;
        const wordSql = sql.table("tb_3").data(data).insert();
        return await exec(wordSql)
    },
    async wordsList(){
        const wordSql = sql.table("tb_3").order("dataline desc").select();
        return await exec(wordSql)
    }
}


module.exports = leaveWordsHandle