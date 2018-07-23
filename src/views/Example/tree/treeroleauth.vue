<template>

<el-row :gutter="20">
  <el-col :span="8">
    <el-input clearable v-model="input" placeholder="输入关键字进行过滤"></el-input>

    <div class="grid-content bg-purple">
      <el-tree
        :data="data2"
        show-checkbox
        node-key="id"
        :default-expanded-keys="[2, 3]"
        :default-checked-keys="[5]"
        :props="defaultProps">
      </el-tree>      
    </div>
  </el-col>
  <el-col :span="16">
    <div class="grid-content bg-purple">
      <template>
        <el-table
          :data="tableData"
          stripe
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
    </div>
  </el-col>
</el-row>

</template>
<script>
  export default {
    data() {
      return {
        data2: [{
          id: 1,
          label: '一级 1',
          children: [{
            id: 4,
            label: '二级 1-1',
            children: [{
              id: 9,
              label: '三级 1-1-1'
            }, {
              id: 10,
              label: '三级 1-1-2'
            }]
          }]
        }, {
          id: 2,
          label: '一级 2',
          children: [{
            id: 5,
            label: '二级 2-1'
          }, {
            id: 6,
            label: '二级 2-2'
          }]
        }, {
          id: 3,
          label: '一级 3',
          children: [{
            id: 7,
            label: '二级 3-1'
          }, {
            id: 8,
            label: '二级 3-2'
          }]
        }],
        defaultProps: {
          children: 'children',
          label: 'label'
        },
        tableData: [{
          name: '王小虎',
          personnel: '采购专员'
        }, {
          name: '王小虎',
          personnel: '采购专员'
        }, {
          name: '王小虎',
          personnel: '采购专员'
        }, {
          name: '王小虎',
          personnel: '采购专员'
        }]        

      };
    }
  };
</script>

