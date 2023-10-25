#coding:utf-8
__author__ = "ila"
from django.db import models

from .model import BaseModel

from datetime import datetime



class yuangong(BaseModel):
    __doc__ = u'''yuangong'''
    __tablename__ = 'yuangong'

    __loginUser__='gonghao'


    __authTables__={}
    __authPeople__='是'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __loginUserColumn__='gonghao'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    gonghao=models.CharField ( max_length=255,null=False,unique=True, verbose_name='工号' )
    mima=models.CharField ( max_length=255,null=False, unique=False, verbose_name='密码' )
    xingbie=models.CharField ( max_length=255, null=True, unique=False, verbose_name='性别' )
    zhaopian=models.CharField ( max_length=255, null=True, unique=False, verbose_name='照片' )
    yuangongxingming=models.CharField ( max_length=255,null=False, unique=False, verbose_name='员工姓名' )
    yuangongdianhua=models.CharField ( max_length=255, null=True, unique=False, verbose_name='员工电话' )
    '''
    gonghao=VARCHAR
    mima=VARCHAR
    xingbie=VARCHAR
    zhaopian=VARCHAR
    yuangongxingming=VARCHAR
    yuangongdianhua=VARCHAR
    '''
    class Meta:
        db_table = 'yuangong'
        verbose_name = verbose_name_plural = '员工'
class yaopinfenlei(BaseModel):
    __doc__ = u'''yaopinfenlei'''
    __tablename__ = 'yaopinfenlei'



    __authTables__={}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    yaopinfenlei=models.CharField ( max_length=255, null=True, unique=False, verbose_name='药品分类' )
    '''
    yaopinfenlei=VARCHAR
    '''
    class Meta:
        db_table = 'yaopinfenlei'
        verbose_name = verbose_name_plural = '药品分类'
class haocaifenlei(BaseModel):
    __doc__ = u'''haocaifenlei'''
    __tablename__ = 'haocaifenlei'



    __authTables__={}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    haocaifenlei=models.CharField ( max_length=255, null=True, unique=False, verbose_name='耗材分类' )
    '''
    haocaifenlei=VARCHAR
    '''
    class Meta:
        db_table = 'haocaifenlei'
        verbose_name = verbose_name_plural = '耗材分类'
class haocaixinxi(BaseModel):
    __doc__ = u'''haocaixinxi'''
    __tablename__ = 'haocaixinxi'



    __authTables__={}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    haocaibianhao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='耗材编号' )
    pinming=models.CharField ( max_length=255, null=True, unique=False, verbose_name='品名' )
    haocaifenlei=models.CharField ( max_length=255, null=True, unique=False, verbose_name='耗材分类' )
    tupian=models.CharField ( max_length=255, null=True, unique=False, verbose_name='图片' )
    guigexinghao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='规格型号' )
    danwei=models.CharField ( max_length=255, null=True, unique=False, verbose_name='单位' )
    zongshuliang=models.IntegerField  (  null=True, unique=False, verbose_name='总数量' )
    haocaishuoming=models.TextField   (  null=True, unique=False, verbose_name='耗材说明' )
    '''
    haocaibianhao=VARCHAR
    pinming=VARCHAR
    haocaifenlei=VARCHAR
    tupian=VARCHAR
    guigexinghao=VARCHAR
    danwei=VARCHAR
    zongshuliang=Integer
    haocaishuoming=Text
    '''
    class Meta:
        db_table = 'haocaixinxi'
        verbose_name = verbose_name_plural = '耗材信息'
class haocairuku(BaseModel):
    __doc__ = u'''haocairuku'''
    __tablename__ = 'haocairuku'



    __authTables__={}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    rukubianhao=models.CharField ( max_length=255, null=True,unique=True, verbose_name='入库编号' )
    haocaibianhao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='耗材编号' )
    pinming=models.CharField ( max_length=255, null=True, unique=False, verbose_name='品名' )
    haocaifenlei=models.CharField ( max_length=255, null=True, unique=False, verbose_name='耗材分类' )
    guigexinghao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='规格型号' )
    danwei=models.CharField ( max_length=255, null=True, unique=False, verbose_name='单位' )
    shengchanchangjia=models.CharField ( max_length=255, null=True, unique=False, verbose_name='生产厂家' )
    rukulaiyuan=models.CharField ( max_length=255,null=False, unique=False, verbose_name='入库来源' )
    jinjia=models.FloatField   ( null=False, unique=False, verbose_name='进价' )
    zongshuliang=models.IntegerField  ( null=False, unique=False, verbose_name='总数量' )
    zongjia=models.FloatField   (  null=True, unique=False, verbose_name='总价' )
    rukushijian=models.DateTimeField  (  null=True, unique=False, verbose_name='入库时间' )
    '''
    rukubianhao=VARCHAR
    haocaibianhao=VARCHAR
    pinming=VARCHAR
    haocaifenlei=VARCHAR
    guigexinghao=VARCHAR
    danwei=VARCHAR
    shengchanchangjia=VARCHAR
    rukulaiyuan=VARCHAR
    jinjia=Float
    zongshuliang=Integer
    zongjia=Float
    rukushijian=DateTime
    '''
    class Meta:
        db_table = 'haocairuku'
        verbose_name = verbose_name_plural = '耗材入库'
