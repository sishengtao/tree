<template>
    <el-tabs v-model="activeName" @tab-click="handleClick" tab-position="left">
      <el-tab-pane label="商品管理" name="first"><menutreecon/></el-tab-pane>
      <el-tab-pane label="商品设置" name="second"><menutreecon/></el-tab-pane>
      <el-tab-pane label="+添加"></el-tab-pane>
    </el-tabs>
</template>
<script>
import menutreecon from '@/views/Example/pop/menutreecon'
  export default {
    components: {menutreecon},
    data() {
      return {
        activeName:'first'
      };
    },
    methods: {
      handleClick(tab, event) {
        console.log(tab, event);
      }
    }
  };
</script>