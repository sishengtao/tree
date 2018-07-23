import Vue from 'vue'
import Router from 'vue-router'

// in development-env not use lazy-loading, because lazy-loading too many pages will cause webpack hot update too slow. so only in production use lazy-loading;
// detail: https://panjiachen.github.io/vue-element-admin-site/#/lazy-loading

Vue.use(Router)

/* Layout */
import Layout from '../views/layout/Layout'

/**
* hidden: true                   if `hidden:true` will not show in the sidebar(default is false)
* alwaysShow: true               if set true, will always show the root menu, whatever its child routes length
*                                if not set alwaysShow, only more than one route under the children
*                                it will becomes nested mode, otherwise not show the root menu
* redirect: noredirect           if `redirect:noredirect` will no redirct in the breadcrumb
* name:'router-name'             the name is used by <keep-alive> (must set!!!)
* meta : {
    title: 'title'               the name show in submenu and breadcrumb (recommend set)
    icon: 'svg-name'             the icon show in the sidebar,
  }
**/
export const constantRouterMap = [
  { path: '/login', component: () => import('@/views/login/index'), hidden: true },
  { path: '/404', component: () => import('@/views/404'), hidden: true },

  {
    path: '/',
    component: Layout,
    redirect: '/index',
    name: '首页',
    hidden: true,
    children: [{
      path: 'index',
      component: () => import('@/views/index/index')
    }]
  },

  // {
  //   path: '/Platform',
  //   component: Layout,
  //   redirect: '/Platform/System/index',
  //   name: '旧+',
  //   meta: {
  //     title: '旧+',
  //     icon: 'form'
  //   },
  //   children: [
  //     {
  //       path: '/Platform/System', // Must write the full path
  //       component: () => import('@/views/Platform/System/index'), // Parent router-view
  //       name: '系统管理',
  //       meta: { title: '系统管理' },
  //       children: [
  //         {
  //           path: 'Person',
  //           component: () => import('@/views/Platform/System/Person'),
  //           name: '人员机构',
  //           meta: { title: '人员机构' }
  //         },
  //         {
  //           path: 'Menu',
  //           component: () => import('@/views/Platform/System/Menu'),
  //           name: '菜单权限',
  //           meta: { title: '菜单权限' }
  //         },
  //         {
  //           path: 'Configuration',
  //           component: () => import('@/views/Platform/System/Configuration'),
  //           name: '配置信息',
  //           meta: { title: '配置信息' }
  //         },
  //         {
  //           path: 'Perfor',
  //           component: () => import('@/views/Platform/System/Perfor'),
  //           name: '性能设置',
  //           meta: { title: '性能设置' }
  //         }
  //       ]
  //     }
  //   ]},
    {
    path: '/Goods',
    component: Layout,
    redirect: '/Goods/index',
    name: '商品',
    meta: {
      title: '商品',
      icon: 'component'
    },
    children: [
      {
        path: '/Goods/management', 
        component: () => import('@/views/Goods/management/index'),
        name: '商品管理',
        meta: { title: '商品管理' },
        children: [
          {
            path: 'listGoods',
            component: () => import('@/views/Goods/management/listGoods'),
            name: '商品列表',
            meta: { title: '商品列表' }
          },
          {
            path: 'listService',
            component: () => import('@/views/Goods/management/listService'),
            name: '服务列表',
            meta: { title: '服务列表' }
          }
        ]
      },
      {
        path: '/Goods/setting', // Must write the full path
        component: () => import('@/views/Goods/setting/index'), // Parent router-view
        name: '商品设置',
        meta: { title: '商品设置' },
        children: [
          {
            path: 'class',
            component: () => import('@/views/Goods/setting/class'),
            name: '商品分类',
            meta: { title: '商品分类' }
          },
          {
            path: 'spec',
            component: () => import('@/views/Goods/setting/spec'),
            name: '商品规格',
            meta: { title: '商品规格' }
          }
        ]
      }
    ]},
    {
      path: '/Modular',
      component: Layout,
      redirect: 'Modular',
      name: '模块',
      meta: {
        title: '模块',
        icon: 'table'
      },
      children: [
        { path: 'info', component: () => import('@/views/Modular/info'), name: '模块管理', meta: { title: '模块管理' }},
        { path: 'jurisdiction', component: () => import('@/views/Modular/jurisdiction'), name: '功能权限', meta: { title: '功能权限' }}
      ]
    },
    {
      path: '/Example',
      component: Layout,
      redirect: 'Example',
      name: '实例',
      meta: {
        title: '实例',
        icon: 'excel'
      },
      children: [
        { path: 'info', component: () => import('@/views/Example/info'), name: '实例信息', meta: { title: '实例信息' }},
        { path: 'module', component: () => import('@/views/Example/module'), name: '模块配置', meta: { title: '模块配置' }},
        { path: 'site', component: () => import('@/views/Example/site'), name: '站点管理', meta: { title: '站点管理' }},
        { path: '/addsite',hidden: true, component: () => import('@/views/Example/pop/addsite'), name: '添加站点', meta: { title: '添加站点' }},
        { path: 'role', component: () => import('@/views/Example/role'), name: '角色管理', meta: { title: '角色管理' }},
        { path: 'user', component: () => import('@/views/Example/user'), name: '系统用户', meta: { title: '系统用户' }},
        { path: 'mechanism', component: () => import('@/views/Example/mechanism'), name: '机构管理', meta: { title: '机构管理' }},
        { path: 'position', component: () => import('@/views/Example/position'), name: '职位管理', meta: { title: '职位管理' }},
        { path: 'staff', component: () => import('@/views/Example/staff'), name: '员工管理', meta: { title: '员工管理' }},
      ]
    },
    {
      path: '/System',
      component: Layout,
      redirect: 'System',
      name: '平台',
      meta: {
        title: '平台',
        icon: 'tab'
      },
      children: [
        { path: 'info', component: () => import('@/views/System/info'), name: '平台信息', meta: { title: '平台信息' }},
        { path: 'setup', component: () => import('@/views/System/setup'), name: '平台设置', meta: { title: '平台设置' }},
        { path: 'journal', component: () => import('@/views/System/journal'), name: '平台日志', meta: { title: '平台日志' }},
        { path: 'dictionary', component: () => import('@/views/System/dictionary'), name: '数据字典', meta: { title: '数据字典' }},
        { path: 'multilingual', component: () => import('@/views/System/multilingual'), name: '多语言', meta: { title: '多语言' }}
      ]
    },
    {
      path: '/Operate',
      component: Layout,
      redirect: 'Operate',
      name: '运营',
      meta: {
        title: '运营',
        icon: 'example'
      },
      children: [
        { path: 'info', component: () => import('@/views/Operate/info'), name: '基本信息', meta: { title: '基本信息' }},
        { path: 'jurisdiction', component: () => import('@/views/Operate/key'), name: '密钥管理', meta: { title: '密钥管理' }}
      ]
    },
  { path: '*', redirect: '/404', hidden: true }
]

export default new Router({
  // mode: 'history', //后端支持可开
  scrollBehavior: () => ({ y: 0 }),
  routes: constantRouterMap
})