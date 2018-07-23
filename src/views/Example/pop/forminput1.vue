
<template>
  <div>
    <el-form ref="form" :model="form" label-width="80px">
      <el-form-item label="名称">
        <el-input clearable v-model="form.name"></el-input>
      </el-form-item>
      <el-form-item label="等级">
        <el-select v-model="value" placeholder="请选择">
          <el-option
            v-for="item in options"
            :key="item.value"
            :label="item.label"
            :value="item.value">
          </el-option>
        </el-select>
      </el-form-item>
      <el-form-item label="是否内置">
        <el-switch
          v-model="value1"
          active-color="#13ce66"
          inactive-color="#ff4949">
        </el-switch>
      </el-form-item>
      <el-form-item label="是否启用">
        <el-switch
          v-model="value2"
          active-color="#13ce66"
          inactive-color="#ff4949">
        </el-switch>
      </el-form-item>
      <el-form-item label="备注">
        <el-input clearable type="textarea" v-model="form.desc"></el-input>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" @click="submitForm('ruleForm')">确定</el-button>
        <el-button @click="resetForm('ruleForm')">重置</el-button>
      </el-form-item>
    </el-form>
  </div>
</template>
<script>
  export default {
    data() {
      return {
        value1: true,
        value2: true,
        form: {
          name: '',
          region: '',
          date1: '',
          date2: '',
          delivery: false,
          type: [],
          resource: '',
          desc: ''
        },
        options: [{
          value: '选项1',
          label: '等级1'
        }, {
          value: '选项2',
          label: '等级2'
        }, {
          value: '选项3',
          label: '等级3'
        }, {
          value: '选项4',
          label: '等级4'
        }, {
          value: '选项5',
          label: '等级5'
        }],
        value: ''
      }
    },

  }
</script>



