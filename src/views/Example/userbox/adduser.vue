<template>
<div>
<el-row>
	<el-form :model="ruleForm" :rules="rules" ref="ruleForm" label-width="100px" class="demo-ruleForm">
    <el-tabs v-model="activeName" @tab-click="handleClick">
      <el-tab-pane label="基本信息" name="first">
              <el-row>
                <el-col :span="12"> 
                  <el-form-item label="姓名" prop="name">
                    <el-input clearable v-model="ruleForm.name"></el-input>
                  </el-form-item>
                </el-col>
                <el-col :span="12"> 
                  <el-form-item label="登录账号" prop="Nativeplace">
                    <el-input clearable v-model="ruleForm.Nativeplace"></el-input>
                  </el-form-item>
                </el-col>
                <el-col :span="12"> 
                  <el-form-item label="昵称">
                    <el-input clearable></el-input>
                  </el-form-item>
                </el-col>
                <el-col :span="12"> 
                  <el-form-item label="性别" prop="sex">
                  <el-radio-group v-model="ruleForm.sex">
                    <el-radio label="男"></el-radio>
                    <el-radio label="女"></el-radio>
                  </el-radio-group>
                </el-form-item>
                </el-col>
                <el-col :span="12"> 
                  <el-form-item label="身份证号" prop="snum">
                    <el-input clearable v-model="ruleForm.snum"></el-input>
                  </el-form-item>
                </el-col>
                <el-col :span="12">
                  <el-form-item label="手机号码" prop="phone1">
                    <el-input clearable v-model="ruleForm.phone1"></el-input>
                  </el-form-item>
                </el-col>
                <el-col :span="12">
                  <el-form-item label="办公号码" prop="phone2">
                    <el-input clearable v-model="ruleForm.phone2"></el-input>
                  </el-form-item>
                </el-col>
                <el-col :span="12">
                  <el-form-item label="来源" prop="region">
                    <el-select v-model="ruleForm.region" placeholder="请选择来源">
                      <el-option label="内置" value="1"></el-option>
                      <el-option label="创建" value="1"></el-option>
                      <el-option label="开放注册" value="2"></el-option>
                      <el-option label="客户转化" value="3"></el-option>
                    </el-select>
                  </el-form-item>
                </el-col>
                <el-col :span="12">
                  <el-form-item label="限制类型" prop="director">
                    <el-select v-model="ruleForm.director" placeholder="请选择上级主管">
                      <el-option label="无限制" value="1"></el-option>
                      <el-option label="登录次数" value="1"></el-option>
                      <el-option label="时间" value="2"></el-option>
                      <el-option label="体验" value="3"></el-option>
                    </el-select>
                  </el-form-item>
                </el-col>
                <el-col :span="12">
                  <el-form-item label="最大登录次数">
                    <el-input clearable></el-input>
                  </el-form-item>
                </el-col>
                <el-col :span="12">
                  <el-form-item label="是否体验">
                      <el-radio v-model="radio1" label="1">是</el-radio>
                      <el-radio v-model="radio1" label="2">否</el-radio>
                  </el-form-item>
                </el-col>
                <el-col :span="12">
                  <el-form-item label="是否置顶">
                      <el-radio v-model="radio2" label="1">是</el-radio>
                      <el-radio v-model="radio2" label="2">否</el-radio>
                  </el-form-item>
                </el-col>
                <el-col :span="12">
                  <el-form-item label="是否启用">
                      <el-radio v-model="radio3" label="1">是</el-radio>
                      <el-radio v-model="radio3" label="2">否</el-radio>
                  </el-form-item>
                </el-col>
                <el-col :span="12">
                  <el-form-item label="是否内置">
                      <el-radio v-model="radio4" label="1">是</el-radio>
                      <el-radio v-model="radio4" label="2">否</el-radio>
                  </el-form-item>
                </el-col>
              </el-row>
      </el-tab-pane>
      <el-tab-pane label="其他信息" name="second">
              <el-row>
                <el-col :span="12">
                  <el-form-item label="上传头像" prop="director" class="upload_box">
                    <el-upload
                      class="avatar-uploader avatar-uploader001"
                      action="https://jsonplaceholder.typicode.com/posts/"
                      :show-file-list="false"
                      :on-success="handleAvatarSuccess"
                      :before-upload="beforeAvatarUpload">
                      <img v-if="imageUrl" :src="imageUrl" class="avatar">
                      <i v-else class="el-icon-plus avatar-uploader-icon"></i>
                    </el-upload>
                  <span class="upload_text">图片大小不超过2MB</span>
                  </el-form-item>
                </el-col>
                <el-col :span="12">
                  <el-form-item label="上传照片" prop="director" class="upload_box">
                    <el-upload
                      class="avatar-uploader avatar-uploader001"
                      action="https://jsonplaceholder.typicode.com/posts/"
                      :show-file-list="false"
                      :on-success="handleAvatarSuccess"
                      :before-upload="beforeAvatarUpload">
                      <img v-if="imageUrl" :src="imageUrl" class="avatar">
                      <i v-else class="el-icon-plus avatar-uploader-icon"></i>
                    </el-upload>
                  <span class="upload_text">图片大小不超过2MB</span>
                  </el-form-item>
                </el-col>
                <el-col :span="12">
                  <el-form-item label="代理状态">
                      <el-radio v-model="radio5" label="1">不参与</el-radio>
                      <el-radio v-model="radio5" label="2">代理</el-radio>
                      <el-radio v-model="radio5" label="3">被代理</el-radio>
                  </el-form-item>
                </el-col> 
                <el-col :span="12">
                  <el-form-item label="邮箱" prop="email">
                    <el-input clearable v-model="ruleForm.email"></el-input>
                  </el-form-item>
                </el-col>
                <el-col :span="12">
                  <el-form-item label="出生日期">
                      <el-form-item prop="date1">
                        <el-date-picker type="date" placeholder="选择日期" v-model="ruleForm.date1" style="width: 100%;"></el-date-picker>
                      </el-form-item>
                  </el-form-item>
                </el-col>
                <el-col :span="24">
                  <el-form-item label="备注">
                    <el-input
                      type="textarea"
                      :rows="2"
                      placeholder="请输入内容"
                      v-model="textarea">
                    </el-input>
                  </el-form-item>
                </el-col>
              </el-row>
      </el-tab-pane>
    </el-tabs>
		  <el-form-item>
		    <el-button type="primary" @click="submitForm('ruleForm')">立即添加</el-button>
		    <el-button @click="resetForm('ruleForm')">重置</el-button>
		  </el-form-item>
	</el-form>
