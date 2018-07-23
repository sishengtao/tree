<template>
  <el-row style="position:static;">
    <el-col :span="6" class="tree-left">
      <treeadd/>
    </el-col>
    <el-col :span="18" class="tree-right">
      <table2/>
    </el-col>
  </el-row>
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
  .main-container{position:relative;}
  .user1 .el-select .el-input {
    width: 130px;
  }
  .input-with-select .el-input-group__prepend {
    background-color: #fff;
  }
</style>

<script>
import treeadd from '@/views/Example/tree/treeadd'
import table2 from '@/views/Example/pop/table2'
export default {
  components: {treeadd,table2}
  }
</script>