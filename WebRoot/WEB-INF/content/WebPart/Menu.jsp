<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!-- #section:basics/sidebar -->
<div id="sidebar" class="sidebar                  responsive">
	<script type="text/javascript">
		try {
			ace.settings.check('sidebar', 'fixed')
		} catch (e) {
		}
	</script>

	<div class="sidebar-shortcuts" id="sidebar-shortcuts">
		<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
			<button class="btn btn-success">
				<i class="ace-icon fa fa-signal"></i>
			</button>

			<button class="btn btn-info">
				<i class="ace-icon fa fa-pencil"></i>
			</button>

			<!-- #section:basics/sidebar.layout.shortcuts -->
			<button class="btn btn-warning">
				<i class="ace-icon fa fa-users"></i>
			</button>

			<button class="btn btn-danger">
				<i class="ace-icon fa fa-cogs"></i>
			</button>

			<!-- /section:basics/sidebar.layout.shortcuts -->
		</div>

		<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
			<span class="btn btn-success"></span> <span class="btn btn-info"></span>

			<span class="btn btn-warning"></span> <span class="btn btn-danger"></span>
		</div>
	</div>
	<!-- /.sidebar-shortcuts -->

	<ul class="nav nav-list">
		<li id="authority" class="active open"><a href="#" class="dropdown-toggle">
				<i class="menu-icon fa fa-desktop"></i> <span class="menu-text">
					权限管理 </span> <b class="arrow fa fa-angle-down"></b> </a> <b cite="arrow"></b>

			<ul class="submenu">
				<li id="roleSingle" class="active"><a href="${pageContext.request.contextPath}/resource/authority.null.roleSingle">
						<i class="menu-icon fa fa-caret-right"></i>角色增加 </a> <b class="arrow"></b>
				</li>
				<li id="roleSearch" class=""><a href="${pageContext.request.contextPath}/resource/authority.null.roleSearch"> <i
						class="menu-icon fa fa-caret-right"></i>角色查询 </a> <b class="arrow"></b>
				</li>
			</ul>
		</li>

		<li class=""><a href="#" class="dropdown-toggle"> <i
				class="menu-icon fa fa-male"></i> <span class="menu-text">
					人员综合信息管理 </span> <b class="arrow fa fa-angle-down"></b> </a> <b class="arrow"></b>

			<ul class="submenu">
				<li class=""><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-caret-right"></i>人员基本信息管理 <b
						class="arrow fa fa-angle-down"></b> </a> <b class="arrow"></b>

					<ul class="submenu">
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/userInfo.userBaseInfoSingle"> <i
								class="menu-icon fa fa-caret-right"></i>人员基本信息单条录入 </a> <b
							class="arrow"></b>
						</li>
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/userInfo.userBaseInfoBatch"> <i
								class="menu-icon fa fa-caret-right"></i>人员基本信息批量录入 </a> <b
							class="arrow"></b>
						</li>
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/userInfo.userBaseInfoBatchUpdateBySelectField">
								<i class="menu-icon fa fa-caret-right"></i>人员基本信息批量修改 </a> <b
							class="arrow"></b>
						</li>
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/userInfo.userBaseInfoSearch"> <i
								class="menu-icon fa fa-caret-right"></i>人员基本信息查詢 </a> <b
							class="arrow"></b>
						</li>
					</ul>
				</li>

				<li class=""><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-caret-right"></i>员工成长档案查询 <b
						class="arrow fa fa-angle-down"></b> </a> <b class="arrow"></b>

					<ul class="submenu">
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/userInfo.individualGrowthFileSearch">
								<i class="menu-icon fa fa-caret-right"></i>个人成长线路查询 </a> <b
							class="arrow"></b>
						</li>
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/userInfo.personnelGrowthFileSearch">
								<i class="menu-icon fa fa-caret-right"></i>人员阶段查询 </a> <b
							class="arrow"></b>
						</li>

					</ul>
				</li>

				<li class=""><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-caret-right"></i>人员调厅记录查询 <b
						class="arrow fa fa-angle-down"></b> </a> <b class="arrow"></b>

					<ul class="submenu">
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/userInfo.changeHallSearch"> <i
								class="menu-icon fa fa-caret-right"></i>人员调厅记录查询 </a> <b
							class="arrow"></b>
						</li>
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/userInfo.businessHallSearch"> <i
								class="menu-icon fa fa-caret-right"></i>营业厅信息查询 </a> <b
							class="arrow"></b>
						</li>

					</ul>
				</li>

				<li class=""><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-caret-right"></i>店长测评、进阶查询 <b
						class="arrow fa fa-angle-down"></b> </a> <b class="arrow"></b>

					<ul class="submenu">
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/userInfo.hallKeeperExamSearch">
								<i class="menu-icon fa fa-caret-right"></i>店长测评查询 </a> <b
							class="arrow"></b>
						</li>
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/userInfo.hallKeeperForwardSearch">
								<i class="menu-icon fa fa-caret-right"></i>店长进阶查询 </a> <b
							class="arrow"></b>
						</li>

					</ul>
				</li>

				<li class=""><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-caret-right"></i>值班经理测评、进阶查询 <b
						class="arrow fa fa-angle-down"></b> </a> <b class="arrow"></b>

					<ul class="submenu">
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/userInfo.managerExamSearch"> <i
								class="menu-icon fa fa-caret-right"></i>值班经理测评查询 </a> <b
							class="arrow"></b>
						</li>
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/userInfo.managerForwardSearch"> <i
								class="menu-icon fa fa-caret-right"></i>值班经理进阶查询 </a> <b
							class="arrow"></b>
						</li>

					</ul>
				</li>

				<li class=""><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-caret-right"></i>合作厅上岗证查询 <b
						class="arrow fa fa-angle-down"></b> </a> <b class="arrow"></b>

					<ul class="submenu">
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/userInfo.mountGuardCardSingle">
								<i class="menu-icon fa fa-caret-right"></i>合作厅上岗证单条录入 </a> <b
							class="arrow"></b>
						</li>
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/userInfo.mountGuardCardBatch">
								<i class="menu-icon fa fa-caret-right"></i>合作厅上岗批量导入 </a> <b
							class="arrow"></b>
						</li>
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/userInfo.mountGuardCardSearch">
								<i class="menu-icon fa fa-caret-right"></i>合作厅上岗证查询 </a> <b
							class="arrow"></b>
						</li>
					</ul>
				</li>
			</ul>
		</li>

		<li class=""><a href="#" class="dropdown-toggle"> <i
				class="menu-icon fa fa-desktop"></i> <span class="menu-text">
					员工培训/考试管理 </span> <b class="arrow fa fa-angle-down"></b> </a> <b class="arrow"></b>

			<ul class="submenu">
				<li class=""><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-caret-right"></i>月度考核管理 <b
						class="arrow fa fa-angle-down"></b> </a> <b class="arrow"></b>

					<ul class="submenu">
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/employeeTrainExam.monthExamSingle">
								<i class="menu-icon fa fa-caret-right"></i>月度考试单条录入 </a> <b
							class="arrow"></b>
						</li>
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/employeeTrainExam.monthExamBatch">
								<i class="menu-icon fa fa-caret-right"></i>月度考试批量导入 </a> <b
							class="arrow"></b>
						</li>
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/employeeTrainExam.monthExamSearch">
								<i class="menu-icon fa fa-caret-right"></i>月度考试查詢 </a> <b
							class="arrow"></b>
						</li>
					</ul>
				</li>

				<li class=""><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-caret-right"></i>业务培训管理 <b
						class="arrow fa fa-angle-down"></b> </a> <b class="arrow"></b>

					<ul class="submenu">
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/employeeTrainExam.operationTrainSingle">
								<i class="menu-icon fa fa-caret-right"></i>业务培训单条录入 </a> <b
							class="arrow"></b>
						</li>
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/employeeTrainExam.operationTrainBatch">
								<i class="menu-icon fa fa-caret-right"></i>业务培训批量录入 </a> <b
							class="arrow"></b>
						</li>
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/employeeTrainExam.operationTrainSearch">
								<i class="menu-icon fa fa-caret-right"></i>业务培训查询 </a> <b
							class="arrow"></b>
						</li>

					</ul>
				</li>

				<li class=""><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-caret-right"></i>进阶培训管理 <b
						class="arrow fa fa-angle-down"></b> </a> <b class="arrow"></b>

					<ul class="submenu">
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/employeeTrainExam.promoteTrainSingle">
								<i class="menu-icon fa fa-caret-right"></i>进阶培训单条录入 </a> <b
							class="arrow"></b>
						</li>
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/employeeTrainExam.promoteTrainBatch">
								<i class="menu-icon fa fa-caret-right"></i>进阶培训批量导入 </a> <b
							class="arrow"></b>
						</li>
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/employeeTrainExam.promoteTrainSearch">
								<i class="menu-icon fa fa-caret-right"></i>进阶培训查询 </a> <b
							class="arrow"></b>
						</li>
					</ul>
				</li>

				<li class=""><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-caret-right"></i>新员工/转正考核 <b
						class="arrow fa fa-angle-down"></b> </a> <b class="arrow"></b>

					<ul class="submenu">
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/employeeTrainExam.freshEmployeeExamSingle">
								<i class="menu-icon fa fa-caret-right"></i>新员工考核成绩单条录入 </a> <b
							class="arrow"></b>
						</li>
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/employeeTrainExam.freshEmployeeExamBatch">
								<i class="menu-icon fa fa-caret-right"></i>新员工考核成绩批量导入 </a> <b
							class="arrow"></b>
						</li>
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/employeeTrainExam.freshEmployeeExamSearch">
								<i class="menu-icon fa fa-caret-right"></i>新员工考核成绩查询 </a> <b
							class="arrow"></b>
						</li>
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/employeeTrainExam.becomeEmployeeSingle">
								<i class="menu-icon fa fa-caret-right"></i>转正考核成绩单条录入 </a> <b
							class="arrow"></b>
						</li>
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/employeeTrainExam.becomeEmployeeBatch">
								<i class="menu-icon fa fa-caret-right"></i>转正考核成绩批量导入 </a> <b
							class="arrow"></b>
						</li>
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/employeeTrainExam.becomeEmployeeSearch">
								<i class="menu-icon fa fa-caret-right"></i>转正考核成绩查询 </a> <b
							class="arrow"></b>
						</li>
					</ul>
				</li>
			</ul>
		</li>

		<li class=""><a href="#" class="dropdown-toggle"> <i
				class="menu-icon fa fa-desktop"></i> <span class="menu-text">
					标准化和暗访管理 </span> <b class="arrow fa fa-angle-down"></b> </a> <b class="arrow"></b>

			<ul class="submenu">
				<li class=""><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-caret-right"></i>标准化检查成绩管理 <b
						class="arrow fa fa-angle-down"></b> </a> <b class="arrow"></b>

					<ul class="submenu">
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/standardVisit.standardSingle"> <i
								class="menu-icon fa fa-caret-right"></i>标准化检查成绩单条录入 </a> <b
							class="arrow"></b>
						</li>
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/standardVisit.standardBatch"> <i
								class="menu-icon fa fa-caret-right"></i>标准化检查成绩批量导入 </a> <b
							class="arrow"></b>
						</li>
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/standardVisit.standardSearch"> <i
								class="menu-icon fa fa-caret-right"></i>标准化检查成绩查询 </a> <b
							class="arrow"></b>
						</li>
					</ul>
				</li>

				<li class=""><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-caret-right"></i>监控检查成绩管理 <b
						class="arrow fa fa-angle-down"></b> </a> <b class="arrow"></b>

					<ul class="submenu">
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/standardVisit.monitorSingle"> <i
								class="menu-icon fa fa-caret-right"></i>监控检查成绩单条录入 </a> <b
							class="arrow"></b>
						</li>
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/standardVisit.monitorBatch"> <i
								class="menu-icon fa fa-caret-right"></i>监控检查成绩批量录入 </a> <b
							class="arrow"></b>
						</li>
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/standardVisit.monitorSearch"> <i
								class="menu-icon fa fa-caret-right"></i>监控检查成绩查询 </a> <b
							class="arrow"></b>
						</li>

					</ul>
				</li>

				<li class=""><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-caret-right"></i>暗访检查成绩管理 <b
						class="arrow fa fa-angle-down"></b> </a> <b class="arrow"></b>

					<ul class="submenu">
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/standardVisit.visitSingle"> <i
								class="menu-icon fa fa-caret-right"></i>暗访检查成绩单条录入 </a> <b
							class="arrow"></b>
						</li>
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/standardVisit.visitBatch"> <i
								class="menu-icon fa fa-caret-right"></i>暗访检查成绩批量导入 </a> <b
							class="arrow"></b>
						</li>
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/standardVisit.visitSearch"> <i
								class="menu-icon fa fa-caret-right"></i>暗访检查成绩查询 </a> <b
							class="arrow"></b>
						</li>
					</ul>
				</li>

				<li class=""><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-caret-right"></i>业务差错检查成绩管理 <b
						class="arrow fa fa-angle-down"></b> </a> <b class="arrow"></b>

					<ul class="submenu">
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/standardVisit.operationMistakeSingle">
								<i class="menu-icon fa fa-caret-right"></i>业务差错检查成绩单条录入 </a> <b
							class="arrow"></b>
						</li>
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/standardVisit.operationMistakeBatch">
								<i class="menu-icon fa fa-caret-right"></i>业务差错检查成绩批量导入 </a> <b
							class="arrow"></b>
						</li>
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/standardVisit.operationMistakeSearch">
								<i class="menu-icon fa fa-caret-right"></i>业务差错检查成绩查询 </a> <b
							class="arrow"></b>
						</li>

					</ul>
				</li>
			</ul>
		</li>

		<li class=""><a href="#" class="dropdown-toggle"> <i
				class="menu-icon fa fa-desktop"></i> <span class="menu-text">
					积分管理 </span> <b class="arrow fa fa-angle-down"></b> </a> <b cite="arrow"></b>

			<ul class="submenu">
				<li class=""><a href="${pageContext.request.contextPath}/resource/integral.integralBatch"> <i
						class="menu-icon fa fa-caret-right"></i>积分批量导入 </a> <b class="arrow"></b>
				</li>
				<li class=""><a href="${pageContext.request.contextPath}/resource/integral.integralSearch"> <i
						class="menu-icon fa fa-caret-right"></i>积分查询 </a> <b class="arrow"></b>
				</li>
			</ul>
		</li>

		<li class=""><a href="#" class="dropdown-toggle"> <i
				class="menu-icon fa fa-desktop"></i> <span class="menu-text">
					创新管理 </span> <b class="arrow fa fa-angle-down"></b> </a> <b cite="arrow"></b>

			<ul class="submenu">
				<li class=""><a href="${pageContext.request.contextPath}/resource/innovation.innovationSingle">
						<i class="menu-icon fa fa-caret-right"></i>创新提案单条录入 </a> <b
					class="arrow"></b>
				</li>
				<li class=""><a href="${pageContext.request.contextPath}/resource/innovation.innovationBatch">
						<i class="menu-icon fa fa-caret-right"></i>创新提案批量导入 </a> <b
					class="arrow"></b>
				</li>
				<li class=""><a href="${pageContext.request.contextPath}/resource/innovation.innovationSearch">
						<i class="menu-icon fa fa-caret-right"></i>创新提案查询 </a> <b
					class="arrow"></b>
				</li>
			</ul>
		</li>

		<li class=""><a href="#" class="dropdown-toggle"> <i
				class="menu-icon fa fa-desktop"></i> <span class="menu-text">
					奖惩管理 </span> <b class="arrow fa fa-angle-down"></b> </a> <b cite="arrow"></b>
			<ul class="submenu">
				<li class=""><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-list-alt"></i>员工奖惩信息管理 <b
						class="arrow fa fa-angle-down"></b> </a> <b class="arrow"></b>

					<ul class="submenu">
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/praiseCriticism.employeePraiseCriticismSingle">
								<i class="menu-icon fa fa-caret-right"></i>员工奖惩信息管理单条录入 </a> <b
							class="arrow"></b>
						</li>
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/praiseCriticism.employeePraiseCriticismBatch">
								<i class="menu-icon fa fa-caret-right"></i>员工奖惩信息管理批量导入 </a> <b
							class="arrow"></b>
						</li>
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/praiseCriticism.employeePraiseCriticismSearch">
								<i class="menu-icon fa fa-caret-right"></i>员工奖惩信息管理查询 </a> <b
							class="arrow"></b>
						</li>
					</ul>
				</li>
				<li class=""><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-list-alt"></i>营业厅奖惩信息管理 <b
						class="arrow fa fa-angle-down"></b> </a> <b class="arrow"></b>

					<ul class="submenu">
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/praiseCriticism.businessHallPraiseCriticismSingle">
								<i class="menu-icon fa fa-caret-right"></i>营业厅奖惩信息单条录入 </a> <b
							class="arrow"></b>
						</li>
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/praiseCriticism.businessHallPraiseCriticismBatch">
								<i class="menu-icon fa fa-caret-right"></i>营业厅奖惩信息批量导入 </a> <b
							class="arrow"></b>
						</li>
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/praiseCriticism.businessHallPraiseCriticismSearch">
								<i class="menu-icon fa fa-caret-right"></i>营业厅奖惩信息查询 </a> <b
							class="arrow"></b>
						</li>
					</ul>
				</li>
			</ul>
		</li>

		<li class=""><a href="#" class="dropdown-toggle"> <i
				class="menu-icon fa fa-desktop"></i> <span class="menu-text">
					绩效管理 </span> <b class="arrow fa fa-angle-down"></b> </a> <b cite="arrow"></b>
			<ul class="submenu">
				<li class=""><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-list-alt"></i>月度绩效管理 <b
						class="arrow fa fa-angle-down"></b> </a> <b class="arrow"></b>

					<ul class="submenu">
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/performance.monthPerformanceRemind"> <i
								class="menu-icon fa fa-caret-right"></i>月度绩效未提交事项提醒 </a> <b
							class="arrow"></b>
						</li>
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/performance.monthPerformanceOpen"> <i
								class="menu-icon fa fa-caret-right"></i>月度绩效上传功能开通 </a> <b
							class="arrow"></b>
						</li>
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/performance.monthPerformanceSingle"> <i
								class="menu-icon fa fa-caret-right"></i>月度绩效单条录入 </a> <b
							class="arrow"></b>
						</li>
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/performance.monthPerformanceBatch"> <i
								class="menu-icon fa fa-caret-right"></i>月度绩效批量导入 </a> <b
							class="arrow"></b>
						</li>
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/performance.monthPerformanceSearch"> <i
								class="menu-icon fa fa-caret-right"></i>月度绩效查询 </a> <b class="arrow"></b>
						</li>
					</ul>
				</li>
				<li class=""><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-list-alt"></i>年度绩效管理 <b
						class="arrow fa fa-angle-down"></b> </a> <b class="arrow"></b>

					<ul class="submenu">
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/performance.yearPerformanceSingle"> <i
								class="menu-icon fa fa-caret-right"></i>年度绩效单条录入 </a> <b
							class="arrow"></b>
						</li>
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/performance.yearPerformanceBatch"> <i
								class="menu-icon fa fa-caret-right"></i>年度绩效批量导入 </a> <b
							class="arrow"></b>
						</li>
						<li class=""><a
							href="${pageContext.request.contextPath}/resource/performance.yearPerformanceSearch"> <i
								class="menu-icon fa fa-caret-right"></i>年度绩效查询 </a> <b class="arrow"></b>
						</li>
					</ul>
				</li>
			</ul>
		</li>

		<li class=""><a href="#" class="dropdown-toggle"> <i
				class="menu-icon fa fa-file-o"></i> <span class="menu-text">其他</span>

				<b class="arrow fa fa-angle-down"></b> </a> <b class="arrow"></b>

			<ul class="submenu">
				<li class=""><a href="${pageContext.request.contextPath}/resource/other.batchImportTempletList">
						<i class="menu-icon fa fa-caret-right"></i>批量导入模板下载 </a> <b
					class="arrow"></b>
				</li>
				<li class=""><a href="${pageContext.request.contextPath}/resource/other.otherSystemSetting">
						<i class="menu-icon fa fa-caret-right"></i>系统设定 </a> <b class="arrow"></b>
				</li>
			</ul>
		</li>

	</ul>
	<!-- /.nav-list -->

	<!-- #section:basics/sidebar.layout.minimize -->
	<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
		<i class="ace-icon fa fa-angle-double-left"
			data-icon1="ace-icon fa fa-angle-double-left"
			data-icon2="ace-icon fa fa-angle-double-right"></i>
	</div>

	<!-- /section:basics/sidebar.layout.minimize -->
	<script type="text/javascript">
		try {
			ace.settings.check('sidebar', 'collapsed')
		} catch (e) {
		}
	</script>
</div>


<!-- /section:basics/sidebar -->

