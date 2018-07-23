<template>
<div class="app-container">
	<el-row :gutter="20">
	  <el-col :span="16">
	  	<div class="grid-content bg-purple">
	 	  <el-input clearable placeholder="请输入内容" v-model="input3">
		    <template slot="prepend">角色名称</template>
		    <el-button slot="append" icon="el-icon-search"></el-button>
		  </el-input> 		
	  	</div>
	  </el-col>
	  <el-col :span="8">
	  	<div class="grid-content bg-purple">
	  		<el-button type="primary">重置</el-button>
	  		<el-button type="primary" @click="handmodify = true">添加</el-button>
	  	</div>
	  </el-col>
	</el-row>
  		<el-table
  		  :data="tableData"
  		  width="10">
  		    <el-table-column
  		      label="序号"
    		  type="index"
    		  width="50">
    		</el-table-column>
    		<el-table-column
    		  prop="name"
    		  label="角色名称"
    		  width="100">
    		</el-table-column>

    		<el-table-column
    		  prop="describe"
    		  label="角色描述"
          show-overflow-tooltip>
    		</el-table-column>
        <el-table-column prop="tag" label="主管人员" width="100" :filters="[{ text: '管理员', value: '管理员' }, { text: '系统管理员', value: '系统管理员' }]" :filter-method="filterTag" filter-placement="bottom-end">
              <template slot-scope="scope">
                <el-tag :type="scope.row.tag === '管理员' ? 'primary' : 'success'" disable-transitions>{{scope.row.tag}}</el-tag>
              </template>
            </el-table-column>
    		<el-table-column
    		  prop="number"
    		  label="排序号"
    		  width="70">
    		</el-table-column>
  		  <el-table-column label="操作"width="420">
  		    <template slot-scope="scope">
				    <el-button size="mini" type="success" @click="handSet = true">设置关联账号</el-button>
				    <el-button size="mini" type="success" @click="handSee = true">查看关联账号</el-button>
				    <el-button size="mini" type="primary" @click="handmodify = true">修改</el-button>
				    <el-button size="mini" type="danger" @click="open2">删除</el-button>
  		    </template>
  		  </el-table-column>
  		</el-table>

      <el-dialog class="maxheight"
        title="账号角色关联操作：当前角色【通用】"
        :visible.sync="handSet"
        width="70%"        
        center>
        <SetAssociation/>
          <span slot="footer" class="dialog-footer">
            <el-button @click="centerDialogVisible1 = false">取 消</el-button>
            <el-button type="primary" @click="centerDialogVisible1 = false">确 定</el-button>
          </span>
      </el-dialog>
      <el-dialog  class="maxheight"
        title="【在线进销存】角色对应账号"
        :visible.sync="handSee"
        width="70%"
        center>
        <Relation/>
          <span slot="footer" class="dialog-footer">
            <el-button @click="centerDialogVisible2 = false">取 消</el-button>
            <el-button type="primary" @click="centerDialogVisible2 = false">确 定</el-button>
          </span>
        
      </el-dialog>
      <el-dialog  class="maxheight"
        title="修改角色权限"
        :visible.sync="handmodify"
        width="50%"
        center>
        <modify/>
      </el-dialog>

</div>
</template>
<script>
import SetAssociation from '@/views/Example/Projectileframe/SetAssociation'
import modify from '@/views/Example/Projectileframe/modify'
import Relation from '@/views/Example/Projectileframe/Relation'

  export default {
    components: {SetAssociation,modify,Relation},
    data() {
      return {
        centerDialogVisible1: false,
        centerDialogVisible2: false,
        tableData: [{
          name: '通用',
          describe: '系统内置角色，不可删除，系统登陆人员都默认具有该角色权限',
          tag: '系统管理员',
          number: '0'
        }, {
           name: '通用',
          describe: '角色描述',
          tag: '系统管理员',
          number: '1'
       }, {
           name: '通用',
          describe: '角色描述',
          tag: '管理员',
          number: '2'
        }, {
          name: '通用',
          describe: '角色描述',
          tag: '管理员',
          number: '2'
       }],
        multipleSelection: [],
        handSet: false,
        handSee: false,
        handmodify: false,    
        input5: '',
        select: '',
        filterText: ''

      }
    },
    methods: {
      handleEdit(index, row) {
        console.log(index, row);
      },
      handleDelete(index, row) {
        console.log(index, row);
      },
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