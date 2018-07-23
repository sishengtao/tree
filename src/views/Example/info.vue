<template>
  <div class="app-container">
  	<el-row>
		<el-form :model="ruleForm" :rules="rules" ref="ruleForm" label-width="100px" class="demo-ruleForm">
			<el-row>
				  <el-col :span="12">	
				  	<el-form-item label="实例名称" prop="name">
				  	  <el-input clearable v-model="ruleForm.name" value="我爱健康"></el-input>
				  	</el-form-item>
				  </el-col>
				  <el-col :span="12">	
				  	<el-form-item label="所属者">
				  	  <el-input clearable value="云销城" :disabled="true"></el-input>
				  	</el-form-item>
				  </el-col>
				  <el-col :span="12">	
				  	<el-form-item label="一级域名" prop="Nativeplace">
				  	  <el-col :span="22">
				  	  	<el-input clearable v-model="ruleForm.Nativeplace"></el-input>
				  	  </el-col>
				  	  <el-col :span="2" class="el-text-center">
				  	    <el-tooltip class="item" effect="dark" content="一级域名每月最多允许三次" placement="top-start">
				  	      <i class="el-icon-question"></i>
				  	    </el-tooltip>
				  	  </el-col>
				  	</el-form-item>
				  </el-col>
				  <el-col :span="12">	
				  	<el-form-item label="是否内置">
				  	  	<el-radio v-model="radio" label="1">是</el-radio>
				  	    <el-radio v-model="radio" label="2">否</el-radio>
				  	</el-form-item>
				  </el-col>
				  <el-col :span="12">	
				  	<el-form-item label="创建人">
				  	  <el-input clearable value="云销城" :disabled="true"></el-input>
				  	</el-form-item>
				  </el-col>
				  <el-col :span="12">	
				  	<el-form-item label="创建时间">
				  	  <el-input clearable value="2018-08-09" :disabled="true"></el-input>
				  	</el-form-item>
				  </el-col>
				  <el-col :span="12">	
				  	<el-form-item label="修改人">
				  	  <el-input clearable value="我爱健康" :disabled="true"></el-input>
				  	</el-form-item>
				  </el-col>
				  <el-col :span="12">	
				  	<el-form-item label="修改时间">
				  	  <el-input clearable value="云销城" :disabled="true"></el-input>
				  	</el-form-item>
				  </el-col>
				  <el-col :span="24">
				  <el-form-item label="实例备注" prop="desc">
				    <el-input clearable type="textarea" v-model="ruleForm.desc"></el-input>
				  </el-form-item>
				</el-col>
				<el-col :span="24">
				  <el-form-item>
				    <el-button type="primary" @click="submitForm('ruleForm')">保存</el-button>
				    <el-button @click="resetForm('ruleForm')">重置</el-button>
				  </el-form-item>
				</el-col>
			</el-row>
		</el-form>
	</el-row>
  </div>
</template>

<script>
  export default {
    data() {
      return {
        radio: '1',
        ruleForm: {
          name: '',
          Nativeplace: '',
          desc: ''
        },
        checkList: ['财务'],
        rules: {
          name: [
            { required: true, message: '请输入员工名称', trigger: 'blur' },
            { min: 2, max: 6, message: '长度在 2 到 6 个字符', trigger: 'blur' }
          ], 
          Nativeplace: [
            { required: true, message: '输入一级域名', trigger: 'blur' },
            { min: 11, max: 11, message: '一级域名格式不正确', trigger: 'blur' }
          ]
        }
      };
    }
  }
</script>