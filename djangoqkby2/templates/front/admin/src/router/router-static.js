import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import haocairuku from '@/views/modules/haocairuku/list'
    import yuangong from '@/views/modules/yuangong/list'
    import haocaifenlei from '@/views/modules/haocaifenlei/list'
    import yaopinruku from '@/views/modules/yaopinruku/list'
    import haocaixinxi from '@/views/modules/haocaixinxi/list'
    import yaopinxinxi from '@/views/modules/yaopinxinxi/list'
    import yaopinfenlei from '@/views/modules/yaopinfenlei/list'
    import haocaichuku from '@/views/modules/haocaichuku/list'
    import yaopinchuku from '@/views/modules/yaopinchuku/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
      ,{
	path: '/haocairuku',
        name: '耗材入库',
        component: haocairuku
      }
      ,{
	path: '/yuangong',
        name: '员工',
        component: yuangong
      }
      ,{
	path: '/haocaifenlei',
        name: '耗材分类',
        component: haocaifenlei
      }
      ,{
	path: '/yaopinruku',
        name: '药品入库',
        component: yaopinruku
      }
      ,{
	path: '/haocaixinxi',
        name: '耗材信息',
        component: haocaixinxi
      }
      ,{
	path: '/yaopinxinxi',
        name: '药品信息',
        component: yaopinxinxi
      }
      ,{
	path: '/yaopinfenlei',
        name: '药品分类',
        component: yaopinfenlei
      }
      ,{
	path: '/haocaichuku',
        name: '耗材出库',
        component: haocaichuku
      }
      ,{
	path: '/yaopinchuku',
        name: '药品出库',
        component: yaopinchuku
      }
    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