class haocaichuku(BaseModel):
    __doc__ = u'''haocaichuku'''
    __tablename__ = 'haocaichuku'



    __authTables__={}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    chukubianhao=models.CharField ( max_length=255, null=True,unique=True, verbose_name='出库编号' )
    haocaibianhao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='耗材编号' )
    pinming=models.CharField ( max_length=255, null=True, unique=False, verbose_name='品名' )
    haocaifenlei=models.CharField ( max_length=255, null=True, unique=False, verbose_name='耗材分类' )
    tupian=models.CharField ( max_length=255, null=True, unique=False, verbose_name='图片' )
    chukuquxiang=models.CharField ( max_length=255,null=False, unique=False, verbose_name='出库去向' )
    zongshuliang=models.CharField ( max_length=255,null=False, unique=False, verbose_name='总数量' )
    chukushijian=models.DateTimeField  (  null=True, unique=False, verbose_name='出库时间' )
    '''
    chukubianhao=VARCHAR
    haocaibianhao=VARCHAR
    pinming=VARCHAR
    haocaifenlei=VARCHAR
    tupian=VARCHAR
    chukuquxiang=VARCHAR
    zongshuliang=VARCHAR
    chukushijian=DateTime
    '''
    class Meta:
        db_table = 'haocaichuku'
        verbose_name = verbose_name_plural = '耗材出库'
class yaopinxinxi(BaseModel):
    __doc__ = u'''yaopinxinxi'''
    __tablename__ = 'yaopinxinxi'



    __authTables__={}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    yaopinbianhao=models.CharField ( max_length=255,null=False, unique=False, verbose_name='药品编号' )
    yaopinmingcheng=models.CharField ( max_length=255,null=False, unique=False, verbose_name='药品名称' )
    yaopinfenlei=models.CharField ( max_length=255, null=True, unique=False, verbose_name='药品分类' )
    yaopintupian=models.CharField ( max_length=255, null=True, unique=False, verbose_name='药品图片' )
    jixing=models.CharField ( max_length=255, null=True, unique=False, verbose_name='剂型' )
    baozhiqi=models.CharField ( max_length=255, null=True, unique=False, verbose_name='保质期' )
    zongshuliang=models.IntegerField  (  null=True, unique=False, verbose_name='总数量' )
    yaopinshuoming=models.TextField   (  null=True, unique=False, verbose_name='药品说明' )
    '''
    yaopinbianhao=VARCHAR
    yaopinmingcheng=VARCHAR
    yaopinfenlei=VARCHAR
    yaopintupian=VARCHAR
    jixing=VARCHAR
    baozhiqi=VARCHAR
    zongshuliang=Integer
    yaopinshuoming=Text
    '''
    class Meta:
        db_table = 'yaopinxinxi'
        verbose_name = verbose_name_plural = '药品信息'
class yaopinruku(BaseModel):
    __doc__ = u'''yaopinruku'''
    __tablename__ = 'yaopinruku'



    __authTables__={}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    yaopinbianhao=models.CharField ( max_length=255, null=True,unique=True, verbose_name='药品编号' )
    yaopinmingcheng=models.CharField ( max_length=255, null=True, unique=False, verbose_name='药品名称' )
    yaopinfenlei=models.CharField ( max_length=255, null=True, unique=False, verbose_name='药品分类' )
    jixing=models.CharField ( max_length=255, null=True, unique=False, verbose_name='剂型' )
    shengchanchangjia=models.CharField ( max_length=255, null=True, unique=False, verbose_name='生产厂家' )
    picihao=models.CharField ( max_length=255,null=False, unique=False, verbose_name='批次号' )
    shengchanriqi=models.DateField   ( null=False, unique=False, verbose_name='生产日期' )
    jinjia=models.FloatField   ( null=False, unique=False, verbose_name='进价' )
    zongshuliang=models.IntegerField  ( null=False, unique=False, verbose_name='总数量' )
    zongjia=models.CharField ( max_length=255, null=True, unique=False, verbose_name='总价' )
    rukushijian=models.DateTimeField  (  null=True, unique=False, verbose_name='入库时间' )
    '''
    yaopinbianhao=VARCHAR
    yaopinmingcheng=VARCHAR
    yaopinfenlei=VARCHAR
    jixing=VARCHAR
    shengchanchangjia=VARCHAR
    picihao=VARCHAR
    shengchanriqi=Date
    jinjia=Float
    zongshuliang=Integer
    zongjia=VARCHAR
    rukushijian=DateTime
    '''
    class Meta:
        db_table = 'yaopinruku'
        verbose_name = verbose_name_plural = '药品入库'
class yaopinchuku(BaseModel):
    __doc__ = u'''yaopinchuku'''
    __tablename__ = 'yaopinchuku'



    __authTables__={}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    chukubianhao=models.CharField ( max_length=255, null=True,unique=True, verbose_name='出库编号' )
    yaopinbianhao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='药品编号' )
    yaopinmingcheng=models.CharField ( max_length=255, null=True, unique=False, verbose_name='药品名称' )
    yaopinfenlei=models.CharField ( max_length=255, null=True, unique=False, verbose_name='药品分类' )
    jixing=models.CharField ( max_length=255, null=True, unique=False, verbose_name='剂型' )
    chukuquxiang=models.CharField ( max_length=255,null=False, unique=False, verbose_name='出库去向' )
    zongshuliang=models.CharField ( max_length=255, null=True, unique=False, verbose_name='总数量' )
    chukushijian=models.DateTimeField  (  null=True, unique=False, verbose_name='出库时间' )
    '''
    chukubianhao=VARCHAR
    yaopinbianhao=VARCHAR
    yaopinmingcheng=VARCHAR
    yaopinfenlei=VARCHAR
    jixing=VARCHAR
    chukuquxiang=VARCHAR
    zongshuliang=VARCHAR
    chukushijian=DateTime
    '''
    class Meta:
        db_table = 'yaopinchuku'
        verbose_name = verbose_name_plural = '药品出库'
