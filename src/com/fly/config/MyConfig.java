
package com.fly.config;

import java.util.List;

import org.apache.log4j.Logger;

import com.alibaba.druid.wall.WallFilter;
import com.fly.controller.admins.AdminsController;
import com.fly.controller.beauty.BeautyController;
import com.fly.controller.blog.BlogController;
import com.fly.controller.friends.FriendsController;
import com.fly.controller.index.IndexController;
import com.fly.controller.liuyanban.LiuyanbanController;
import com.fly.controller.user.UserController;
import com.fly.controller.video.VideoController;
import com.fly.entity.Advice;
import com.fly.entity.Beauty;
import com.fly.entity.Blog;
import com.fly.entity.Blogcategory;
import com.fly.entity.Gonggao;
import com.fly.entity.Iplog;
import com.fly.entity.Link;
import com.fly.entity.Picrecommend;
import com.fly.entity.Qquser;
import com.fly.entity.Resourceslog;
import com.fly.entity.Role;
import com.fly.entity.Users;
import com.fly.entity.Userlogininfo;
import com.fly.entity.Userrole;
import com.fly.entity.Video;
import com.fly.interceptor.LogInterceptor;
import com.fly.interceptor.PhoneInterceptor;
import com.fly.timer.TimerManager;
import com.fly.timer.TimerResourcesLog;
import com.jfinal.config.Constants;
import com.jfinal.config.Handlers;
import com.jfinal.config.Interceptors;
import com.jfinal.config.JFinalConfig;
import com.jfinal.config.Plugins;
import com.jfinal.config.Routes;
import com.jfinal.core.JFinal;
import com.jfinal.ext.handler.ContextPathHandler;
import com.jfinal.kit.PathKit;
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.activerecord.CaseInsensitiveContainerFactory;
import com.jfinal.plugin.activerecord.dialect.OracleDialect;
import com.jfinal.plugin.activerecord.tx.TxByMethodRegex;
import com.jfinal.plugin.druid.DruidPlugin;
import com.jfinal.plugin.druid.DruidStatViewHandler;
import com.jfinal.plugin.ehcache.EhCachePlugin;
import com.jfinal.render.ViewType;

/**
 * API引导式配置
 */
public class MyConfig extends JFinalConfig
{
    private static Logger logger = Logger.getLogger(MyConfig.class);

    /**
     * 配置常量
     */
    public void configConstant(Constants me)
    {
        logger.info("配置常量开始..");
        PropKit.use("config.properties"); // 加载少量必要配置，随后可用PropKit.get(...)获取值
        me.setDevMode(PropKit.getBoolean("devMode", false));
        me.setViewType(ViewType.JSP);// 2.2中默认的视图为jsp
        me.setBaseViewPath("/WEB-INF/content");
        me.setBaseUploadPath(PathKit.getWebRootPath() + "/attached/temp");// 2.2中有所改动
        me.setEncoding("utf-8");
        me.setError404View("/WEB-INF/content/common/404.jsp");
        me.setError500View("/WEB-INF/content/common/500.jsp");
        logger.info("配置常量结束..");
    }

    /**
     * 配置路由
     */
    public void configRoute(Routes me)
    {
        logger.info("配置路由开始..");
        me.add("/", IndexController.class); // 第三个参数为该Controller的视图存放路径
        me.add("/index", IndexController.class, "/");
        me.add("/blog", BlogController.class, "/blog"); // 第三个参数省略时默认与第一个参数值相同，在此即为
        me.add("/admins", AdminsController.class, "/admins");// 按照bootstrap模板开发而成
        me.add("/user", UserController.class, "/user");// 用户
        me.add("/friends",FriendsController.class,"/friends");
        me.add("/liuyanban", LiuyanbanController.class, "/liuyanban");
        me.add("/beauty", BeautyController.class, "/beauty");// 美图
        me.add("/video", VideoController.class, "/video");// 视频
        logger.info("配置路由结束..");
    }
	public static DruidPlugin createDruidPluginOra() {
		return new DruidPlugin(PropKit.get("jdbcUrl"), 
				PropKit.get("user"), 
				PropKit.get("password").trim(),
				PropKit.get("driverClassName"));
	}
	private DruidPlugin createDruidPluginMysql() {
		// TODO Auto-generated method stub
		return new DruidPlugin(PropKit.get("jdbcUrlMysql"), 
				PropKit.get("userMysql"), 
				PropKit.get("passwordMysql").trim(),
				PropKit.get("driverClassNameMysql"));
	}
	
