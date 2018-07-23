<template>
  <div class="custom-tree-container">
    <div class="block">
      <el-tree class="filter-tree"
        :data="data5"
        node-key="id"
        @node-drag-start="handleDragStart"
        @node-drag-enter="handleDragEnter"
        @node-drag-leave="handleDragLeave"
        @node-drag-over="handleDragOver"
        @node-drag-end="handleDragEnd"
        @node-drop="handleDrop"
        draggable
        :expand-on-click-node="false">
          <span class="custom-tree-node" slot-scope="{ node, data }"><span>{{ node.label }}</span>
          <span>
            <el-button
              type="text"
              size="mini"
              @click="() => append(data)">
              添加
            </el-button>
            <el-button
              type="text"
              size="mini"
              @click="() => remove(node, data)">
              删除
            </el-button>
          </span>
        </span>
      </el-tree>
    </div>
  </div>
</template>

<script>
  let id = 1000;

  export default {
    data() {
      const data = [{
        id: 1,
        label: '供货商多店',
        children: [{
          id: 4,
          label: '河南智云联创科技有限公司',
          children: [{
            id: 9,
            label: '我爱健康网站'
          }, {
            id: 10,
            label: '河南智云联创科技有限公司'
          }]
        }]
      }, {
        id: 2,
        label: '河南智云联创科技有限公司',
        children: [{
          id: 5,
          label: '销售部'
        }, {
          id: 6,
          label: '技术部'
        }]
      }, {
        id: 3,
        label: '一级 3',
        children: [{
          id: 7,
          label: '二级 3-1'
        }, {
          id: 8,
          label: '二级 3-2'
        }]
      }];
      return {
        data5: JSON.parse(JSON.stringify(data))
      }
    },

    methods: {
      append(data) {
        this.$prompt('请输入菜单名称', '提示', {
          confirmButtonText: '确定',
          cancelButtonText: '取消',
          inputErrorMessage: '菜单名称不正确'
        }).then(({ value }) => {
        this.$message({
            type: 'success',
            message: '菜单' + value + '添加成功！'
          });
        const newChild = { id: id++, label: value, children: [] };
        if (!data.children) {
          this.$set(data, 'children', []);
        }
        data.children.push(newChild);
        }).catch(() => {
          this.$message({
            type: 'info',
            message: '取消输入'
          });       
        });
        
      },
      open3() {
        this.$prompt('请重新输入菜单', '提示', {
          confirmButtonText: '确定',
          cancelButtonText: '取消',
          inputErrorMessage: '菜单名称不正确'
        }).then(({ value }) => {
          this.$message({
            type: 'success',
            message: '你的菜单是: ' + value
          });
        }).catch(() => {
          this.$message({
            type: 'info',
            message: '取消输入'
          });       
        });
      },

      remove(node, data) {
        const parent = node.parent;
        const children = parent.data.children || parent.data;
        const index = children.findIndex(d => d.id === data.id);
        children.splice(index, 1);
      },

      renderContent(h, { node, data, store }) {
        return (
          <span class="custom-tree-node">
            <span>{node.label}</span>
            <span>
              <el-button size="mini" type="text" on-click={ () => this.append(data) }>Append</el-button>
              <el-button size="mini" type="text" on-click={ () => this.remove(node, data) }>Delete</el-button>
            </span>
          </span>);
      },

      handleDragStart(node, ev) {
        console.log('drag start', node);
      },
      handleDragEnter(draggingNode, dropNode, ev) {
        console.log('tree drag enter: ', dropNode.label);
      },
      handleDragLeave(draggingNode, dropNode, ev) {
        console.log('tree drag leave: ', dropNode.label);
      },
      handleDragOver(draggingNode, dropNode, ev) {
        console.log('tree drag over: ', dropNode.label);
      },
      handleDragEnd(draggingNode, dropNode, dropType, ev) {
        console.log('tree drag end: ', dropNode && dropNode.label, dropType);
      },
      handleDrop(draggingNode, dropNode, dropType, ev) {
        console.log('tree drop: ', dropNode.label, dropType);
      },
      allowDrop(draggingNode, dropNode, type) {
        if (dropNode.data.label === '二级 3-1') {
          return type !== 'inner';
        } else {
          return true;
        }
      },
      allowDrag(draggingNode) {
        return draggingNode.data.label.indexOf('三级 3-1-1') === -1;
      }
    }
  };
</script>

<style>
  .custom-tree-node {
    flex: 1;
    display: flex;
    align-items: center;
    justify-content: space-between;
    font-size: 14px;
    padding-right: 8px;
  }
  .edit{margin-left:10px;color:#409EFF;}
</style>