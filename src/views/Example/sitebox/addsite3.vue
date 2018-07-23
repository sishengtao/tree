<template>
<el-row>
	<el-form :model="ruleForm" :rules="rules" ref="ruleForm" label-width="100px" class="demo-ruleForm">
		<el-row>
		  <el-col :span="12">	
		  	<el-form-item label="站点名称" prop="name">
		  	  <el-input clearable v-model="ruleForm.name"></el-input>
		  	</el-form-item>
		  </el-col>
		  <el-col :span="12">	
		  	<el-form-item label="二级域名" prop="Nativeplace">
		  	  <el-col :span="22">
		  	  	<el-input clearable v-model="ruleForm.Nativeplace"></el-input>
		  	  </el-col>
		  	  <el-col :span="2" class="el-text-center">
		  	    <el-tooltip class="item" effect="dark" content="二级域名每月最多允许三次" placement="top-start">
		  	      <i class="el-icon-question"></i>
		  	    </el-tooltip>
		  	  </el-col>
		  	</el-form-item>
		  </el-col>
		  <el-col :span="12">	
		  	<el-form-item label="图标" prop="Nativeplace">
		  	  <el-input clearable v-model="ruleForm.Nativeplace"></el-input>
		  	</el-form-item>
		  </el-col>
		  <el-col :span="12">	
		  	<el-form-item label="站点标题">
		  	  <el-input clearable></el-input>
		  	</el-form-item>
		  </el-col>
		  <el-col :span="24">	
		  	<el-form-item label="站点关键字">
		  	  <el-input clearable></el-input>
		  	</el-form-item>
		  </el-col>
		</el-row>
		  
		  <el-form-item label="站点描述" prop="desc">
		    <el-input clearable type="textarea" v-model="ruleForm.desc"></el-input>
		  </el-form-item>
		  <el-form-item>
		    <el-button type="primary" @click="submitForm('ruleForm')">立即添加</el-button>
		    <el-button @click="resetForm('ruleForm')">重置</el-button>
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
        rules: {
          name: [
            { required: true, message: '请输入菜单名称', trigger: 'blur' },
            { min: 2, max: 6, message: '长度在 2 到 6 个字符', trigger: 'blur' }
          ], 
          Nativeplace: [
            { required: true, message: '请选择图标', trigger: 'blur' },
          ]
        }
      };
    }
  }
</script>