    /**
     * 配置插件
     */
    public void configPlugin(Plugins me)
    {
        logger.info("配置插件开始..");
//       DruidPlugin dp = createDruidPluginMysql();
		DruidPlugin dp = createDruidPluginOra();						
		dp.setValidationQuery("select 1 from dual");
		dp.start();		
		me.add(dp);
//        DruidPlugin dp = new DruidPlugin(PropKit.get("jdbcUrl"),
//                 PropKit.get("user"), PropKit.get("password").trim(),PropKit.get("driverClassName"));
//        dp.setValidationQuery("select 1 from dual");//oracle专用
//        dp.start();	
//        WallFilter wf = new WallFilter();
//        wf.setDbType("mysql");//mysql配置
//        wf.setDbType("oracle");//oracle配置
//        dp.addFilter(wf);
        // 配置Ecache插件
        me.add(new EhCachePlugin());   
        // 配置ActiveRecord插件
        //(1)mysql配置
//      ActiveRecordPlugin arp = new ActiveRecordPlugin(dp);
//        me.add(arp);
		//(2)oracle 配置ActiveRecord插件,映射到数据库表
		ActiveRecordPlugin arp = new ActiveRecordPlugin(dp);
		arp.setDialect(new OracleDialect());//使用数据库的insert和delete方法
		arp.setContainerFactory(new CaseInsensitiveContainerFactory());//忽略大小写
		me.add(arp);
		//设置处理级别 防止 java.sql.SQLException: 仅 READ_COMMITTED 和 SERIALIZABLE 是有效的事务处理级
		arp.setTransactionLevel(2);
        arp.setDevMode(true);
        arp.setShowSql(true);
        // 此项目并没有用到jfinal2.2的javabean与model的合体，感兴趣的可以参照jfinal官网的demo
        arp.addMapping("blog", Blog.class); // 映射blog 表到 Blog模型 
        arp.addMapping("users",Users.class);// 用户
        arp.addMapping("blogcategory", Blogcategory.class);// 博客分类
        arp.addMapping("userlogininfo", Userlogininfo.class);// 用户登陆信息
        arp.addMapping("advice", Advice.class);// 建议
        arp.addMapping("role", Role.class);// 角色
        arp.addMapping("userrole", Userrole.class);// 用户角色中间表
        arp.addMapping("picrecommend", Picrecommend.class);// 首页图片推荐--推荐尺寸为630*350
        arp.addMapping("beauty", Beauty.class);// 美图
        arp.addMapping("gonggao", Gonggao.class);// 公告
        arp.addMapping("iplog", Iplog.class);// ip和URL日志
        arp.addMapping("video", Video.class);// 视频模块
        arp.addMapping("resourceslog", Resourceslog.class);// 系统资源监控日志
        arp.addMapping("link", Link.class);// 友情链接

        logger.info("配置插件结束..");
    }




	/**
     * 配置全局拦截器
     */
    public void configInterceptor(Interceptors me)
    {
        logger.info("配置全局拦截器开始..");
        me.addGlobalActionInterceptor(new PhoneInterceptor());
        me.addGlobalActionInterceptor(new LogInterceptor());
        me.add(new TxByMethodRegex("(.*save.*|.*update.*|.*delete.*)"));// 2.2改动
        logger.info("配置全局拦截器结束..");
    }

    /**
     * 配置处理器
     */
    public void configHandler(Handlers me)
    {
        logger.info("配置处理器开始..");
        me.add(new ContextPathHandler("base"));
        DruidStatViewHandler dsvh = new DruidStatViewHandler("/druid");
        me.add(dsvh);
        logger.info("配置处理器结束..");
    }

    @Override
    public void afterJFinalStart()
    {
        logger.info("afterJFinalStart开始..");
        // 公告
        List<Gonggao> listGonggao = Gonggao.me.listAll();
        JFinal.me().getServletContext().setAttribute("gonggao", listGonggao);
        // 全局博客分类
        List<Blogcategory> listBlogcategory = Blogcategory.me.listAll();
        com.fly.common.Constants.setListBlogcategory(listBlogcategory);
        JFinal.me().getServletContext().setAttribute("cloudcategory",
                listBlogcategory);
        // 友情链接
        List<Link> listLink = Link.me.listAll();
        JFinal.me().getServletContext().setAttribute("systemListLink",
                listLink);
        // 网站域名
        JFinal.me().getServletContext().setAttribute("siteUrl",
                PropKit.get("siteUrl"));
        // 网站名称
        JFinal.me().getServletContext().setAttribute("siteName",
                PropKit.get("siteName"));
        // 多少插件短地址，注册时候的端地址，需自己注册，在配置文件中修改，默认写的是test
        JFinal.me().getServletContext().setAttribute("duoshuoShortName",
                PropKit.get("duoshuoShortName"));
        // 是否开放注册
        JFinal.me().getServletContext().setAttribute("systemRegisterOpen",
                PropKit.get("systemRegisterOpen"));
        // 是否开放普通用户写博客，传美图，发视频
        JFinal.me().getServletContext().setAttribute("systemEditOpen",
                PropKit.get("systemEditOpen"));
        TimerResourcesLog.start();
        // 定时器（目前主要是每天定时清理资源日志，一天有720条资源日志，每天凌晨2点清理一周前的日志，可自己修改时间）
        TimerManager tm = new TimerManager();
        tm.init();
        logger.info("afterJFinalStart结束..");
    }

    @Override
    public void beforeJFinalStop()
    {
        beforeJFinalStop();
        logger.info("beforeJFinalStop结束");
    }

    public static void main(String[] args)
    {
        JFinal.start("WebRoot", 80, "/LovePandaJ", 5);
    }
}
