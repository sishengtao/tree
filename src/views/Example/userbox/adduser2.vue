<template>
  <div class="el-text-center">
    <el-radio v-model="radio7" label="1" border>非系统用户</el-radio>
    <el-radio v-model="radio7" label="2" border>系统用户</el-radio>
  </div>
</template>
<script>
  export default {
    data () {
      return {
        radio7: '1',
      };
    }
  }
</script>