<template>
<el-row>
	<el-form :model="ruleForm" :rules="rules" ref="ruleForm" label-width="100px" class="demo-ruleForm">
		<el-row>
		  <el-col :span="12">	
		  	<el-form-item label="备案号">
		  	  <el-col :span="22">
		  	  	<el-input clearable></el-input>
		  	  </el-col>
		  	  <el-col :span="2" class="el-text-center">
		  	    <el-tooltip class="item" effect="dark" content="二级域名每月最多允许三次" placement="top-start">
		  	      <i class="el-icon-question"></i>
		  	    </el-tooltip>
		  	  </el-col>
		  	</el-form-item>
		  </el-col>
		  <el-col :span="12">	
		  	<el-form-item label="版权信息">
		  	  	<el-col :span="22">
		  	  		<el-input clearable></el-input>
		  	  	</el-col>
		  	  	<el-col :span="2" class="el-text-center">
		  	  	  <el-tooltip class="item" effect="dark" content="二级域名每月最多允许三次" placement="top-start">
		  	  	    <i class="el-icon-question"></i>
		  	  	  </el-tooltip>
		  	  	</el-col>
		  	</el-form-item>
		  </el-col>
		  <el-col :span="12">	
		  	<el-form-item label="主题风格">
		  	  <el-radio v-model="radio" label="1">扁平化</el-radio>
		  	  <el-radio v-model="radio" label="2">极简</el-radio>
		  	  <el-radio v-model="radio" label="3">黑板风格</el-radio>
		  	  <el-radio v-model="radio" label="4">复古风格</el-radio>
		  	</el-form-item>
		  </el-col>
		  <el-col :span="12">	
		  	<el-form-item label="作者">
		  	  <el-input clearable></el-input>
		  	</el-form-item>
		  </el-col>
		  <el-col :span="12">	
		  	<el-form-item label="支持的语言">
		  	  <el-input clearable></el-input>
		  	</el-form-item>
		  </el-col>
		  <el-col :span="12">	
		  	<el-form-item label="联系地址">
		  	  <el-input clearable></el-input>
		  	</el-form-item>
		  </el-col>
		  <el-col :span="12">	
		  	<el-form-item label="网站二维码" class="zheng_up_box">
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
		  <el-col :span="12">	
		  	<el-form-item label="公众号二维码" class="zheng_up_box">
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
		  <el-col :span="12">	
		  	<el-form-item label="手机号码 ">
		  	  <el-input clearable></el-input>
		  	</el-form-item>
		  </el-col>
		  <el-col :span="12">	
		  	<el-form-item label="电话 ">
		  	  <el-input clearable></el-input>
		  	</el-form-item>
		  </el-col>
		  <el-col :span="12">	
		  	<el-form-item label="邮箱 ">
		  	  <el-input clearable></el-input>
		  	</el-form-item>
		  </el-col>
		  <el-col :span="12">	
		  	<el-form-item label="qq号 ">
		  	  <el-input clearable></el-input>
		  	</el-form-item>
		  </el-col>
		  <el-col :span="12">	
		  	<el-form-item label="微信号 ">
		  	  <el-input clearable></el-input>
		  	</el-form-item>
		  </el-col>
		  <el-col :span="12">	
		  	<el-form-item label="阿里旺旺号 ">
		  	  <el-input clearable></el-input>
		  	</el-form-item>
		  </el-col>
		  <el-col :span="24">	
		  	<el-form-item label="关键字">
		  	  <el-input clearable></el-input>
		  	</el-form-item>
		  </el-col>
		  <el-col :span="24">	
		  	<el-form-item label="站点描述">
		  	<el-input clearable type="textarea" v-model="ruleForm.desc"></el-input>
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
      	radio: '1',
      	imageUrl: '',
        ruleForm: {
          desc: ''
        }
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