<template>
    <el-table
      :data="tableData"
      style="width: 100%">
      <el-table-column
        type="selection"
        width="55">
      </el-table-column>
      <el-table-column
        prop="name"
        label="登录名"
        width="180">
      </el-table-column>
      <el-table-column
        prop="personnel"
        label="人员名称">
      </el-table-column>
    </el-table>
  </template>

  <script>
    export default {
      data() {
        return {
          tableData: [{
            name: '王小虎',
            personnel: '上海市普陀区金沙江路 1518 弄'
          }, {
            name: '王小虎',
            personnel: '上海市普陀区金沙江路 1517 弄'
          }, {
            name: '王小虎',
            personnel: '上海市普陀区金沙江路 1519 弄'
          }, {
            name: '王小虎',
            personnel: '上海市普陀区金沙江路 1516 弄'
          }]
        }
      }
    }
  </script>

