<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
</head>
<link rel="stylesheet" type="text/css" href="/css/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="/css/themes/icon.css">
<link rel="stylesheet" type="text/css" href="/css/themes/color.css">

<link rel="stylesheet" type="text/css" href="/css/common.css">
   
<!--easyui javascript import-->
<script type="text/javascript" src="/js/jquery.min.js"></script>
<script type="text/javascript" src="/js/jquery.easyui.min.js"></script>
<body>
	<!-- header -->
	<div class="header"></div>
	<!-- container -->
	<div class="main_content">
		<table id="grid" class="easyui-datagrid" style="width:500px"></table>
		<button onclick="showPopup('INIT')">����</button>
	</div>
	<!-- footer -->
	<div class="footer"></div>
	
	<div id="adDtl"></div>
</body>

<script>
let tblIndex = '';

$(document).ready(function(){
	setTable();	
});

function setTable() {
	$('#grid').datagrid({
		url: '/schedule.do',
		columns:[[
			{field:'scdlId', title:'���⽺����', width:'100'},
			{field:'scdlStts', title:'����', width:'100'},
			{field:'oper', title:'����', width:'100'
				, formatter:function(value, row, index) {
					const initStrtBtn = '<button class="btn" onclick="doSchedule(ONCE)">1������</button>';
					const strtBtn = '<button class="btn" onclick="doSchedule(START)">����</button>';
					const stpBtn = '<button class="btn" onclick="doSchedule(STOP)">����</button>';

					return initStrtBtn+strtBtn+stpBtn; 
					
				}
			}
		]],
		fitColumns: true,
		singleSelect: true,
		onDblClickRow: function(index, row) {
			showPopup('MODI');
		},
		onLoadSuccess: function(data) {
			tblIndex = (data.total)+1;
		}
	});
}

function doSchedule(option) {

}

/* �˾� show */
function showPopup(option) {
	let title = '';
	
	if (option == 'INIT') {
		title = '����';
	} else if(option == 'MODI') {
		title = '����';
	}
	
	$('#adDtl').dialog({
		title: title,
		width: 450,
		height : 150,
		closed: false,
		href: '/adminDetail.do?operation='+option+'&scdlNo='+tblIndex,
		modal : true
	});
}

/* �˾� ���� ���� */
function doSave(option) {
	const id = $('#scdlIdInp').val();
	const cron = $('#scdlCronInp').val();
	const no = parseInt($('#scdlNoInp').text());
		
	$.ajax({
		url: '/scheduleChange.do',
		type: 'POST',
		data : {
			scdlNo : no,
			operation : option,
			scdlId : id,
			scdlCron : cron
		},
		success: function(data) {
			if (data == 1) {
				alert('�����߽��ϴ�!');
				doClose();
				$('#grid').datagrid('reload');
			} else{
				alert("���� �����߽��ϴ�!");
			}
		}
	});
}

/* �˾� close */
function doClose() {
	$('#adDtl').dialog('close');
}
</script>
</html>