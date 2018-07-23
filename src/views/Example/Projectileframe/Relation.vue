<template>
  <el-table
    :data="tableData"
    stripe
    style="width: 100%">
    <el-table-column
      prop="mechanism"
      label="所属机构"
      width="250">
    </el-table-column>
    <el-table-column
      prop="Loginname"
      label="登录名"
      width="250">
    </el-table-column>
    <el-table-column
      prop="Name"
      label="人员名称">
    </el-table-column>
  </el-table>
</template>

<script>
  export default {
    data() {
      return {
        tableData: [{
          mechanism: '技术部',
          Loginname: '王小虎',
          Name: '管理员'
        }, {
          mechanism: '技术部',
          Loginname: '王小虎',
          Name: '管理员'
        }, {
          mechanism: '技术部',
          Loginname: '王小虎',
          Name: '管理员'
        }, {
          mechanism: '技术部',
          Loginname: '王小虎',
          Name: '管理员'
        }]
      }
    }
  }
</script>


