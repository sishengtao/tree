<template>
    <el-table
      :data="tableData"
      style="width: 100%">
      <el-table-column
        prop="name"
        label="功能名称"
        width="180">
      </el-table-column>
      <el-table-column label="增加">
        <template slot-scope="scope">
            <el-switch
              v-model="value1"
              active-color="#13ce66"
              inactive-color="#ff4949">
            </el-switch>
        </template>
      </el-table-column>
      <el-table-column label="删除">
        <template slot-scope="scope">
            <el-switch
              v-model="value2"
              active-color="#13ce66"
              inactive-color="#ff4949">
            </el-switch>
        </template>
      </el-table-column>
      <el-table-column label="编辑">
        <template slot-scope="scope">
            <el-switch
              v-model="value3"
              active-color="#13ce66"
              inactive-color="#ff4949">
            </el-switch>
        </template>
      </el-table-column>
      <el-table-column label="查看">
        <template slot-scope="scope">
            <el-switch
              v-model="value4"
              active-color="#13ce66"
              inactive-color="#ff4949">
            </el-switch>
        </template>
      </el-table-column>
      <el-table-column label="打印">
        <template slot-scope="scope">
            <el-switch
              v-model="value5"
              active-color="#13ce66"
              inactive-color="#ff4949">
            </el-switch>
        </template>
      </el-table-column>
      <el-table-column label="导入">
        <template slot-scope="scope">
            <el-switch
              v-model="value6"
              active-color="#13ce66"
              inactive-color="#ff4949">
            </el-switch>
        </template>
      </el-table-column>
      <el-table-column label="导出">
        <template slot-scope="scope">
            <el-switch
              v-model="value7"
              active-color="#13ce66"
              inactive-color="#ff4949">
            </el-switch>
        </template>
      </el-table-column>
    </el-table>
  </template>

  <script>
    export default {
      data() {
        return {
          tableData: [{
            name: '商品发布'
          }, {
            name: '商品管理'
          }, {
            name: '到货通知'
          }, {
            name: '商品评价'
          }, {
            name: '商品咨询'
          }, {
            name: '分级定价'
          }],
          value1: true,
          value2: true,
          value3: true,
          value4: true,
          value5: true,
          value6: true,
          value7: true
        }
      }
    }
  </script>