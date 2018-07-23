<template>
<el-row>
	<el-form :model="ruleForm" :rules="rules" ref="ruleForm" label-width="100px" class="demo-ruleForm">
		<el-row>
		  <el-col :span="12">	
		  	<el-form-item label="员工名称" prop="name">
		  	  <el-input clearable v-model="ruleForm.name"></el-input>
		  	</el-form-item>
		  </el-col>
		  <el-col :span="12">	
		  	<el-form-item label="员工电话" prop="Nativeplace">
		  	  <el-input clearable v-model="ruleForm.Nativeplace"></el-input>
		  	</el-form-item>
		  </el-col>
		  <el-col :span="24">	
		  	<el-form-item label="员工职位">
		  	  	<el-checkbox-group v-model="checkList">
		  	      <el-tooltip placement="top"><div slot="content">角色信息备注说明</div><el-checkbox label="财务"></el-checkbox></el-tooltip>
		  	      <el-tooltip placement="top"><div slot="content">角色信息备注说明</div><el-checkbox label="运营"></el-checkbox></el-tooltip>
		  	      <el-tooltip placement="top"><div slot="content">角色信息备注说明</div><el-checkbox label="高级管理员"></el-checkbox></el-tooltip>
		  	      <el-tooltip placement="top"><div slot="content">角色信息备注说明</div><el-checkbox label="客服"></el-checkbox></el-tooltip>
		  	      <el-tooltip placement="top"><div slot="content">角色信息备注说明</div><el-checkbox label="普通管理员"></el-checkbox></el-tooltip>
		  	      <el-tooltip placement="top"><div slot="content">角色信息备注说明</div><el-checkbox label="收银员"></el-checkbox></el-tooltip>
		  	      <el-tooltip placement="top"><div slot="content">角色信息备注说明</div><el-checkbox label="仓管"></el-checkbox></el-tooltip>
		  	      <el-tooltip placement="top"><div slot="content">角色信息备注说明</div><el-checkbox label="仓管普通员工"></el-checkbox></el-tooltip>
		  	    </el-checkbox-group>
		  	</el-form-item>
		  </el-col>
		  <el-col :span="12">	
		  	<el-form-item label="主管领导" >
		  	  <el-input clearable :disabled="true" placeholder="张三丰"></el-input>
		  	</el-form-item>
		  </el-col>
		  <el-col :span="12">	
		  	<el-form-item label="员工性别" prop="name">
		  	  	<el-radio v-model="radio" label="1">男</el-radio>
		  	    <el-radio v-model="radio" label="2">女</el-radio>
		  	    <el-radio v-model="radio" label="3">保密</el-radio>
		  	</el-form-item>
		  </el-col>
		  <el-col :span="12">	
		  	<el-form-item label="出生日期" >
		  	  <div class="block">
		  	    <el-date-picker
		  	      v-model="datavalue1"
		  	      type="date"
		  	      placeholder="选择日期">
		  	    </el-date-picker>
		  	  </div>
		  	</el-form-item>
		  </el-col>
		  <el-col :span="12">	
		  	<el-form-item label="身份证号" prop="Nativenumber">
		  	  	  <el-input clearable v-model="ruleForm.Nativenumber"></el-input>
		  	</el-form-item>
		  </el-col>
		  <el-col :span="12">	
		  	<el-form-item label="员工照片" class="zheng_up_box">
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
		  	<el-form-item label="员工头像" class="zheng_up_box">
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
		  <el-col :span="24">
		  	<el-form-item>
		  	    <el-button type="primary" @click="onSubmit">保存</el-button>
		  	    <el-button>取消</el-button>
		  	  </el-form-item>
		  </el-col>
		</el-row>
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
          Nativenumber: '',
          desc: ''
        },
        radio: '',
        datavalue1: '',
        checkList: ['财务'],
        rules: {
          name: [
            { required: true, message: '请输入员工名称', trigger: 'blur' },
            { min: 2, max: 6, message: '长度在 2 到 6 个字符', trigger: 'blur' }
          ], 
          Nativeplace: [
            { required: true, message: '输入员工电话', trigger: 'blur' },
            { min: 11, max: 11, message: '电话号码格式不正确', trigger: 'blur' }
          ], 
          Nativenumber: [
            { required: true, message: '输入身份证号码', trigger: 'blur' },
            { min: 18, max: 18, message: '身份证号码格式不正确', trigger: 'blur' }
          ]
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