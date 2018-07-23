<template>
    <div>
		<el-row :gutter="20">
		  <el-col :span="4">
		  	<goodsclasssify1/>
		  </el-col>
		  <el-col :span="12">
		  	<div style="">
			  <el-input clearable placeholder="请输入内容" v-model="input4">
			    <el-button slot="append" icon="el-icon-search"></el-button>
			  </el-input>
			</div>
		  </el-col>
		  <el-col :span="8">
		  	<el-row>
			    <el-dropdown>
  					<el-button plain>
  					  导出<i class="el-icon-arrow-down el-icon--right"></i>
  					</el-button>
			      	<el-dropdown-menu slot="dropdown">
			      	  <el-dropdown-item>导出商品的基本信息</el-dropdown-item>
			      	  <el-dropdown-item>导出商品的订货价</el-dropdown-item>
			      	</el-dropdown-menu>
			    </el-dropdown>
			    <el-dropdown>
  					<el-button plain>
  					  导入<i class="el-icon-arrow-down el-icon--right"></i>
  					</el-button>
			      	<el-dropdown-menu slot="dropdown">
			      	  <el-dropdown-item>导入商品的基本信息</el-dropdown-item>
			      	  <el-dropdown-item>导入商品的定货价</el-dropdown-item>
			      	  <el-dropdown-item>导入商品的客户定价</el-dropdown-item>
			      	  <el-dropdown-item>导入商品图片</el-dropdown-item>			      	  
			      	</el-dropdown-menu>
			    </el-dropdown>
    			<el-button type="primary"style="margin-left:15px;">新增</el-button>
			</el-row>
		  </el-col>
		</el-row>
		<!--商品表格-->
		<form action="">
			<goodstable/>
		</form>

		<el-row :gutter="20" class="app-container">
		  <el-col :span="3">
		  	<el-checkbox v-model="checked" class="ml10 mt5">当页全选</el-checkbox>
		  </el-col>
		  <el-col :span="12">
			<el-row>
			  <el-button plain size="mini">修改模板</el-button>
			  	<el-popover
				  placement="top"
				  title="修改分组"
				  width="200"
				  v-model="visible4">
				  <p>
					<div style="margin-top: 15px;">
					  <el-input clearable placeholder="请输入内容" v-model="input4" size="small">
					    <el-button slot="append" icon="el-icon-search"></el-button>
					  </el-input>
					</div>				  	
				  </p>				  
				  <div style="text-align: right; margin: 0">
				    <el-button size="mini" type="text" @click="visible4 = false">取消</el-button>
				    <el-button type="primary" size="mini" @click="visible4 = false">确定</el-button>
				  </div>
				  <el-button slot="reference" size="mini">改分组</el-button>
				</el-popover>
				<el-popover
				  placement="top"
				  width="160"
				  v-model="visible5">
				  <p>确定下架</p>
				  <div style="text-align: right; margin: 0">
				    <el-button size="mini" type="text" @click="visible5 = false">取消</el-button>
				    <el-button type="primary" size="mini" @click="visible5 = false">确定</el-button>
				  </div>
				  <el-button slot="reference" size="mini">下架</el-button>
				</el-popover>
				<el-popover
				  placement="top"
				  width="250"
				  title="提示"
				  v-model="visible3">
				  <p>商品删除后将无法恢复，确定删除？</p>
				  <div style="text-align: right; margin: 0">
				    <el-button size="mini" type="text" @click="visible3 = false">取消</el-button>
				    <el-button type="primary" size="mini" @click="visible3 = false">确定</el-button>
				  </div>
				  <el-button slot="reference" size="mini">删除</el-button>
				</el-popover>
			  <el-button type="warning" plain size="mini">更多</el-button>
			</el-row>
		  	
		  </el-col>
		  <el-col :span="9">
			<el-pagination class="fr"
			  background
			  layout="prev, pager, next"
			  :total="1000">
			</el-pagination>
		  </el-col>
		</el-row>

      
    </div>
</template>
<style>
  .el-dropdown {
    vertical-align: top;
  }
  .el-dropdown + .el-dropdown {
    margin-left: 15px;
  }
  .el-icon-arrow-down {
    font-size: 12px;
  }
</style>

<script>
import goodsclasssify1 from '@/views/Goods/goodsclasssify/goodsclasssify1'
import goodstable from '@/views/Goods/goodstable/goodstable'
  export default {
	components: {goodsclasssify1,goodstable},
	data() {
      return {
      	 visible3: false,
      	 visible4: false,
      	 visible5: false,
        checked: true
      };
    },
   methods: {
      handleClick() {
        alert('button click');
      }
    }
  }
</script>
