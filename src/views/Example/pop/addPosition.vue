<template>
<el-row>
	<el-form :model="ruleForm" :rules="rules" ref="ruleForm" label-width="100px" class="demo-ruleForm">
		<el-row>
		  <el-col :span="12">	
		  	<el-form-item label="职位名称" prop="name">
		  	  <el-input clearable v-model="ruleForm.name"></el-input>
		  	</el-form-item>
		  </el-col>
		  <el-col :span="12">	
		  	<el-form-item label="职位描述">
		  	  <el-input clearable v-model="ruleForm.Nativeplace"></el-input>
		  	</el-form-item>
		  </el-col>
		  <el-col :span="24">	
		  	<el-form-item label="职位权限">
		  	  	<el-checkbox-group v-model="checkList">
		  	      <el-tooltip placement="top"><div slot="content">权限备注说明</div><el-checkbox label="权限1"></el-checkbox></el-tooltip>
		  	      <el-tooltip placement="top"><div slot="content">权限备注说明</div><el-checkbox label="权限2"></el-checkbox></el-tooltip>
		  	      <el-tooltip placement="top"><div slot="content">权限备注说明</div><el-checkbox label="权限3"></el-checkbox></el-tooltip>
		  	      <el-tooltip placement="top"><div slot="content">权限备注说明</div><el-checkbox label="权限4"></el-checkbox></el-tooltip>
		  	      <el-tooltip placement="top"><div slot="content">权限备注说明</div><el-checkbox label="权限5"></el-checkbox></el-tooltip>
		  	      <el-tooltip placement="top"><div slot="content">权限备注说明</div><el-checkbox label="权限6"></el-checkbox></el-tooltip>
		  	      <el-tooltip placement="top"><div slot="content">权限备注说明</div><el-checkbox label="权限7"></el-checkbox></el-tooltip>
		  	      <el-tooltip placement="top"><div slot="content">权限备注说明</div><el-checkbox label="权限8"></el-checkbox></el-tooltip>
		  	    </el-checkbox-group>
		  	</el-form-item>
		  </el-col>
		</el-row>
		  <el-form-item label="职位备注" prop="desc">
		    <el-input clearable type="textarea" v-model="ruleForm.desc"></el-input>
		  </el-form-item>
	</el-form>
</el-row>
</template>
<script>
  export default {
    data() {
      return {
        ruleForm: {
          name: '',
          Nativeplace: '',
          desc: ''
        },
        checkList: ['财务'],
        rules: {
          name: [
            { required: true, message: '请输入职位名称', trigger: 'blur' },
            { min: 2, max: 6, message: '长度在 2 到 6 个字符', trigger: 'blur' }
          ]
        }
      };
    }
  }
</script>