<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/jquery-easyui-1.7.0/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/jquery-easyui-1.7.0/themes/icon.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-easyui-1.7.0/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-easyui-1.7.0/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-easyui-1.7.0/locale/easyui-lang-zh_CN.js"></script>

    </head>
    <body>
    <div class="easyui-layout" style="width:100%; "data-options="fit:true">
        <div data-options="region:'north',split:true" style="height:50px;background-color:#95B8E7;"></div>
        <div data-options="region:'south',split:true" style="height:5%;background-color:#95B8E7;">
            <div style="" align="center">
                <span size="" color="white">Copyright &copy; 2020 liaokuo All Rights Reserved 版权所有 </span>
            </div>
        </div>
        <div data-options="region:'west',split:true" title="West" style="width:100px;"></div>
        <div data-options="region:'center',ticonCls:'icon-ok'">
            <table id="dg" title="用户管理" class="easyui-datagrid" fitColumns="true"
                   pagination="true" rownumbers="true"
                   url="${pageContext.request.contextPath}/user/list.do" fit="true"
                   toolbar="#toolbar">
                <thead>
                <tr>
                    <th field="cb" checkbox="true" align="center"></th>
                    <th field="id" width="50" align="center">编号</th>
                    <th field="userName" width="50" align="center">用户名</th>
                    <th field="password" width="50" align="center">密码</th>
                    <th field="trueName" width="50" align="center">真实姓名</th>
                    <th field="email" width="50" align="center">邮件</th>
                    <th field="phone" width="50" align="center">联系电话</th>
                </tr>
                </thead>
            </table>
            <div id="toolbar">
                <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newUser()">添加r</a>
                <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editUser()">修改</a>
                <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="destroyUser()">删除</a>
                <div>
                    用户名： <input type="text" id="s_userName" size="20" οnkeydοwn="if(event.keyCode == 13)searchUser()" />
                    <a href="javascript:searchUser()" class="easyui-linkbutton" iconCls="icon-search" plain="true">查询</a>
                </div>
                <div id="dlg-buttons">
                    <a href="javascript:saveUser()" class="easyui-linkbutton"
                       iconCls="icon-ok">保存</a> <a href="javascript:closeUserDialog()"
                                                   class="easyui-linkbutton" iconCls="icon-cancel">关闭</a>
                </div>
                <div id="dlg" class="easyui-dialog"
                     style="width: 730px;height:280px;padding:10px 10px;" closed="true"
                     buttons="#dlg-buttons">
                    <form method="post" id="fm">
                        <table cellspacing="8px;">
                            <tr>
                                <td>用户名：</td>
                                <td><input type="text" id="userName" name="userName"
                                           class="easyui-validatebox" required="true" /> <span
                                        style="color: red">*</span>
                                </td>
                                <td>	</td>
                                <td>密码：</td>
                                <td><input type="password" id="password" name="password"
                                           class="easyui-validatebox" required="true" /> <span
                                        style="color: red">*</span>
                                </td>
                            </tr>
                            <tr>
                                <td>真实姓名：</td>
                                <td><input type="text" id="trueName" name="trueName"
                                           class="easyui-validatebox" required="true" /> <span
                                        style="color: red">*</span>
                                </td>
                                <td>	</td>
                                <td>邮箱：</td>
                                <td><input type="text" id="email" name="email"
                                           validType="email" class="easyui-validatebox" required="true" /> <span
                                        style="color: red">*</span>
                                </td>
                            </tr>
                            <tr>
                                <td>联系电话：</td>
                                <td><input type="text" id="phone" name="phone"
                                           class="easyui-validatebox" required="true" /> <span
                                        style="color: red">*</span>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>

        </div>
    </div>

    </body>

</html>