<template>
<el-row>
	<el-form :model="ruleForm" :rules="rules" ref="ruleForm" label-width="100px" class="demo-ruleForm">
		<el-row>
		  <el-col :span="12">	
		  	<el-form-item label="员工福利">
		  	  <el-input clearable></el-input>
		  	</el-form-item>
		  </el-col>
		  <el-col :span="12">	
		  	<el-form-item label="薪资级别">
		  	  <el-input clearable></el-input>
		  	</el-form-item>
		  </el-col>
		  <el-col :span="12">	
		  	<el-form-item label="高管级别">
		  	  	<el-select v-model="value" placeholder="请选择">
		  	      <el-option
		  	        v-for="item in options"
		  	        :key="item.value"
		  	        :label="item.label"
		  	        :value="item.value">
		  	      </el-option>
		  	    </el-select>
		  	</el-form-item>
		  </el-col>
		    <el-col :span="12">	
		    	<el-form-item label="是否签合同">
		    	  	<el-radio v-model="radio" label="1">是</el-radio>
		    	    <el-radio v-model="radio" label="2">否</el-radio>
		    	    <el-radio v-model="radio" label="3">未知</el-radio>
		    	</el-form-item>
		    </el-col>
		  	<el-col :span="12">	
		    	<el-form-item label="合同到期时间">
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
		  	<el-form-item label="个人主页">
		  	  <el-input clearable></el-input>
		  	</el-form-item>
		  </el-col>
		  <el-col :span="12">	
		  	<el-form-item label="所属地区标示">
		  	  	<el-input clearable></el-input>
		  	</el-form-item>
		  </el-col>
		  <el-col :span="12">	
		  	<el-form-item label="详细地址">
		  	  	<el-input clearable></el-input>
		  	</el-form-item>
		  </el-col>
		  <el-col :span="12">	
		  	<el-form-item label="邮政编码">
		  	  	<el-input clearable></el-input>
		  	</el-form-item>
		  </el-col>
		  <el-col :span="12">	
		  	<el-form-item label="籍贯">
		  	  	<el-input clearable></el-input>
		  	</el-form-item>
		  </el-col>
		  <el-col :span="12">	
		    	<el-form-item label="是否置顶">
		    	  	<el-radio v-model="radio1" label="1">是</el-radio>
		    	    <el-radio v-model="radio1" label="2">否</el-radio>
		    	</el-form-item>
		    </el-col>
		    <el-col :span="12">	
		    	<el-form-item label="是否内置">
		    	  	<el-radio v-model="radio2" label="1">是</el-radio>
		    	    <el-radio v-model="radio2" label="2">否</el-radio>
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
        options: [{
          value: '选项0',
          label: '非高管'
        }, {
          value: '选项1',
          label: 'VP1'
        }, {
          value: '选项2',
          label: 'VP2'
        }, {
          value: '选项3',
          label: 'VP3'
        }, {
          value: '选项4',
          label: 'VP4'
        }, {
          value: '选项5',
          label: 'VP5'
        }, {
          value: '选项6',
          label: 'VP6'
        }, {
          value: '选项7',
          label: 'VP7'
        }, {
          value: '选项8',
          label: 'VP8'
        }, {
          value: '选项9',
          label: 'VP9'
        }],
        value: '',
        radio: '',
        radio1: '',
        radio2: '',
        datavalue1: '',
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