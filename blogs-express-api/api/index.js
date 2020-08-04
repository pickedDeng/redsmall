const  {exec,sql,transaction}  = require("mysqls");

const indexHandle = {
    async demo(){
        const getSql = sql.table("tb_list_1").select();
        const selectRes =  await exec(getSql)
        console.log(selectRes)
        return selectRes
    }
}

module.exports = indexHandle;