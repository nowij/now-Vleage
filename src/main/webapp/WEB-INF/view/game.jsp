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

<body>
	<header></header>
	<div class="b_content">
		<input id="seasn" class="easyui-combobox"></input>
		<input id="round" class="easyui-combobox"></input>
	</div>
	<div class="b_content">
		<table id="rsltTble"></table>
	</div>
	
	<div>
	
	</div>
	<footer></footer>
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
		textField:'����'
	});
}

function setRoundCombobox() {
	$('#round').combobox({
		url:'',
		valueField:'round',
		textField:'����'
	});
}

function setResultTable() {
	$('#rsltTble').datagrid({
		url: '',
		columns:[[
			{field:'gmDate', title:'��¥'},
			{field:'gm', title:'���'},
			{field:'gmRslt', title:'���'}
		]],
		sortName: 'gmDate',
		singleSelect: true,
		autoLoad: false,
		emptyMsg: '�����Ͱ� �����ϴ�.',
		onDblClickRow: function(index, row) {
			doDetail(row);
		}
	});
}

function doDetail(row) {
	
}

</script>
</html>

