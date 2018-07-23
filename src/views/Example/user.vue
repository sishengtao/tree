<template>
  <div class="app-container">
  	<el-row style="position:static;">
  		  <el-col :span="24" class="tree-right">
  			<el-form ref="form" :model="form" label-width="120px">
  		  		<el-row class="margin-bottom-10 user1">
  		  		  <el-col :span="6">
  		  		    <el-input clearable placeholder="请输入内容" v-model="input5" class="input-with-select">
  		  		      <el-button slot="append" icon="el-icon-search"></el-button>
  		  		    </el-input>
  		  		  </el-col>
  		  		  <el-col :span="18" class="el-text-right">
  		  		    <el-button type="primary" @click="centerDialogVisible = true"><i class="el-icon-plus"></i>&nbsp;添加</el-button>
  		  		    <el-button type="primary" @click="changeState = true">更改状态</el-button>
  		  		    <el-button type="primary" @click="movemech = true">移动机构</el-button>
  		  		    <el-button type="primary" @click="open4">重置密码</el-button>
  		  		    <el-button type="danger"  @click="open2">删除</el-button>
  		  		  </el-col>
  		  		</el-row>
            <usertable/>

  				  <el-dialog
  					  title="添加用户信息"
  					  :visible.sync="centerDialogVisible"
  					  width="70%"
  					  center>
  					  <adduser/>
  					</el-dialog>

  				  	<el-dialog
  					  title="更改状态"
  					  :visible.sync="changeState"
  					  width="50%"
  					  center>
  					  <adduser2/>
  					</el-dialog>

  					<el-dialog
  					  title="菜单管理"
  					  :visible.sync="movemech"
  					  width="50%"
  					  class="move_mech"
  					  center>
  					  <treeuser/>
  					</el-dialog>

  			</el-form>
  		  </el-col>
  	</el-row>
  </div>
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
import adduser from '@/views/Example/userbox/adduser'
import adduser2 from '@/views/Example/userbox/adduser2'
import treeuser from '@/views/Example/tree/treeuser'
import usertable from '@/views/Example/userbox/usertable'
export default {
	  components: {adduser,adduser2,treeuser,usertable},
    data() {
      return {
        centerDialogVisible: false,
        changeState: false,
        movemech: false,
        input5: '',
        select: '',
        filterText: ''
      	}
    },

    methods: {
      toggleSelection(rows) {
        if (rows) {
          rows.forEach(row => {
            this.$refs.multipleTable.toggleRowSelection(row);
          });
        } else {
          this.$refs.multipleTable.clearSelection();
        }
      },
      handleSelectionChange(val) {
        this.multipleSelection = val;
      },
      open2() {
        this.$message({
          message: '删除成功！',
          type: 'success'
        });
      },
      open4() {
        this.$confirm('您确定要将所选人员的密码重置吗?', '提示', {
          confirmButtonText: '确定',
          cancelButtonText: '取消',
          type: 'warning'
        }).then(() => {
          this.$message({
            type: 'success',
            message: '重置成功!'
          });
        }).catch(() => {
          this.$message({
            type: 'info',
            message: '已取消重置'
          });          
        });
      }
    }
  }
</script>