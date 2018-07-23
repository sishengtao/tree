<template>
	<div class="meuntree_box">
		<el-button class="meuntree_posi" @click="addTab(editableTabsValue2)">+</el-button>
		<el-tabs v-model="editableTabsValue2" type="card" closable @tab-remove="removeTab">
		  <el-tab-pane
		    v-for="(item, index) in editableTabs2"
		    :key="item.name"
		    :label="item.title"
		    :name="item.name"
		  >
		    {{item.content}}
		  </el-tab-pane>
		</el-tabs>
		<menutreepopbox/>
	</div>
</template>
<script>
  import menutreepopbox from '@/views/Example/pop/menutreepopbox'
  export default {
  	components: {menutreepopbox},
    data() {
      return {
        editableTabsValue2: '1',
        editableTabs2: [{
          title: '会员',
          name: '1',
          content: ''
        }, {
          title: '销售',
          name: '2',
          content: ''
        },{
          title: '采购',
          name: '3',
          content: ''
        },{
          title: '库存',
          name: '4',
          content: ''
        },{
          title: '财务',
          name: '5',
          content: ''
        },{
          title: '营销',
          name: '6',
          content: ''
        },{
          title: '数据',
          name: '7',
          content: ''
        },{
          title: '系统',
          name: '8',
          content: ''
        }],
        tabIndex: 2
      }
    },
    methods: {
      addTab(targetName) {
        let newTabName = ++this.tabIndex + '';
        this.editableTabs2.push({
          title: '新菜单',
          name: newTabName,
          content: '新菜单内容'
        });
        this.editableTabsValue2 = newTabName;
      },
      removeTab(targetName) {
        let tabs = this.editableTabs2;
        let activeName = this.editableTabsValue2;
        if (activeName === targetName) {
          tabs.forEach((tab, index) => {
            if (tab.name === targetName) {
              let nextTab = tabs[index + 1] || tabs[index - 1];
              if (nextTab) {
                activeName = nextTab.name;
              }
            }
          });
        }
        
        this.editableTabsValue2 = activeName;
        this.editableTabs2 = tabs.filter(tab => tab.name !== targetName);
      }
    }
  }
</script>