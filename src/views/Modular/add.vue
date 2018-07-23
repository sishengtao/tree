<template>
	<div class="app-container">
		<el-form ref="form" :model="form" label-width="80px">
			<el-row>
				<el-col :span="12">
				  <el-form-item label="菜单名称">
				    <el-input clearable v-model="form.name" suffix-icon="el-icon-edit"></el-input>
				    <i class="el-icon-edit el-input__icon" slot="suffix" @click="handleIconClick"></i>
				  </el-form-item>
				</el-col>
				<el-col :span="12">
				  <el-form-item label="是否开启">
				    <el-switch v-model="form.delivery"></el-switch>
				  </el-form-item>
				</el-col>
				<el-col :span="12">
				  <el-form-item label="权限设置">
				    <el-select v-model="form.region" placeholder="请选择活动区域">
				      <el-option label="能发商品" value="shanghai"></el-option>
				      <el-option label="不能发商品" value="beijing"></el-option>
				    </el-select>
				  </el-form-item>
				</el-col>
				    <el-col :span="12">
					  <el-form-item label="活动性质">
					    <el-checkbox-group v-model="form.type">
					      <el-checkbox label="操作权限" name="type"></el-checkbox>
					      <el-checkbox label="业务权限" name="type"></el-checkbox>
					      <el-checkbox label="数据权限" name="type"></el-checkbox>
					    </el-checkbox-group>
					  </el-form-item>
					</el-col>
					<el-col :span="12">
					  <el-form-item label="权限类型">
					    <el-radio-group v-model="form.resource">
					      <el-radio label="操作权限"></el-radio>
					      <el-radio label="业务权限"></el-radio>
					      <el-radio label="数据权限"></el-radio>
					    </el-radio-group>
					  </el-form-item>
					</el-col>
					<el-col :span="24">
					  <el-form-item label="活动形式">
					    <el-input clearable type="textarea" v-model="form.desc"></el-input>
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
	</div>
</template>

<script>
  export default {
    data() {
      return {
        form: {
          name: '',
          region: '',
          date1: '',
          date2: '',
          delivery: false,
          type: [],
          resource: '',
          desc: ''
        }
      }
    },
    methods: {
      onSubmit() {
        console.log('submit!');
      }
    }
  }
</script>
