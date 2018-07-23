<template>
	<div class="app-container modular_box">
	<div class="modular_title">公共模块</div> <!--  模板标题 -->
		<el-row :gutter="10">
		  <el-col :span="6">
			<el-card shadow="hover">
				<div class="clearfix">
			      <div class="fl"><img src="../../assets/modular/isEnabledElectronic.png" height="72" width="72"></div>
			      <div class="fr text">
			        <h2 class="title">商品管理</h2>
			        <div class="gray">对接第三方电子面单接口，用户可以根据订单快速打印电子面单发货，无需再手动导入运单号</div>
			        <el-row>
			          	<el-col :span="14"><el-button size="mini" type="success">免费</el-button></el-col>
			          	<el-col :span="10" class="el-text-right">
			          		<el-tooltip :content="'模块状态: ' + value5" placement="top">
					          	<el-switch
					          	  class="modle_info_switch"
								  v-model="value5"
								  active-value="开启"
								  inactive-value="关闭">
								</el-switch>
							</el-tooltip>
						</el-col>
			        </el-row>
			      </div>
			    </div>
		    </el-card>
			</el-col>
		  </el-col>
		  <el-col :span="6">
			<el-card shadow="hover">
				<div class="clearfix">
			      <div class="fl"><img src="../../assets/modular/isEnabledCustomerReg.png" height="72" width="72"></div>
			      <div class="fr text">
			        <h2 class="title">商品设置</h2>
			        <div class="gray">启用开放商城模式后，所有用户可以通过开放商城链接免登陆进入订货系统，浏览商品，进行订货。</div>
		                <el-row>
		                  	<el-col :span="14"><div class="price">￥2000/年</div></el-col>
		                  	<el-col :span="10" class="el-text-right">
		                  		<el-tooltip :content="'模块状态: ' + value5" placement="top">
		        		          	<el-switch
		        		          	  class="modle_info_switch"
		        					  v-model="value5"
		        					  active-value="开启"
		        					  inactive-value="关闭">
		        					</el-switch>
		        				</el-tooltip>
		        			</el-col>
		                </el-row>
			      </div>
			    </div>
		    </el-card>
		  </el-col>
		  <el-col :span="6">
			<el-card shadow="hover">
				<div class="clearfix">
			      <div class="fl"><img src="../../assets/modular/isUseLogisticCompany.png" height="72" width="72"></div>
			      <div class="fr text">
			        <h2 class="title">商品导入</h2>
			        <div class="gray">启用订单核准后，可实现对已完成订单数据的修改。适用于订单在发货后，因配送环节或其他因素导致订单客户签收环节，需要对订货商品数量和金额进行最终调整的需求。</div>
				        <el-row>
				          	<el-col :span="14"><div class="price">￥2000/年</div></el-col>
				          	<el-col :span="10" class="el-text-right">
				          		<el-tooltip :content="'模块状态: ' + value5" placement="top">
				                  	<el-switch
				                  	  class="modle_info_switch"
				        			  v-model="value5"
				        			  active-value="开启"
				        			  inactive-value="关闭">
				        			</el-switch>
				        		</el-tooltip>
				        	</el-col>
				        </el-row>
			      </div>
			    </div>
		    </el-card>
		  </el-col>
		  <el-col :span="6">
			<el-card shadow="hover">
				<div class="clearfix">
			      <div class="fl"><img src="../../assets/modular/isEnabledRatifyOrder.png" height="72" width="72"></div>
			      <div class="fr text">
			        <h2 class="title">分销市场</h2>
			        <div class="gray">自定义出库单打印、导出表格样式。</div>
			            <el-row>
			              	<el-col :span="14"><div class="price">￥2000/年</div></el-col>
			              	<el-col :span="10" class="el-text-right">
			              		<el-tooltip :content="'模块状态: ' + value5" placement="top">
			        	          	<el-switch
			        	          	  class="modle_info_switch"
			        				  v-model="value5"
			        				  active-value="开启"
			        				  inactive-value="关闭">
			        				</el-switch>
			        			</el-tooltip>
			        		</el-col>
			            </el-row>
			      </div>
			    </div>
		    </el-card>
		  </el-col>
		  <el-col :span="6">
			<el-card shadow="hover">
				<div class="clearfix">
			      <div class="fl"><img src="../../assets/modular/isUseLogisticCompany.png" height="72" width="72"></div>
			      <div class="fr text">
			        <h2 class="title">订单核准</h2>
			        <div class="gray">启用订单核准后，可实现对已完成订单数据的修改。适用于订单在发货后，因配送环节或其他因素导致订单客户签收环节，需要对订货商品数量和金额进行最终调整的需求。</div>
			        <el-row>
			          	<el-col :span="14"><div class="price">￥2000/年</div></el-col>
			          	<el-col :span="10" class="el-text-right">
			          		<el-tooltip :content="'模块状态: ' + value5" placement="top">
			                  	<el-switch
			                  	  class="modle_info_switch"
			        			  v-model="value5"
			        			  active-value="开启"
			        			  inactive-value="关闭">
			        			</el-switch>
			        		</el-tooltip>
			        	</el-col>
			        </el-row>
			      </div>
			    </div>
		    </el-card>
		  </el-col>
		  <el-col :span="6">
			<el-card shadow="hover">
				<div class="clearfix">
			      <div class="fl"><img src="../../assets/modular/isEnabledRatifyOrder.png" height="72" width="72"></div>
			      <div class="fr text">
			        <h2 class="title">出库单模板</h2>
			        <div class="gray">自定义出库单打印、导出表格样式。</div>
			        <el-row>
			          	<el-col :span="14"><el-button size="mini" type="success">免费</el-button></el-col>
			          	<el-col :span="10" class="el-text-right">
			          		<el-tooltip :content="'模块状态: ' + value5" placement="top">
			                  	<el-switch
			                  	  class="modle_info_switch"
			        			  v-model="value5"
			        			  active-value="开启"
			        			  inactive-value="关闭">
			        			</el-switch>
			        		</el-tooltip>
			        	</el-col>
			        </el-row>
			      </div>
			    </div>
		    </el-card>
		  </el-col>
		  <el-col :span="6" class="modular_add">
			<el-card shadow="hover">
				<div class="modular_add_icon" @click="addModle = true"><i class="el-icon-plus"></i></div>
				<div class="modular_add_text" @click="addModle = true">添加模块</div>
		    </el-card>
		  </el-col>
		</el-row>

		<div class="modular_title">零售模块</div> <!--  模板标题 -->
		<el-row :gutter="10">
			  <el-col :span="6">
				<el-card shadow="hover">
					<div class="clearfix">
				      <div class="fl"><img src="../../assets/modular/isEnabledElectronic.png" height="72" width="72"></div>
				      <div class="fr text">
				        <h2 class="title">电子面单</h2>
				        <div class="gray">对接第三方电子面单接口，用户可以根据订单快速打印电子面单发货，无需再手动导入运单号</div>
				        <el-row>
				          	<el-col :span="14"><el-button size="mini" type="success">免费</el-button></el-col>
				          	<el-col :span="10" class="el-text-right">
				          		<el-tooltip :content="'模块状态: ' + value5" placement="top">
				                  	<el-switch
				                  	  class="modle_info_switch"
				        			  v-model="value5"
				        			  active-value="开启"
				        			  inactive-value="关闭">
				        			</el-switch>
				        		</el-tooltip>
				        	</el-col>
				        </el-row>
				      </div>
				    </div>
			    </el-card>
			  </el-col>
			  <el-col :span="6">
				<el-card shadow="hover">
					<div class="clearfix">
				      <div class="fl"><img src="../../assets/modular/isEnabledCustomerReg.png" height="72" width="72"></div>
				      <div class="fr text">
				        <h2 class="title">开放订货平台</h2>
				        <div class="gray">启用开放商城模式后，所有用户可以通过开放商城链接免登陆进入订货系统，浏览商品，进行订货。</div>
				        <el-row>
				          	<el-col :span="14"><div class="price">￥2000/年</div></el-col>
				          	<el-col :span="10" class="el-text-right">
				          		<el-tooltip :content="'模块状态: ' + value5" placement="top">
				                  	<el-switch
				                  	  class="modle_info_switch"
				        			  v-model="value5"
				        			  active-value="开启"
				        			  inactive-value="关闭">
				        			</el-switch>
				        		</el-tooltip>
				        	</el-col>
				        </el-row>
				      </div>
				    </div>
			    </el-card>
			  </el-col>
			  <el-col :span="6">
				<el-card shadow="hover">
					<div class="clearfix">
				      <div class="fl"><img src="../../assets/modular/isUseLogisticCompany.png" height="72" width="72"></div>
				      <div class="fr text">
				        <h2 class="title">订单核准</h2>
				        <div class="gray">启用订单核准后，可实现对已完成订单数据的修改。适用于订单在发货后，因配送环节或其他因素导致订单客户签收环节，需要对订货商品数量和金额进行最终调整的需求。</div>
				        <el-row>
				          	<el-col :span="14"><div class="price">￥2000/年</div></el-col>
				          	<el-col :span="10" class="el-text-right">
				          		<el-tooltip :content="'模块状态: ' + value5" placement="top">
				                  	<el-switch
				                  	  class="modle_info_switch"
				        			  v-model="value5"
				        			  active-value="开启"
				        			  inactive-value="关闭">
				        			</el-switch>
				        		</el-tooltip>
				        	</el-col>
				        </el-row>
				      </div>
				    </div>
			    </el-card>
			  </el-col>
			  <el-col :span="6">
				<el-card shadow="hover">
					<div class="clearfix">
				      <div class="fl"><img src="../../assets/modular/isEnabledRatifyOrder.png" height="72" width="72"></div>
				      <div class="fr text">
				        <h2 class="title">出库单模板aaaaaaaaaaaaaaaaa</h2>
				        <div class="gray">自定义出库单打印、导出表格样式。</div>
				        <el-row>
				          	<el-col :span="14"><el-button size="mini" type="success">免费</el-button></el-col>
				          	<el-col :span="10" class="el-text-right">
				          		<el-tooltip :content="'模块状态: ' + value5" placement="top">
				                  	<el-switch
				                  	  class="modle_info_switch"
				        			  v-model="value5"
				        			  active-value="开启"
				        			  inactive-value="关闭">
				        			</el-switch>
				        		</el-tooltip>
				        	</el-col>
				        </el-row>
				      </div>
				    </div>
			    </el-card>
			  </el-col>
			  <el-col :span="6">
				<el-card shadow="hover">
					<div class="clearfix">
				      <div class="fl"><img src="../../assets/modular/isUseLogisticCompany.png" height="72" width="72"></div>
				      <div class="fr text">
				        <h2 class="title">订单核准</h2>
				        <div class="gray">启用订单核准后，可实现对已完成订单数据的修改。适用于订单在发货后，因配送环节或其他因素导致订单客户签收环节，需要对订货商品数量和金额进行最终调整的需求。</div>
				        <el-row>
				         	<el-col :span="14"><div class="price">￥2000/年</div></el-col>
				         	<el-col :span="10" class="el-text-right">
				         		<el-tooltip :content="'模块状态: ' + value5" placement="top">
				                 	<el-switch
				                 	  class="modle_info_switch"
				        			  v-model="value5"
				        			  active-value="开启"
				        			  inactive-value="关闭">
				        			</el-switch>
				        		</el-tooltip>
				        	</el-col>
				        </el-row>
				      </div>
				    </div>
			    </el-card>
			  </el-col>
			  <el-col :span="6">
				<el-card shadow="hover">
					<div class="clearfix">
				      <div class="fl"><img src="../../assets/modular/isEnabledRatifyOrder.png" height="72" width="72"></div>
				      <div class="fr text">
				        <h2 class="title">出库单模板</h2>
				        <div class="gray">自定义出库单打印、导出表格样式。</div>
				        <el-row>
				          	<el-col :span="14"><el-button size="mini" type="success">免费</el-button></el-col>
				          	<el-col :span="10" class="el-text-right">
				          		<el-tooltip :content="'模块状态: ' + value5" placement="top">
				                  	<el-switch
				                  	  class="modle_info_switch"
				        			  v-model="value5"
				        			  active-value="开启"
				        			  inactive-value="关闭">
				        			</el-switch>
				        		</el-tooltip>
				        	</el-col>
				        </el-row>
				      </div>
				    </div>
			    </el-card>
			  </el-col>
			    <el-col :span="6" class="modular_add">
			  	<el-card shadow="hover">
			  		<div class="modular_add_icon" @click="addModle = true"><i class="el-icon-plus"></i></div>
			  		<div class="modular_add_text" @click="addModle = true">添加模块</div>
			      </el-card>
			    </el-col>
		</el-row>

		<div class="modular_title">服务模块</div> <!--  模板标题 -->
		<el-row :gutter="10">
			  <el-col :span="6">
				<el-card shadow="hover">
					<div class="clearfix">
				      <div class="fl"><img src="../../assets/modular/isEnabledElectronic.png" height="72" width="72"></div>
				      <div class="fr text">
				        <h2 class="title">555</h2>
				        <div class="gray">213123123</div>
				        <el-row>
				          	<el-col :span="14"><el-button size="mini" type="success">免费</el-button></el-col>
				          	<el-col :span="10" class="el-text-right">
				          		<el-tooltip :content="'模块状态: ' + value5" placement="top">
				                  	<el-switch
				                  	  class="modle_info_switch"
				        			  v-model="value5"
				        			  active-value="开启"
				        			  inactive-value="关闭">
				        			</el-switch>
				        		</el-tooltip>
				        	</el-col>
				        </el-row>
				      </div>
				    </div>
			    </el-card>
			  </el-col>
			    <el-col :span="6" class="modular_add">
			  	<el-card shadow="hover">
			  		<div class="modular_add_icon" @click="addModle = true"><i class="el-icon-plus"></i></div>
			  		<div class="modular_add_text" @click="addModle = true">添加模块</div>
			      </el-card>
			    </el-col>
		</el-row>
		<el-dialog  class="maxheight"
		  title="添加模块"
		  :visible.sync="addModle"
		  width="50%"
		  center>
		  <addModle/>
		</el-dialog>
	</div>
</template>
<style>
  .time {
    font-size: 13px;
    color: #999;
  }
  
  .bottom {
    margin-top: 13px;
    line-height: 12px;
  }

  .button {
    padding: 0;
    float: right;
  }

  .image {
    width: 100%;
    display: block;
  }

  .clearfix:before,
  .clearfix:after {
      display: table;
      content: "";
  }
  
  .clearfix:after {
      clear: both
  }
</style>

<script>
import addModle from '@/views/Modular/addModle'
export default {
  	components: {addModle},
	  	data() {
	  	return {
	  		value3: true,
	  		value5: true,
	  		addModle: false
			}
		}
}
</script>