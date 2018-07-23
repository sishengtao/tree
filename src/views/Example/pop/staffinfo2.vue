<template>
<el-row>
	<el-form :model="ruleForm" :rules="rules" ref="ruleForm" label-width="100px" class="demo-ruleForm">
		<el-row>
		  <el-col :span="12">	
		  	<el-form-item label="电子邮箱" prop="name">
		  	  <el-input clearable v-model="ruleForm.name"></el-input>
		  	</el-form-item>
		  </el-col>
		  <el-col :span="12">	
		  	<el-form-item label="微信号">
		  	  <el-input clearable></el-input>
		  	</el-form-item>
		  </el-col>
		  <el-col :span="12">	
		  	<el-form-item label="QQ号">
		  	  <el-input clearable></el-input>
		  	</el-form-item>
		  </el-col>
		  <el-col :span="12">	
		  	<el-form-item label="阿里旺旺号">
		  	  <el-input clearable></el-input>
		  	</el-form-item>
		  </el-col>
		  <el-col :span="12">	
		  	<el-form-item label="入职时间">
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
		  	<el-form-item label="入职培训">
		  	  <el-radio v-model="radio1" label="1">是</el-radio>
		  	  <el-radio v-model="radio1" label="2">否</el-radio>
		  	</el-form-item>
		  </el-col><el-col :span="12">	
		  	<el-form-item label="是否在职">
		  	  <el-radio v-model="radio2" label="1">是</el-radio>
		  	  <el-radio v-model="radio2" label="2">否</el-radio>
		  	</el-form-item>
		  </el-col>
		  <el-col :span="12">	
		  	<el-form-item label="正式员工">
		  	  <el-radio v-model="radio3" label="1">是</el-radio>
		  	  <el-radio v-model="radio3" label="2">否</el-radio>
		  	</el-form-item>
		  </el-col>
		  <el-col :span="24">	
		  	<el-form-item label="人才来源">
		  	  	<el-checkbox-group v-model="checkList">
		  	      <el-tooltip placement="top"><div slot="content">人才来源备注说明</div><el-checkbox label="初创"></el-checkbox></el-tooltip>
		  	      <el-tooltip placement="top"><div slot="content">人才来源备注说明</div><el-checkbox label="招聘"></el-checkbox></el-tooltip>
		  	      <el-tooltip placement="top"><div slot="content">人才来源备注说明</div><el-checkbox label="介绍"></el-checkbox></el-tooltip>
		  	      <el-tooltip placement="top"><div slot="content">人才来源备注说明</div><el-checkbox label="客服"></el-checkbox></el-tooltip>
		  	      <el-tooltip placement="top"><div slot="content">人才来源备注说明</div><el-checkbox label="驻点"></el-checkbox></el-tooltip>
		  	      <el-tooltip placement="top"><div slot="content">人才来源备注说明</div><el-checkbox label="外派"></el-checkbox></el-tooltip>
		  	    </el-checkbox-group>
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
        radio1: '',
        radio2: '',
        radio3: '',
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
    }
  }
</script>