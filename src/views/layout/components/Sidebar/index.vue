<template>
  <el-scrollbar wrapClass="scrollbar-wrapper">
    <div class="logo"></div>
    <div class="logomin"></div>
    <el-menu class="slide_left_box"
      mode="vertical"
      :show-timeout="200"
      :default-active="$route.path"
      :collapse="isCollapse"
      background-color="#ffffff"
      text-color="#666666"
      active-text-color="#333333"
      collapse-transition="false"
      unique-opened="true"
      show-timeout="0"
    >
      <sidebar-item :routes="routes"></sidebar-item>
    </el-menu>
  </el-scrollbar>
</template>

<script>
import { mapGetters } from 'vuex'
import SidebarItem from './SidebarItem'

export default {
  components: { SidebarItem },
  computed: {
    ...mapGetters([
      'sidebar'
    ]),
    routes() {
      return this.$router.options.routes
    },
    isCollapse() {
      return !this.sidebar.opened
    }
  }
}
</script>
