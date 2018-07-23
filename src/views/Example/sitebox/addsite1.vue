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
		  <el-col :span="12">	
		  	<el-form-item label="站点LOGO" class="logo_up_box">
			  	<el-upload
			  	  class="avatar-uploader fl"
			  	  action="https://jsonplaceholder.typicode.com/posts/"
			  	  :show-file-list="false"
			  	  :on-success="handleAvatarSuccess"
			  	  :before-upload="beforeAvatarUpload">
			  	  <img v-if="imageUrl" :src="imageUrl" class="avatar">
			  	  <i v-else class="el-icon-plus avatar-uploader-icon"></i>
			  	</el-upload>
			  	<div class="text fl">大小不能超过 2MB</div>
		  	</el-form-item>
		  </el-col>
		</el-row>
		  <el-form-item>
		    <el-button type="primary" @click="submitForm('ruleForm')">保存</el-button>
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
      	imageUrl: '',
      	rules: {
      	  name: [
      	    { required: true, message: '请输入菜单名称', trigger: 'blur' },
      	    { min: 2, max: 6, message: '长度在 2 到 6 个字符', trigger: 'blur' }
      	  ], 
      	  Nativeplace: [
      	    { required: true, message: '请选择图标', trigger: 'blur' },
      	  ]
      	},
        fileList2: [{name: '云销城.png', url: 'http://www.hnzylc.cn/images/logo.png'}]
      };
    },
    methods: {
    	handleAvatarSuccess(res, file) {
    	        this.imageUrl = URL.createObjectURL(file.raw);
    	      },
    	      beforeAvatarUpload(file) {
    	        const isJPG = file.type === 'image/jpeg';
    	        const isLt2M = file.size / 1024 / 1024 < 2;

    	        if (!isJPG) {
    	          this.$message.error('上传头像图片只能是 JPG 格式!');
    	        }
    	        if (!isLt2M) {
    	          this.$message.error('上传头像图片大小不能超过 2MB!');
    	        }
    	        return isJPG && isLt2M;
    	      }
    }
  }
</script>