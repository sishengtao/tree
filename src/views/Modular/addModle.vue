<template>
<el-row>
	<el-form :model="ruleForm" :rules="rules" ref="ruleForm" label-width="100px" class="demo-ruleForm">
  		<el-row>
  		  <el-col :span="12">	
  		  	<el-form-item label="模块名称" prop="name">
  		  	  <el-input clearable v-model="ruleForm.name"></el-input>
  		  	</el-form-item>
  		  </el-col>
  		  <el-col :span="12">	
  		  	<el-form-item label="模块编码" prop="Nativeplace">
  		  	  <el-input clearable v-model="ruleForm.Nativeplace"></el-input>
  		  	</el-form-item>
  		  </el-col>
  		  <el-col :span="12">	
  		  	<el-form-item label="模块图标" prop="Nativeicon">
  		  	  <el-input clearable v-model="ruleForm.Nativeicon"></el-input>
  		  	</el-form-item>
  		  </el-col>
  		  <el-col :span="12">	
  		  	<el-form-item label="开通方式" prop="Nativeplace">
  		  	  <el-switch
  		  	    v-model="value3"
  		  	    active-text="付费"
  		  	    inactive-text="免费">
  		  	  </el-switch>
  		  	</el-form-item>
  		  </el-col>
  		  <el-col :span="12">	
  		  	<el-form-item label="服务方式" prop="Nativeplace">
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
  		  	<el-form-item label="服务价格" prop="Nativeprice">
  		  	  <el-input clearable v-model="ruleForm.Nativeprice"></el-input>
  		  	</el-form-item>
  		  </el-col>
  		</el-row>
		  <el-form-item label="模块备注" prop="desc">
		    <el-input clearable type="textarea" v-model="ruleForm.desc"></el-input>
		  </el-form-item>
      <el-form-item>
        <el-button type="primary" @click="onSubmit">保存</el-button>
        <el-button>取消</el-button>
      </el-form-item>
	</el-form>
</el-row>
</template>
<script>
  export default {
    data() {
      return {
      	value3: true,
      	radio: '1',
        ruleForm: {
          name: '',
          Nativeplace: '',
          desc: ''
        },
        options: [{
          value: '选项1',
          label: '免费'
        }, {
          value: '选项2',
          label: '永久'
        }, {
          value: '选项3',
          label: '按月'
        }, {
          value: '选项4',
          label: '按季'
        }, {
          value: '选项5',
          label: '按年'
        }, {
          value: '选项6',
          label: '按量'
        }],
        value: '',
        checkList: ['财务'],
        rules: {
          name: [
            { required: true, message: '请输入模块名称', trigger: 'blur' },
            { min: 2, max: 6, message: '长度在 2 到 6 个字符', trigger: 'blur' }
          ], 
          Nativeplace: [
            { required: true, message: '输入模块编码', trigger: 'blur' },
            { min: 11, max: 11, message: '编码格式不正确', trigger: 'blur' }
          ], 
          Nativeicon: [
            { required: true, message: '输入模块图标', trigger: 'blur' },
          ], 
          Nativeprice: [
            { required: true, message: '输入服务价格', trigger: 'blur' },
          ]
        }
      };
    }
  }
</script>