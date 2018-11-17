//退房方法
function UpdateRoomPrice(TypeId, TypeName, TypePrice, IsTv, IsKongTiao, Remark) {
    //计算余额
    Ext.QuickTips.init();
    Ext.form.Field.prototype.msgTarget = 'side';
    var closeRoom = new Ext.FormPanel
        (
        {
            labelWidth: 75,
            frame: true,
            title: '房间详情',
            width: 260,
            waitMsgTarget: true,
            items:
            [
                new Ext.form.TextField({
                    fieldLabel: 'Id',
                    name: 'TypeId',
                    hidden: true,
                    value: TypeId,
                    hideLabel:true 
                }),
                new Ext.form.TextField
                    (
                    {
                        fieldLabel: '房间类型',
                        name: 'TypeName',
                        allowBlank: false,
                        value: TypeName,
                        readOnly: true,
                        disabled: true,
                    }
                    ),
                new Ext.form.TextField
                    (
                    {
                        fieldLabel: '房间价格',
                        name: 'TypePrice',
                        allowBlank: false,
                        value: TypePrice
                    }
                    ),
                new Ext.form.TextField
                    (
                    {
                        fieldLabel: '是否有电视',
                        name: 'IsTv',
                        allowBlank: false,
                        value: IsTv,
                        disabled: true,
                    }
                    ),
                new Ext.form.TextField
                    (
                    {
                        fieldLabel: '是否有空调',
                        name: 'IsKongTiao',
                        allowBlank: false,
                        value: IsKongTiao,
                        disabled: true,
                    }
                    ),
                new Ext.form.TextField
                    (
                    {
                        fieldLabel: '备注',
                        name: 'Remark',
                        allowBlank: false,
                        value: Remark
                    }
                    )
            ],
            buttons:
            [
                {
                    id: 'btnOk',
                    text: '修 改',
                    handler: function () {
                        //如果验证合法
                        if (closeRoom.form.isValid()) {
                            //弹出效果
                            Ext.MessageBox.show
                                (
                                {
                                    msg: '正在修改房间信息，请稍等...',
                                    progressText: 'Update...',
                                    width: 300,
                                    wait: true,
                                    waitConfig: { interval: 200 },
                                    icon: 'download',
                                    animEl: 'update'
                                }
                                );
                            setTimeout(function () { }, 10000);
                            //提交到服务器
                            closeRoom.form.submit
                                (
                                {
                                    url: 'Form/UpdateRoomPrice.aspx',  //提交的页面路径
                                    method: 'post',//提交方式为post
                                    //提交成功的回调函数
                                    success: function (form, action) {
                                        var flage = action.result.success;
                                        //如果服务器端传过来的数据为true则表示登录成功
                                        if (flage == true) {
                                            Ext.MessageBox.alert('恭喜', '修改成功!');
                                            //storeMain.reload(); //重新加载Grid
                                            newWin.hide();
                                        }
                                    },
                                    //提交失败的回调函数
                                    failure: function () {
                                        Ext.Msg.alert('错误', '服务器出现错误请稍后再试！');
                                    }
                                }
                                );
                        }
                    }

                },
                {
                    text: '取  消',
                    handler: function () {
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
            id:"UpdateRoom",
            layout: 'fit',
            width: 260,
            height: 300,
            collapsible: true, //允许缩放条
            closeAction: 'destroy',
            plain: true,
            modal: 'true',
            items: closeRoom
        }
        );
    //显示窗体
    newWin.show();

}

