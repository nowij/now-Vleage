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
		<table id="grid" class="easyui-datagrid" style="width:500px">
			<tbody>
				<tr>
					<td>�ʱ� ����</td>
					<td></td>
				</tr>
				<tr>
					<td>������ ����</td>
					<td></td>
				</tr>
			</tbody>
		</table>
	</div>
	<!-- footer -->
	<div class="footer"></div>
</body>

<script>
$(document).ready(function(){
	setTable();	
});

function setTable() {
	$('#grid').datagrid({
		columns:[[
			{field:'extr', title:'����', width:'100'},
			{field:'oper', title:'����', width:'100'
				, formatter:function(value, row, index) {
					const strtBtn = '<button class="btn">����</button>';
					const stpBtn = '<button class="btn">����</button>';
					const modiBtn = '<button class="btn">����</button>';
					
					if (row.extr == '�ʱ� ����')
						return strtBtn+stpBtn;
					else
						return strtBtn+stpBtn+modiBtn; 
					
				}
			}
		]],
		fitColumns: true,
		singleSelect: true
	});
}
</script>
</html>