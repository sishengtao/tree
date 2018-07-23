<template>
<div class="block">
  <el-cascader
    expand-trigger="hover"
    :options="options"
    v-model="selectedOptions2"
    @change="handleChange">
  </el-cascader>
</div>
</template>
<script>
  export default {
    data() {
      return {
        options: [{
          value: 'zhinan',
          label: '女装',
          children: [{
            value: 'shejiyuanze',
            label: '女T恤',
            children: [{
              value: 'yizhi',
              label: '女大T恤'
            }, {
              value: 'fankui',
              label: '女小T恤'
            }, {
              value: 'xiaolv',
              label: '女小T恤衫'
            }, {
              value: 'kekong',
              label: '女小T恤衫'
            }]
          }, {
            value: 'daohang',
            label: '女裙',
            children: [{
              value: 'cexiangdaohang',
              label: '连衣裙'
            }, {
              value: 'dingbudaohang',
              label: '花裙'
            }]
          }]
        }, {
          value: 'ziyuan',
          label: '男装',
          children: [{
            value: 'axure',
            label: '男装分类1'
          }, {
            value: 'sketch',
            label: '男装分类2'
          }, {
            value: 'jiaohu',
            label: '男装分类3'
          }]
        }],
        selectedOptions: [],
        selectedOptions2: []
      };
    },
    methods: {
      handleChange(value) {
        console.log(value);
      }
    }
  };
</script>