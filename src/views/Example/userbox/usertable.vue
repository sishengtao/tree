<template>
  <el-table
    :data="tableData5"
    style="width: 100%">
    <el-table-column type="expand">
      <template slot-scope="props">
        <el-form label-position="left" inline class="demo-table-expand">
          <el-form-item label="真实姓名">
            <span>{{ props.row.name }}</span>
          </el-form-item>
          <el-form-item label="登录名">
            <span>{{ props.row.desc }}</span>
          </el-form-item>
          <el-form-item label="上次登录IP">
            <span>{{ props.row.logip }}</span>
          </el-form-item>
          <el-form-item label="上次登录时间">
            <span>{{ props.row.logtime }}</span>
          </el-form-item>
          <el-form-item label="用户分类">
            <span>{{ props.row.id }}</span>
          </el-form-item>
          <el-form-item label="密码">
            <span>{{ props.row.codenum }}</span>
          </el-form-item>
          <el-form-item label="锁定类别">
            <span>{{ props.row.locktype }}</span>
          </el-form-item>
        </el-form>
      </template>
    </el-table-column>
    <el-table-column
      type="selection"
      width="55">
    </el-table-column>
    <el-table-column
      label="用户类型"
      prop="id"
      width="100">
    </el-table-column>
    <el-table-column
      label="真实姓名"
      prop="name">
    </el-table-column>
    <el-table-column
      label="登录名"
      prop="desc"
      min-width="100">
    </el-table-column>
    <el-table-column
      label="上次登录IP"
      prop="logip">
    </el-table-column>
    <el-table-column
      label="上次登录时间"
      prop="logtime"
      width="100">
    </el-table-column>
    <el-table-column label="操作">
      <template slot-scope="scope">
        <el-button
          size="mini"
          type="primary"
          @click="handleDelete(scope.$index, scope.row)">查看</el-button>
        <el-button
          size="mini"	
          @click="handleEdit(scope.$index, scope.row)">编辑</el-button>
      </template>
    </el-table-column>
  </el-table>
</template>

<style>
  .demo-table-expand {
    font-size: 0;
  }
  .demo-table-expand label {
    width: 90px;
    color: #99a9bf;
  }
  .demo-table-expand .el-form-item {
    margin-right: 0;
    margin-bottom: 0;
    width: 50%;
  }
</style>

<script>
  export default {
    data() {
      return {
        tableData5: [{
          id: '系统',
          name: '何仙姑',
          locktype: '密码连续多次错误',
          logip: '192.168.1.1',
          logtime: '2018-08-08',
          desc: '服装用户',
          codenum: '123456',
          shop: '王小虎夫妻店',
          shopId: '10333'
        }, {
          id: '系统',
          name: '何仙姑',
          locktype: '密码连续多次错误',
          logip: '192.168.1.1',
          logtime: '2018-08-08',
          desc: '服装用户',
          codenum: '123456',
          shop: '王小虎夫妻店',
          shopId: '10333'
        }, {
          id: '系统',
          name: '何仙姑',
          locktype: '密码连续多次错误',
          logip: '192.168.1.1',
          logtime: '2018-08-08',
          desc: '服装用户',
          codenum: '123456',
          shop: '王小虎夫妻店',
          shopId: '10333'
        }, {
          id: '系统',
          name: '何仙姑',
          locktype: '密码连续多次错误',
          logip: '192.168.1.1',
          logtime: '2018-08-08',
          desc: '服装用户',
          codenum: '123456',
          shop: '王小虎夫妻店',
          shopId: '10333'
        }]
      }
    }
  }
</script>