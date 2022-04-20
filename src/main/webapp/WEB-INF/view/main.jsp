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
.header_admin {
	z-index: 999;
    position: absolute;
    top: 20px;
    right: calc(50% - 600px);
    padding: 0 12px;
    line-height: 20px;
    font-size: 12px;
    color: #0e76bc;
    text-decoration: none;
    background-color: #e3edf4;
    border-radius: 20px;
}

.right_content {
	margin-left:45%;
	padding:5px;
}
</style>

<body>
	<!-- header -->
	<div class="header">
		<a href="/admin.do" class="header_admin">������</a>
	</div>
	<!-- container -->
	<div class="main_content">
		<div class="table_header_content">
			<button id="graphBtn" class="easyui-linkbutton">�׷���</button>
		</div>
		
		<div>
			<table id="grid" class="easyui-datagrid" style="width:1105px"></table>
		</div>
	</div>
	<!-- footer -->
	<div class="footer"></div>
</body>
<script>
$(document).ready(function(){
	setGrid();	
});

function setGrid() {
	$('#grid').datagrid({
		url: 'main_test.json',
		columns: [[
			{field:'rank', title:'����', width:'100'},
			{field:'team', title:'��', width:'100'},
			{field:'win', title:'��', width:'100'},
			{field:'lose', title:'��', width:'100'},
			{field:'winScore', title:'����', width:'100'},
			{field:'gotSet', title:'�漼Ʈ', width:'100'},
			{field:'lossSet', title:'�Ǽ�Ʈ', width:'100'},
			{field:'setPercent', title:'��Ʈ��Ƿ�', width:'100'},
			{field:'gotScore', title:'����', width:'100'},
			{field:'lossScore', title:'����', width:'100'},
			{field:'scorePercent', title:'������Ƿ�', width:'100'}
		]],
		method: 'GET', // �ӽ�(���߿� post��)
		singleSelect: true,
		sortName: 'rank',
		onDblClickRow: function(index, row) {
			movePage(row);
		},
		fitColumns: true
	});
}

function movePage(row) {
	const team = row.team;
	// ������ �̵�
	let form = document.createElement('form');
    
    let object;
    object = document.createElement('input');
    object.setAttribute('type', 'hidden');
    object.setAttribute('name', 'team');
    object.setAttribute('value', team);
    
    form.appendChild(object);
    form.setAttribute('method', 'post');
    form.setAttribute('action', '/team.do');
    document.body.appendChild(form);
    form.submit();

}

</script>
</html>