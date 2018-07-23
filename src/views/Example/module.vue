<template>
  <div class="app-container module_pei">
      <el-row :gutter="10">
        <el-col :span="12">
          <el-card class="box-card">
            <div slot="header" class="title_box clearfix">
              <span class="title_text fl" style="line-height:20px;">商品</span>
              <el-switch
                class="fr"
                v-model="value2"
                active-color="#13ce66"
                inactive-color="#ff4949">
              </el-switch>
              <div class="title_edit red fr" type="text">删除</div>
              <div class="title_edit fr" type="text">保存</div>
            </div>
            <div class="text item">
              <el-tree
                :data="data2"
                show-checkbox
                node-key="id"
                :default-expanded-keys="[1,2]"
                :default-checked-keys="[5]"
                :props="defaultProps">
              </el-tree>
            </div>
          </el-card>
        </el-col>
        <el-col :span="12">
          <el-card class="box-card">
            <div slot="header" class="clearfix">
              <span class="title_text fl" style="line-height:20px;">销售</span>
              <el-switch
                class="fr"
                v-model="value2"
                active-color="#13ce66"
                inactive-color="#ff4949">
              </el-switch>
              <div class="title_edit red fr" type="text">删除</div>
              <div class="title_edit fr" type="text">保存</div>
            </div>
            <div class="text item">
              <el-tree
                :data="data2"
                show-checkbox
                node-key="id"
                :default-expanded-keys="[1,2]"
                :default-checked-keys="[5]"
                :props="defaultProps">
              </el-tree>
            </div>
          </el-card>
        </el-col>
        <el-col :span="12">
          <el-card class="box-card">
            <div slot="header" class="clearfix">
              <span class="title_text fl" style="line-height:20px;">客户</span>
              <el-switch
                class="fr"
                v-model="value2"
                active-color="#13ce66"
                inactive-color="#ff4949">
              </el-switch>
              <div class="title_edit red fr" type="text">删除</div>
              <div class="title_edit fr" type="text">保存</div>
            </div>
            <div class="text item">
              <el-tree
                :data="data2"
                show-checkbox
                node-key="id"
                :default-expanded-keys="[1,2]"
                :default-checked-keys="[5]"
                :props="defaultProps">
              </el-tree>
            </div>
          </el-card>
        </el-col>
        <el-col :span="12">
          <el-card class="box-card">
            <div slot="header" class="clearfix">
              <span class="title_text fl" style="line-height:20px;">采购</span>
              <el-switch
                class="fr"
                v-model="value2"
                active-color="#13ce66"
                inactive-color="#ff4949">
              </el-switch>
              <div class="title_edit red fr" type="text">删除</div>
              <div class="title_edit fr" type="text">保存</div>
            </div>
            <div class="text item">
              <el-tree
                :data="data2"
                show-checkbox
                node-key="id"
                :default-expanded-keys="[1,2]"
                :default-checked-keys="[5]"
                :props="defaultProps">
              </el-tree>
            </div>
          </el-card>
        </el-col>
      </el-row>
  </div>
</template>
<script>
export default {
    data() {
      return {
        value2: true,
        data2: [{
            id: 1,
            label: '商品管理',
            id: 4,
            label: '商品列表',
            children: [{
              id: 9,
              label: '服务列表'
            }, {
              id: 10,
              label: '到货通知'
            }, {
              id: 11,
              label: '商品评价'
            }, {
              id: 12,
              label: '商品咨询'
            }, {
              id: 13,
              label: '三方商品'
          }]
        }, {
          id: 2,
          label: '商品设置',
          children: [{
            id: 5,
            label: '商品分类'
          }, {
            id: 6,
            label: '商品规格'
          }, {
            id: 6,
            label: '商品品牌'
          }, {
            id: 6,
            label: '商品单位'
          }, {
            id: 6,
            label: '商品标签'
          }]
        }],
        defaultProps: {
          children: 'children',
          label: 'label'
        }
      };
    }
  };
</script>