</el-row>
</div>
</template>
<script>
  export default {
    data() {
      return {
        // table标签默认选择第一个
        activeName: 'first',
        // 单选按钮
        radio1: '1',
        radio2: '1',
        radio3: '1',
        radio4: '1',
        radio5: '1',
        textarea: '',
        // 级联选择器
        ruleForm: {
          name: '',
          Nativeplace: '',
          snum: '',
          phone1: '',
          phone2: '',
          email: '',
          director: '',
          region: '',
          date1: '',
          delivery: false,
          type: [],
          sex: '',
          desc: ''
        },
        imageUrl: '',
				options: [{
          value: 'zhinan',
          label: '指南',
          children: [{
            value: 'shejiyuanze',
            label: '设计原则',
            children: [{
              value: 'yizhi',
              label: '一致'
            }, {
              value: 'fankui',
              label: '反馈'
            }, {
              value: 'xiaolv',
              label: '效率'
            }, {
              value: 'kekong',
              label: '可控'
            }]
          }, {
            value: 'daohang',
            label: '导航',
            children: [{
              value: 'cexiangdaohang',
              label: '侧向导航'
            }, {
              value: 'dingbudaohang',
              label: '顶部导航'
            }]
          }]
        }, {
          value: 'zujian',
          label: '组件',
          children: [{
            value: 'basic',
            label: 'Basic',
            children: [{
              value: 'layout',
              label: 'Layout 布局'
            }, {
              value: 'color',
              label: 'Color 色彩'
            }, {
              value: 'typography',
              label: 'Typography 字体'
            }, {
              value: 'icon',
              label: 'Icon 图标'
            }, {
              value: 'button',
              label: 'Button 按钮'
            }]
          }, {
            value: 'form',
            label: 'Form',
            children: [{
              value: 'radio',
              label: 'Radio 单选框'
            }, {
              value: 'checkbox',
              label: 'Checkbox 多选框'
            }, {
              value: 'input',
              label: 'Input 输入框'
            }, {
              value: 'input-number',
              label: 'InputNumber 计数器'
            }, {
              value: 'select',
              label: 'Select 选择器'
            }, {
              value: 'cascader',
              label: 'Cascader 级联选择器'
            }, {
              value: 'switch',
              label: 'Switch 开关'
            }, {
              value: 'slider',
              label: 'Slider 滑块'
            }, {
              value: 'time-picker',
              label: 'TimePicker 时间选择器'
            }, {
              value: 'date-picker',
              label: 'DatePicker 日期选择器'
            }, {
              value: 'datetime-picker',
              label: 'DateTimePicker 日期时间选择器'
            }, {
              value: 'upload',
              label: 'Upload 上传'
            }, {
              value: 'rate',
              label: 'Rate 评分'
            }, {
              value: 'form',
              label: 'Form 表单'
            }]
          }, {
            value: 'data',
            label: 'Data',
            children: [{
              value: 'table',
              label: 'Table 表格'
            }, {
              value: 'tag',
              label: 'Tag 标签'
            }, {
              value: 'progress',
              label: 'Progress 进度条'
            }, {
              value: 'tree',
              label: 'Tree 树形控件'
            }, {
              value: 'pagination',
              label: 'Pagination 分页'
            }, {
              value: 'badge',
              label: 'Badge 标记'
            }]
          }, {
            value: 'notice',
            label: 'Notice',
            children: [{
              value: 'alert',
              label: 'Alert 警告'
            }, {
              value: 'loading',
              label: 'Loading 加载'
            }, {
              value: 'message',
              label: 'Message 消息提示'
            }, {
              value: 'message-box',
              label: 'MessageBox 弹框'
            }, {
              value: 'notification',
              label: 'Notification 通知'
            }]
          }, {
            value: 'navigation',
            label: 'Navigation',
            children: [{
              value: 'menu',
              label: 'NavMenu 导航菜单'
            }, {
              value: 'tabs',
              label: 'Tabs 标签页'
            }, {
              value: 'breadcrumb',
              label: 'Breadcrumb 面包屑'
            }, {
              value: 'dropdown',
              label: 'Dropdown 下拉菜单'
            }, {
              value: 'steps',
              label: 'Steps 步骤条'
            }]
          }, {
            value: 'others',
            label: 'Others',
            children: [{
              value: 'dialog',
              label: 'Dialog 对话框'
            }, {
              value: 'tooltip',
              label: 'Tooltip 文字提示'
            }, {
              value: 'popover',
              label: 'Popover 弹出框'
            }, {
              value: 'card',
              label: 'Card 卡片'
            }, {
              value: 'carousel',
              label: 'Carousel 走马灯'
            }, {
              value: 'collapse',
              label: 'Collapse 折叠面板'
            }]
          }]
        }, {
          value: 'ziyuan',
          label: '资源',
          children: [{
            value: 'axure',
            label: 'Axure Components'
          }, {
            value: 'sketch',
            label: 'Sketch Templates'
          }, {
            value: 'jiaohu',
            label: '组件交互文档'
          }]
        }],
        // 表单验证
        rules: {
          name: [
            { required: true, message: '请输入活动名称', trigger: 'blur' },
            { min: 2, max: 6, message: '长度在 2 到 6 个字符', trigger: 'blur' }
          ], 
          Nativeplace: [
            { required: true, message: '请输入籍贯名称', trigger: 'blur' },
          ],
          snum: [
            { required: true, message: '请输入身份证号码', trigger: 'blur' },
            { min: 18, max: 18, message: '长度在18个字符', trigger: 'blur' }
          ],
          phone1: [
            { required: true, message: '请输入手机号码', trigger: 'blur' },
            { min: 11, max: 11, message: '长度在11个字符', trigger: 'blur' }
          ], 
          phone2: [
            { required: false, message: '请输入办公号码', trigger: 'blur' },
            { min: 11, max: 11, message: '长度在11个字符', trigger: 'blur' }
          ],  
          email: [
            { required: false, message: '请输入邮箱', trigger: 'blur' },
            { type: 'email', message: '请输入正确邮箱', trigger: 'blur' }
          ],         
          date1: [
            { type: 'date', required: true, message: '请选择日期', trigger: 'change' }
          ],
          type: [
            { type: 'array', required: true, message: '请至少选择一个活动性质', trigger: 'change' }
          ],
          sex: [
            { required: false, message: '请选择活动资源', trigger: 'change' }
          ]
        }
      };
    },
    methods: {
      // table标签
       handleClick(tab, event) {
        console.log(tab, event);
      },
      // 提交按钮
      submitForm(formName) {
        this.$refs[formName].validate((valid) => {
          if (valid) {
            alert('submit!');
          } else {
            console.log('error submit!!');
            return false;
          }
        });
      },
      resetForm(formName) {
        this.$refs[formName].resetFields();
      },
      handleAvatarSuccess(res, file) {
        this.imageUrl = URL.createObjectURL(file.raw);
      },
      beforeAvatarUpload(file) {
        const isJPG = file.type === 'image/jpeg';
        const isLt2M = file.size / 1024 / 1024 < 2;

        if (!isJPG) {
          this.$message.error('上传头像图片只能是 JPG 格式!');
        }
        if (!isLt2M) {
          this.$message.error('上传头像图片大小不能超过 2MB!');
        }
        return isJPG && isLt2M;
      }
    }
  }
</script>