﻿//添加普通员工
function UpdateUser()
{
    Ext.QuickTips.init();
    Ext.form.Field.prototype.msgTarget = 'side';
    //获得人员信息
    //这里是一个ajax请求

    Ext.Ajax.request
    (
        {
            url:'Json/GetUserByName.aspx',
            //params:{name:UserId},
            success: function(response, options)
            {
                var check = Ext.util.JSON.decode(response.responseText);
                Ext.getCmp('UserId').setValue(check.data[0].UserId);
                Ext.getCmp('LoginName').setValue(check.data[0].LoginName);
                Ext.getCmp('LoginPass').setValue(check.data[0].LoginPass);
                Ext.getCmp('UserName').setValue(check.data[0].UserName);
                Ext.getCmp('Remark').setValue(check.data[0].Remark);

            }
        }
    );
    
    var UpdateUser = new Ext.FormPanel
    (
        {
            labelWidth:75,
            frame : true,
            title : '请仔细填写表单',
            width : 300,
            waitMsgTarget : true,
            items:
                [
                    {
                        xtype: 'textfield',
                        fieldLabel: '&nbsp;&nbsp;&nbsp;&nbsp;Id',
                        labelStyle: 'width:80px',
                        width: 150,
                        name: 'UserId',
                        id: 'UserId',
                        allowBlank: false,
                        hidden: true,
                        hideLabel: true 
                    },
                {
                    xtype:'textfield',
                    fieldLabel: '&nbsp;&nbsp;&nbsp;&nbsp;用户名',
                    labelStyle: 'width:80px',
                    width:150,
                    name: 'LoginName',
                    id: 'LoginName',
                    allowBlank:false,
                    blankText: '请输入登录用户名',
                    disabled: true,
                },
                {
                    inputType:'password',
                    xtype:'textfield',
                    fieldLabel: '&nbsp;&nbsp;&nbsp;&nbsp;填写新密码',
                    labelStyle: 'width:80px',
                    width:150,
                    name: 'LoginPass',
                    id: 'LoginPass',
                    allowBlank:false,
                    blankText: '请输入新密码'
                },
                {
                    xtype:'textfield',
                    fieldLabel: '&nbsp;&nbsp;&nbsp;&nbsp;真实姓名',
                    labelStyle: 'width:80px',
                    width:150,
                    name: 'UserName',
                    id: 'UserName',
                    allowBlank:false,
                    blankText: '请输入姓名'
                },
                {
                    xtype:'textarea',
                    name: 'Remark',
                    id: 'Remark',
                    fieldLabel:'&nbsp;&nbsp;&nbsp;&nbsp;备注',
                    labelStyle: 'width:80px',
                    height:100,
                    width:200
                }
            ],
            buttons:
            [
                {
                    id:'btnOk',
                    text:'确  定',
                    handler:function()
                    {
                        //如果验证合法
                        if (addUser.form.isValid())
                        {
                            //弹出效果
                            Ext.MessageBox.show
                            (
                                {
                                    msg: '正在保存，请稍等...',
							        progressText: 'Saving...',
							        width:300,
							        wait:true,
							        waitConfig: {interval:200},
							        icon:'download',
							        animEl: 'saving'
                                }
                            );
                            setTimeout(function(){}, 10000);
                            //提交到服务器
                            addUser.form.submit
                            (
                                {
                                    url:'Form/UpdateUser.aspx',  //提交的页面路径
                                    method:'post',//提交方式为post
                                    //提交成功的回调函数
									success:function(form,action)
                                    {
                                        var flage = action.result.success;
									    //如果服务器端传过来的数据为true则表示登录成功
                                        if (flage == true)
									    {
									        Ext.MessageBox.alert('恭喜','修改员工信息成功!');
									        newWin.hide();
                                        }
									},
									//提交失败的回调函数
								    failure:function()
								    {
								        Ext.Msg.alert('错误','服务器出现错误请稍后再试！');
								    }
                                }
                            );
                        }
                    }

                },
                {
                    text:'取  消',
                    handler:function()
                            {
                                newWin.hide();
                            }
                }
            ]
        }
    );
    //定义窗体
    newWin = new Ext.Window
    (
        {
            layout:'fit',
            width:350,
            height:300,
            collapsible:true, //允许缩放条
            closeAction : 'hide',
            plain : true,
            modal: 'true', //启用遮罩
            title : '编辑员工信息',
            items: UpdateUser
        }
    );
    //显示窗体
    newWin.show();    
}

//var isok=false;
//function CheckUserId()
//{
//    var UserId = Ext.get('LoginName').dom.value;
//    //ajax提交
//    Ext.Ajax.request
//    (
//        {
//            url:'Form/CheckUserId.aspx',
//            params:{name:UserId},
//            success: function(response, options)
//            {
//                debugger;
//                var check = Ext.util.JSON.decode(response.responseText);
//                if(check.success == true)  //已被注册
//                {
//                    SetValue(true);
//                }
//            }
//        }
//    );
//    //给变量赋值
//    function SetValue(b)
//    {
//        isok = b;
//    }
//    return isok;
//}
