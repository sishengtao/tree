<template>
	<div class="menu_mech">
		<el-row :gutter="20">
		  <el-col :span="6">
			<el-card class="box-card">
					  <div slot="header" class="clearfix">
					    <span>云店铺</span>
					    <el-button style="float: right; padding: 3px 0" type="text">
					    	<el-button type="primary" size="mini">编辑</el-button>
					    	<el-button type="danger" size="mini" @click="menutreepop = true">站点管理</el-button>
					    </el-button>
					  </div>
					  <div class="text item">
						<el-row :gutter="5">
							<div>图标：</div>
							<div>备注：暂无备注</div>
						</el-row>
					  </div>
					</el-card>
		  </el-col>
		  <el-col :span="6">
			<el-card class="box-card">
					  <div slot="header" class="clearfix">
					    <span>云批发</span>
					    <el-button style="float: right; padding: 3px 0" type="text">
					    	<el-button type="primary" size="mini">编辑</el-button>
					    	<el-button type="danger" size="mini" @click="menutreepop = true">站点管理</el-button>
					    </el-button>
					  </div>
					  <div class="text item">
						<el-row :gutter="5">
							<div>图标：</div>
							<div>备注：暂无备注</div>
						</el-row>
					  </div>
					</el-card>
		  </el-col>
		  <el-col :span="6">
			<el-card class="box-card">
					  <div slot="header" class="clearfix">
					    <span>云厂商</span>
					    <el-button style="float: right; padding: 3px 0" type="text">
					    	<el-button type="primary" size="mini">编辑</el-button>
					    	<el-button type="danger" size="mini" @click="menutreepop = true">站点管理</el-button>
					    </el-button>
					  </div>
					  <div class="text item">
						<el-row :gutter="5">
							<div>图标：</div>
							<div>备注：暂无备注</div>
						</el-row>
					  </div>
					</el-card>
		  </el-col>
		  <el-col :span="6">
			<el-card class="box-card">
					  <div slot="header" class="clearfix">
					    <span>云市场</span>
					    <el-button style="float: right; padding: 3px 0" type="text">
					    	<el-button type="primary" size="mini">编辑</el-button>
					    	<el-button type="danger" size="mini" @click="menutreepop = true">站点管理</el-button>
					    </el-button>
					  </div>
					  <div class="text item">
						<el-row :gutter="5">
							<div>图标：</div>
							<div>备注：暂无备注</div>
						</el-row>
					  </div>
					</el-card>
		  </el-col>
		  <router-link class="inlineBlock" to="/addsite">
			  <el-col :span="6">
				<el-card class="box-card ft14">
					<div slot="header" class="clearfix el-text-center">
					  <span>新站点</span>
					</div>
					<div class="text item el-text-center">
						<i class="el-icon-circle-plus-outline"></i>&nbsp;添加
					</div>
				</el-card>
			  </el-col>
		  </router-link>
		</el-row>

		<el-dialog
		  title="站点管理"
		  :visible.sync="menutreepop"
		  width="80%"
		  center>
		  <menutreepop/>
		</el-dialog>

	</div>
</template>
<script>
	import menutreepop from '@/views/Example/pop/menutreepop'
	export default {
		components: {menutreepop},
		data() {
		  return {
		  	menutreepop: false
		  }
		}
	}
</script>