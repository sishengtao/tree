<template>
  <div class="app-container">
    <el-row style="position:static;">
      <el-col :span="10">
          <treemech/>
      </el-col>
        <el-col :span="14" class="tree-right">
          <el-card class="box-card">
            <div slot="header" class="clearfix">
              <span>河南智云联创科技有限公司</span>
              <el-button style="float: right; padding: 3px 0" type="text">编辑</el-button>
            </div>
            <div class="text item">
              <div><i class="el-icon-phone-outline"></i>值班电话&nbsp;1888888888</div>
              <div class="margin-top-20"><i class="el-icon-tickets"></i>机构描述&nbsp;暂无描述</div>
            </div>
          </el-card>
        </el-col>
    </el-row>
  </div>
</template>
<style>
  .tree-right .text {
    font-size: 14px;
  }

  .tree-right .item {
    margin-bottom: 18px;
  }

  .tree-right .clearfix:before,
  .tree-right .clearfix:after {
    display: table;
    content: "";
  }
  .tree-right .clearfix:after {
    clear: both
  }

  .tree-right .box-card {
    width:98%;
  }
</style>
<script>
  import treemech from '@/views/Example/tree/treemech'
  export default {
  components: {treemech}
}
</script>