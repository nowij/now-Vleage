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
		<button onclick="showPopup('INIT')">생성</button>
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
			{field:'scdlId', title:'추출스케줄', width:'100'},
			{field:'scdlStts', title:'상태', width:'100'},
			{field:'oper', title:'동작', width:'100'
				, formatter:function(value, row, index) {
					const initStrtBtn = '<button class="btn" onclick="doSchedule(ONCE)">1번실행</button>';
					const strtBtn = '<button class="btn" onclick="doSchedule(START)">실행</button>';
					const stpBtn = '<button class="btn" onclick="doSchedule(STOP)">정지</button>';

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

/* 팝업 show */
function showPopup(option) {
	let title = '';
	
	if (option == 'INIT') {
		title = '생성';
	} else if(option == 'MODI') {
		title = '수정';
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

/* 팝업 내용 저장 */
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
				alert('저장했습니다!');
				doClose();
				$('#grid').datagrid('reload');
			} else{
				alert("저장 실패했습니다!");
			}
		}
	});
}

/* 팝업 close */
function doClose() {
	$('#adDtl').dialog('close');
}
</script>
</html>