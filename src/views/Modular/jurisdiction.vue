<template>
	<div class="app-container">
		<el-alert title="功能菜单描述功能菜单描述功能菜单描述功能菜单描述" type="warning"></el-alert>
		<el-row>
			<el-col :span="24"><div class="modular_title">商品管理权限</div></el-col>
			<el-col :span="24" class="modular_info_top">
				<el-col :span="22">
					<div class="fl img"><img src="../../assets/modular/isEnabledElectronic.png" height="72" width="72"></div>
					<div class="fl text">
						<h2 class="title">商品管理</h2>
						<div class="gray">对接第三方电子面单接口，用户可以根据订单快速打印电子面单发货，无需再手动导入运单号对接第三方电子面单接口，用户可以根据订单快速打印电子面单发货，无需再手动导入运单号对接第三方电子面单接口，用户可以根据订据订据用户可以根据订据订据用户可以根据订据订据用户可以根据订据订据用户可以根据订据订据订单快速打印电子面单发货，无需再手动导入运单号</div>
					</div>
				</el-col>
				<el-col :span="2" class="max_switch">
					<el-switch v-model="value3" ></el-switch>
				</el-col>
			</el-col>
			<el-col :span="24"><div class="modular_title">商品管理菜单权限</div></el-col>
			<el-col :span="24">
				<el-tabs v-model="activeName" @tab-click="handleClick" tab-position="left">
				  <el-tab-pane label="商品列表" name="a"><add/></el-tab-pane>
				  <el-tab-pane label="商品发布" name="b"><add/></el-tab-pane>
				  <el-tab-pane label="服务列表" name="c"><ttbox/></el-tab-pane>
				  <el-tab-pane label="到货通知" name="d"><ttbox/></el-tab-pane>
				  <el-tab-pane label="商品评价" name="e"><ttbox/></el-tab-pane>
				  <el-tab-pane label="商品咨询" name="f"><ttbox/></el-tab-pane>
				  <el-tab-pane label="三方商品" name="g"><ttbox/></el-tab-pane>
				  <el-tab-pane label="+添加"></el-tab-pane>
				</el-tabs>
			</el-col>
		</el-row>
	</div>
</template>
<script>
import add from '@/views/Modular/add'
  export default {
	components: {add},
    data() {
      return {
        value3: true,
        activeName:'a'
      }
    },
    methods: {
      handleClick(tab, event) {
        console.log(tab, event);
      }
    }
  };
</script>
