<template>
	<div class="app-container">
	  <el-tabs v-model="activeName" @tab-click="handleClick">
	    <el-tab-pane label="基础信息" name="first"><addsite1/></el-tab-pane>
	    <el-tab-pane label="其他信息" name="second"><addsite2/></el-tab-pane>
	    <!-- <el-tab-pane label="其他信息" name="third"><addsite3/></el-tab-pane> -->
	  </el-tabs>
	</div>
</template>
<script>
	import addsite1 from '@/views/Example/sitebox/addsite1'
	import addsite2 from '@/views/Example/sitebox/addsite2'
	import addsite3 from '@/views/Example/sitebox/addsite3'
	export default {
		components: {addsite1,addsite2,addsite3},
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