<template>
<el-row>
	<el-tabs v-model="activeName" @tab-click="handleClick">
	  <el-tab-pane label="基本信息" name="first"><staffinfo1/></el-tab-pane>
	  <el-tab-pane label="其他信息" name="second"><staffinfo2/></el-tab-pane>
	  <el-tab-pane label="保密信息" name="third"><staffinfo3/></el-tab-pane>
	</el-tabs>
</el-row>
</template>
<script>
import staffinfo1 from '@/views/Example/pop/staffinfo1'
import staffinfo2 from '@/views/Example/pop/staffinfo2'
import staffinfo3 from '@/views/Example/pop/staffinfo3'
  export default {
  	components: {staffinfo1,staffinfo2,staffinfo3},
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
  }
</script>