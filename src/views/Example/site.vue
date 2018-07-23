<template>
	<div class="app-container">
	  <el-tabs v-model="activeName" @tab-click="handleClick">
	    <el-tab-pane label="站点信息" name="first"><info/></el-tab-pane>
	    <el-tab-pane label="菜单管理" name="second"><menu/></el-tab-pane>
	    <el-tab-pane label="模板" name="third"><template/></el-tab-pane>
	  </el-tabs>
	</div>
</template>
<script>
	import info from '@/views/Example/sitebox/info'
	import menu from '@/views/Example/sitebox/menu'
	import template from '@/views/Example/sitebox/template'
	export default {
		components: {info,menu,template},
		data() {
		  return {
		    activeName: 'first'
		  };
		},
		methods: {
		  handleClick(tab, event) {
		    console.log(tab, event);
		  }
		}
	};
</script>