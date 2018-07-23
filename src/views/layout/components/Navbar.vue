<template>
  <div>
      <el-menu class="navbar clearfix" mode="horizontal">
        <hamburger class="hamburger-container" :toggleClick="toggleSideBar" :isActive="sidebar.opened"></hamburger>
        <breadcrumb></breadcrumb>
        <el-dropdown class="avatar-container fr" trigger="hover">
          <div class="avatar-wrapper">
            <img class="user-avatar" :src="avatar+'?imageView2/1/w/80/h/80'">
            <i class="el-icon-caret-bottom"></i>
          </div>
          <el-dropdown-menu class="user-dropdown top_right_box" slot="dropdown">
            <router-link class="inlineBlock" to="/">
              <el-dropdown-item>
                <i class="el-icon-tickets"></i>&nbsp;进入首页
              </el-dropdown-item>
            </router-link>
            <el-dropdown-item @click="dialogVisible = true">
              <i class="el-icon-sort"></i>&nbsp;切换账号
            </el-dropdown-item>
            <el-dropdown-item divided>
              <span @click="logout" style="display:block;"><i class="el-icon-back"></i>&nbsp;退出账号</span>
            </el-dropdown-item>
          </el-dropdown-menu>
        </el-dropdown>
        <!-- <div class="fr"><i class="el-icon-sort"></i>切换角色</div> -->
      </el-menu>
      <el-dialog
        title="菜单管理"
        :visible.sync="changeAccountpop"
        width="50%"
        class="change_account"
        center>
        <changeAccount/>
      </el-dialog>
      <el-dialog
        title="提示"
        :visible.sync="dialogVisible"
        width="30%"
        :before-close="handleClose">
        <span>这是一段信息</span>
        <span slot="footer" class="dialog-footer">
          <el-button @click="dialogVisible = false">取 消</el-button>
          <el-button type="primary" @click="dialogVisible = false">确 定</el-button>
        </span>
      </el-dialog>
  </div>
</template>

<script>
import { mapGetters } from 'vuex'
import Breadcrumb from '@/components/Breadcrumb'
import Hamburger from '@/components/Hamburger'
import changeAccount from '@/views/layout/components/changeAccount'

export default {
  components: {
    Breadcrumb,
    Hamburger,
    changeAccount
  },
  computed: {
    ...mapGetters([
      'sidebar',
      'avatar'
    ])
  },
  data() {
        return {
          dialogVisible: false
        };
      },
  methods: {
    toggleSideBar() {
      this.$store.dispatch('ToggleSideBar')
    },
    logout() {
      this.$store.dispatch('LogOut').then(() => {
        location.reload() // 为了重新实例化vue-router对象 避免bug
      })
    },
      handleClose(done) {
        this.$confirm('确认关闭？')
          .then(_ => {
            done();
          })
          .catch(_ => {});
    }
  }
}
</script>

<style rel="stylesheet/scss" lang="scss" scoped>
.navbar {
  height: 50px;
  line-height: 50px;
  border-radius: 0px !important;
  .hamburger-container {
    line-height: 58px;
    height: 50px;
    float: left;
    padding: 0 10px;
  }
  .screenfull {
    position: absolute;
    right: 90px;
    top: 16px;
    color: red;
  }
  .avatar-container {
    // height: 50px;
    // display: inline-block;
    // position: absolute;
    // right: 35px;
    float:right;margin-right:30px;
    .avatar-wrapper {
      cursor: pointer;
      margin-top: 5px;
      position: relative;
      .user-avatar {
        width: 40px;
        height: 40px;
        border-radius: 10px;
      }
      .el-icon-caret-bottom {
        position: absolute;
        right: -20px;
        top: 25px;
        font-size: 12px;
      }
    }
  }
}
</style>

