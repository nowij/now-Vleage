<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
</head>
<!--easyui css import-->
<link rel="stylesheet" type="text/css" href="/css/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="/css/themes/icon.css">
<link rel="stylesheet" type="text/css" href="/css/themes/color.css">

<link rel="stylesheet" type="text/css" href="/css/common.css">
   
<!--easyui javascript import-->
<script type="text/javascript" src="/js/jquery.min.js"></script>
<script type="text/javascript" src="/js/jquery.easyui.min.js"></script>

<style>
.main_content {
	flex-direction:row;
}

#comboDiv {
	padding:15px;
}
</style>

<body>
	<!-- header -->
	<div class="header">
		<div class="header_content">${team}</div>
	</div>
	<!-- container -->
	<div class="main_content">
		<div class="left_content">
			<div id="comboDiv">
				<input id="seasn" class="easyui-combobox"></input>
				<input id="round" class="easyui-combobox"></input>
			</div>
			<div>
				<table id="rsltTble" class="easyui-datagrid" data-options="fitColumns:true"></table>
			</div>
			<div>
				<!-- 누적 몇승 몇패 -->
			</div>
		</div>
		
		<!-- 히든 하기 -->
		<div class="right_content">
			<div>vs</div>
			<div>
				<table id="dtlTble" class="easyui-datagrid"></table>
			</div>
		</div>
	</div>
	<!-- footer -->
	<div class="footer"></div>
</body>

<script>
$(document).ready(function(){
	setSeasnCombobox();
	setRoundCombobox();
});

function setSeasnCombobox() {
	$('#seasn').combobox({
		url:'', 
		valueField:'season',
		textField:'시즌'
	});
}

function setRoundCombobox() {
	$('#round').combobox({
		url:'',
		valueField:'round',
		textField:'라운드'
	});
}

function setResultTable() {
	$('#rsltTble').datagrid({
		url: '',
		columns:[[
			{field:'gmDate', title:'날짜', width:100},
			{field:'gm', title:'경기', width:100},
			{field:'gmRslt', title:'결과', width:100}
		]],
		sortName: 'gmDate',
		singleSelect: true,
		autoLoad: false,
		fitColumns: true,
		emptyMsg: '데이터가 없습니다.',
		onDblClickRow: function(index, row) {
			doDetail(row);
		}
	});
}

function doDetail(row) {
	
}

function setDetailTable() {
	$('#dtlTble').datagrid({
		url: '',
		columns:[[
			{field: 'team', title:'팀', width:100},
			{field: 'set', title:'세트', width:100},
			{field: 'oSet', title:'1', width:100},
			{field: 'tSet', title:'2', width:100},
			{field: 'tSet', title:'3', width:100},
			{field: 'fSet', title:'4', width:100},
			{field: 'lSet', title:'5', width:100}
		]],
		fitColumns: true,
		singleSelect: true
	});
}

</script>
</html>

