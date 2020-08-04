const { exec, sql, transaction } = require("mysqls");


const commentHandle = {
    async commentApply(data){
        console.log(data)
        data.session_id = "";
        data.adm_content = "";
        data.res="";
        const innsertSql = sql.table("tb_reply").data(data).insert();
        return await exec(innsertSql);
    }
}

module.exports  = commentHandle