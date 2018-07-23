<template>
    <div>     
  		<el-table
  		  :data="tableData"
  		  style="width: 100%">
    		<el-table-column
    		  type="selection"
    		  width="55">
    		</el-table-column>
     		<el-table-column
     		  type="index"
     		  width="55"
     		  label="序号">
     		</el-table-column>	
  			<el-table-column  			
  			  prop="goods"
  			  label="商品"
  			  sortable
  			  show-overflow-tooltip
  			  >
  			  <template slot-scope="scope">
				<div class="clearfix">
					<div>122374857485485648574854856</div>
			      <div class="fl"><img src="../../../assets/product.jpg" height="70" width="70"></div>
			      <div class="fl text ml10">
			        <div class="title">测试商品1 
			        	<span class="show">
							<el-popover
							  placement="top"
							  width="160"
							  v-model="visible2">
							  <p><el-input clearable v-model="input" placeholder="请输入内容"></el-input></p>
							  <div style="text-align: right; margin: 0">
							    <el-button size="mini" type="text" @click="visible2 = false">取消</el-button>
							    <el-button type="primary" size="mini" @click="visible2 = false">确定</el-button>
							  </div>
							  <i class="el-icon-edit ft14" slot="reference"></i>
							</el-popover>			        		
			        	</span>
			        </div>
			        <div>服务标签</div>
			        <div class="red">¥1.00
						<span  class="show">
							<el-popover
							  placement="top"
							  width="160"
							  v-model="visible2">
							  <p><el-input clearable v-model="input" placeholder="请输入内容"></el-input></p>
							  <div style="text-align: right; margin: 0">
							    <el-button size="mini" type="text" @click="visible2 = false">取消</el-button>
							    <el-button type="primary" size="mini" @click="visible2 = false">确定</el-button>
							  </div>
							  <i class="el-icon-edit ft14" slot="reference"></i>
							</el-popover>			        									
						</span>
			        </div>
			      </div>
			    </div>
  			  </template>
  			</el-table-column>

  		  	<el-table-column
  		  	  prop="Spec"
  		  	  label="规格"
  		  	  show-overflow-tooltip
  		  	  width="120">
  		  	</el-table-column>
  		  	<el-table-column
  		  	  prop="unit"
  		  	  label="单位"
  		  	  width="120">
  		  	</el-table-column>

  		  	<el-table-column
  		  	  label="库存"
  		  	  sortable
  		  	  width="120">
  		  	  <template slot-scope="scope">
  		  	  100
					<span class="show">
						<el-popover
						  placement="top"
						  width="160"
						  v-model="visible2">
						  <p><el-input clearable v-model="input" placeholder="请输入内容"></el-input></p>
						  <div style="text-align: right; margin: 0">
						    <el-button size="mini" type="text" @click="visible2 = false">取消</el-button>
						    <el-button type="primary" size="mini" @click="visible2 = false">确定</el-button>
						  </div>
						  <i class="el-icon-edit ft14" slot="reference"></i>
						</el-popover>
					</span>
  		  	  </template>
  		  	</el-table-column>

  		  	<el-table-column
  		  	  prop="number"
  		  	  label="点销量"
  		  	  width="120"
  		  	  sortable
  		  	  :formatter="formatter">
  		  	</el-table-column>


  			<el-table-column
  			  prop="date"
  			  label="发布日期"
  			  sortable
  			  width="160"
  			  :filters="[{text: '2016-05-01', value: '2016-05-01'}, {text: '2016-05-02', value: '2016-05-02'}, {text: '2016-05-03', value: '2016-05-03'}, {text: '2016-05-04'	, 		value: '2016-05-04'}]"
  			  :filter-method="filterHandler"
  			>
  			</el-table-column>


    		<el-table-column
    		  fixed="right"
    		  label="操作"
    		  width="120">
    		  <template slot-scope="scope">
    		    <el-button @click="handleClick(scope.row)" type="text" size="small">查看</el-button>
    		    <el-button type="text" size="small">编辑</el-button>
    		  </template>
    		</el-table-column>

  		</el-table>
    </div>
</template>
<script>
  export default {
    data() {
      return {
        tableData: [{
          Spec:'净含量',
          date: '2016-05-02',
          number: '1000',
          unit: '件'
        }, {
          Spec:'111',
          date: '2016-05-04',
          number: '2',
          unit: '件'
        }, {
          Spec:'111',
          date: '2016-05-01',
          number: '2',
          unit: '箱' 
        }, {
          Spec:'111',
          date: '2016-05-03',
          number: '3',
          unit: '箱'
        }]

      }
    },
    methods: {
      formatter(row, column) {
        return row.number;
      },
      filterTag(value, row) {
        return row.tag === value;
      },
      filterHandler(value, row, column) {
        const property = column['property'];
        return row[property] === value;
      }
    }
  }
</script>