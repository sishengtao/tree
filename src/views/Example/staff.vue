<template>
<div class="app-container">
    <el-row style="position:static;">
      <el-col :span="4" class="tree-left">
          <treeuser/>
      </el-col>
      <el-col :span="20" class="tree-right">
    	<el-row :gutter="20">
    	  <el-col :span="16">
    	  	<div class="grid-content bg-purple">
    	 	  <el-input clearable placeholder="请输入内容" v-model="input3">
    		    <template slot="prepend">搜索</template>
    		    <el-button slot="append" icon="el-icon-search"></el-button>
    		  </el-input> 		
    	  	</div>
    	  </el-col>
    	  <el-col :span="8">
    	  	<div class="grid-content bg-purple">
    	  		<el-button type="primary">重置</el-button>
    	  		<el-button type="primary" @click="addStaff = true">添加</el-button>
    	  	</div>
    	  </el-col>
    	</el-row>
  		<el-table
  		  :data="tableData"
  		  width="600">
  		    <el-table-column
  		      label="序号"
    		  type="index"
    		  width="60">
    		</el-table-column>
    		<el-table-column
    		  prop="name"
    		  label="员工姓名"
    		  width="120">
    		</el-table-column>
        <el-table-column
          prop="describe"
          label="联系电话" 
          width="120">
        </el-table-column>
        <el-table-column
          prop="zhiw"
          label="员工职位" 
          width="120">
        </el-table-column>
        <el-table-column prop="tag" label="角色" width="160" :filters="[{ text: '管理员', value: '管理员' }, { text: '系统管理员', value: '系统管理员' }]" :filter-method="filterTag" filter-placement="bottom-end">
          <template slot-scope="scope">
            <el-tag class="select_text" :type="scope.row.tag === '管理员' ? 'primary' : 'success'" disable-transitions>{{scope.row.tag}}</el-tag>
          </template>
        </el-table-column>
        <el-table-column
          prop="time"
          label="添加时间"
          width="120">
        </el-table-column>
  		  <el-table-column label="操作" show-overflow-tooltip>
  		    <template slot-scope="scope">
				    <el-button size="mini" type="primary">修改</el-button>
				    <el-button size="mini" type="danger" @click="open2">删除</el-button>
  		    </template>
  		  </el-table-column>
  		</el-table>

        <el-dialog  class="maxheight"
          title="添加员工"
          :visible.sync="addStaff"
          width="60%"
          center>
          <addStaff/>
        </el-dialog>
        </el-col>
    </el-row>
</div>
</template>
<script>
import addStaff from '@/views/Example/pop/addStaff'
import treeuser from '@/views/Example/tree/treeuser'

  export default {
    components: {addStaff,treeuser},
    data() {
      return {
        centerDialogVisible1: false,
        centerDialogVisible2: false,
        tableData: [{
          name: '通用',
          describe: '1888888888',
          zhiw:'销售',
          tag: '系统管理员',
          time: '2018-09-09'
        }, {
           name: '通用',
          describe: '1888888888',
          zhiw:'销售',
          tag: '系统管理员',
          time: '2018-09-09'
       }, {
           name: '通用',
          describe: '1888888888',
          zhiw:'销售',
          tag: '管理员',
          time: '2018-09-09'
        }, {
          name: '通用',
          describe: '1888888888',
          zhiw:'销售',
          tag: '管理员',
          time: '2018-09-09'
       }],
        multipleSelection: [],
        addStaff: false,    
        select: '',
      }
    },
    methods: {
      filterTag(value, row) {
        return row.tag === value;
      },
      open2() {
        this.$message({
          message: '删除成功',
          type: 'success'
        });
      },  
    }
  }
</script>