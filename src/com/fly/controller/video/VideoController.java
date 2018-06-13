
package com.fly.controller.video;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.fly.common.Constants;
import com.fly.controller.BaseController;
import com.fly.entity.Users;
import com.fly.entity.Video;
import com.fly.interceptor.EditOpenInterceptor;
import com.fly.interceptor.LoginInterceptor;
import com.fly.util.ClearTemp;
import com.fly.util.HtmlUtil;
import com.fly.util.ImageUtil;
import com.jfinal.aop.Before;
import com.jfinal.kit.PathKit;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.upload.UploadFile;

public class VideoController extends BaseController
{
    public void index()
    {
        Page<Video> videolist = null;

        videolist = Video.me.paginate(getParaToInt("page", 1), 20);
        setAttr("ranktype", "default");
        List<Video> beautys = videolist.getList();
        List<Map> results = new ArrayList<Map>();
        for (Video v : beautys)
        {
            Map every = new HashMap();
            every.put("id", v.getNumber("id"));
            every.put("user_id", v.getNumber("user_id"));
            every.put("title", v.getStr("title"));
            every.put("keyword", v.getStr("keyword"));
            every.put("pre", v.getStr("pre"));
            every.put("view", v.getNumber("view"));
            every.put("image", v.getStr("image"));
            every.put("create_time", v.getDate("create_time"));
            Users videoUser = v.getUser();
            every.put("avatar", videoUser.getStr("avatar"));
            every.put("username", videoUser.getStr("username"));
            String content_show = "";
            if (!empty(v.getStr("content")))
            {
                content_show = HtmlUtil.getNoHTMLString(
                        HtmlUtil.Decode(v.getStr("content")), 150);
            }
            every.put("content", content_show);
            results.add(every);
        }
        setAttr("videoPage",
                new Page(results, videolist.getPageNumber(),
                        videolist.getPageSize(), videolist.getTotalPage(),
                        videolist.getTotalRow()));
        render("video.jsp");
    }

    @Before({LoginInterceptor.class, EditOpenInterceptor.class})
    public void add()
    {
        render("add.jsp");
    }

    @Before({LoginInterceptor.class, EditOpenInterceptor.class})
    public void save()
    {
        UploadFile uploadFile = getFile("upload");
        if (empty(uploadFile))
        {
            message = "图片不能为空";
            setAttr("message", message);
            renderJsp("/WEB-INF/content/common/result.jsp");
            return;
        }
        Video video = getModel(Video.class);
        if (empty(video.getStr("title")))
        {
            message = "标题不能为空";
            setAttr("message", message);
            renderJsp("/WEB-INF/content/common/result.jsp");
            return;
        }
        if (empty(video.getStr("pre")))
        {
            message = "视频代码不能为空";
            setAttr("message", message);
            renderJsp("/WEB-INF/content/common/result.jsp");
            return;
        }
        String[] suffixarr = uploadFile.getFileName().split("\\.");
        String suffix = suffixarr[suffixarr.length - 1];
        String fileNmae = UUID() + "." + suffix;
        File des = new File(
                PathKit.getWebRootPath() + "/attached/video/" + fileNmae);
        uploadFile.getFile().renameTo(des);
        ClearTemp.clear();
        String path = PathKit.getWebRootPath() + "/attached/video/";
        String saveFilename = path + fileNmae;
        video.set("image", fileNmae);
        try
        {
            ImageUtil.resize(200, 112, saveFilename, path + "s_" + fileNmae);
        }
        catch (Exception e)
        {
            message = "图片裁剪异常";
            setAttr("message", message);
            renderJsp("/WEB-INF/content/common/result.jsp");
            return;
        }

        Users user = Constants.getLoginUser(getSession());
        video.set("user_id", Integer.parseInt(user.getNumber("id")+""));
        video.set("blevel", 0);
        video.set("bview", 0);
        video.set("btype", 0);
        video.set("create_time", new java.sql.Timestamp( new java.util.Date().getTime()));
        video.save();
        message = "保存成功";
        setAttr("message", message);
        redirectionUrl = getSession().getServletContext().getContextPath()
                + "/video/";
        setAttr("redirectionUrl", redirectionUrl);
        renderJsp("/WEB-INF/content/common/result.jsp");
    }

    public void detail()
    {
        int id = getParaToInt();
        Video video = Video.me.findById(id);
        video.set("bview", Integer.parseInt(video.getNumber("bview")+"") + 1);
        video.update();
        Users bozhu = Users.me.findById(Integer.parseInt(video.getNumber("user_id")+""));
        String avatar = bozhu.getStr("avatar");
        if (empty(avatar))
        {
            avatar = "default.jpg";
        }
        else
        {
            File f = new File(
                    PathKit.getWebRootPath() + "/attached/avatar/" + avatar);
            if (!f.exists())
            {
                avatar = "default.jpg";
            }
        }
        bozhu.set("avatar", avatar);
        setAttr("bozhu", bozhu);
        setAttr("video", video);
        render("detail.jsp");
    }

    @Before(LoginInterceptor.class)
    public void myVideo()
    {
        Page<Video> videolist = null;
        Users u = Constants.getLoginUser(getSession());
        videolist = Video.me.paginateMyVideo(getParaToInt("page", 1), 20,
               Integer.parseInt(u.getNumber("id")+""));
        setAttr("ranktype", "default");
        List<Video> beautys = videolist.getList();
        List<Map> results = new ArrayList<Map>();
        for (Video v : beautys)
        {
            Map every = new HashMap();
            every.put("id", v.getNumber("id"));
            every.put("user_id", v.getNumber("user_id"));
            every.put("title", v.getStr("title"));
            every.put("keyword", v.getStr("keyword"));
            every.put("pre", v.getStr("pre"));
            every.put("view", v.getNumber("view"));
            every.put("image", v.getStr("image"));
            every.put("create_time", v.getDate("create_time"));
            String content_show = "";
            if (!empty(v.getStr("content")))
            {
                content_show = HtmlUtil.getNoHTMLString(
                        HtmlUtil.Decode(v.getStr("content")), 150);
            }
            every.put("content", content_show);
            results.add(every);
        }
        setAttr("videoPage",
                new Page(results, videolist.getPageNumber(),
                        videolist.getPageSize(), videolist.getTotalPage(),
                        videolist.getTotalRow()));
        render("myVideo.jsp");
    }

    @Before(LoginInterceptor.class)
    public void edit()
    {
        int id = getParaToInt();
        if (empty(id))
        {
            message = "参数错误";
            setAttr("message", message);
            renderJsp("/WEB-INF/content/common/result.jsp");
            return;
        }
        Video video = Video.me.findById(id);
        if (empty(video))
        {
            message = "该视频不存在";
            setAttr("message", message);
            renderJsp("/WEB-INF/content/common/result.jsp");
            return;
        }
        Users loginUser = Constants.getLoginUser(getSession());
        Integer userid=Integer.parseInt(video.getNumber("user_id")+"");
        Integer loginuserid=Integer.parseInt(loginUser.getNumber("id")+"");
        if (userid.intValue() != loginuserid
                .intValue())
        {
            message = "您执行了非法操作！";
            setAttr("message", message);
            renderJsp("/WEB-INF/content/common/result.jsp");
            return;
        }
        setAttr("video", video);
        render("edit.jsp");
    }

    @Before(LoginInterceptor.class)
    public void delete()
    {
        int id = getParaToInt();
        if (empty(id))
        {
            message = "参数错误";
            setAttr("message", message);
            renderJsp("/WEB-INF/content/common/result.jsp");
            return;
        }
        Video video = Video.me.findById(id);
        if (empty(video))
        {
            message = "该视频不存在";
            setAttr("message", message);
            renderJsp("/WEB-INF/content/common/result.jsp");
            return;
        }
        Users loginUser = Constants.getLoginUser(getSession());
        if (video.getNumber("user_id").intValue() != loginUser.getNumber("id")
                .intValue())
        {
            message = "您执行了非法操作！";
            setAttr("message", message);
            renderJsp("/WEB-INF/content/common/result.jsp");
            return;
        }
        video.delete();
        message = "删除成功！";
        setAttr("message", message);
        redirectionUrl = getSession().getServletContext().getContextPath()
                + "/video/myVideo/";
        setAttr("redirectionUrl", redirectionUrl);
        renderJsp("/WEB-INF/content/common/result.jsp");
    }

    public void update()
    {
        UploadFile uploadFile = getFile("upload");
        Video video = getModel(Video.class);
        if (empty(video.getNumber("id")))
        {
            message = "参数错误";
            setAttr("message", message);
            renderJsp("/WEB-INF/content/common/result.jsp");
            return;
        }

        Video old = Video.me.findById(Integer.parseInt(video.getNumber("id")+""));
        if (empty(video.getStr("title")))
        {
            message = "标题不能为空";
            setAttr("message", message);
            renderJsp("/WEB-INF/content/common/result.jsp");
            return;
        }
        if (empty(video.getStr("pre")))
        {
            message = "视频代码不能为空";
            setAttr("message", message);
            renderJsp("/WEB-INF/content/common/result.jsp");
            return;
        }
        Users user = Constants.getLoginUser(getSession());
        if (user.getNumber("id").intValue() != old.getNumber("user_id").intValue())
        {
            message = "非法操作！";
            setAttr("message", message);
            renderJsp("/WEB-INF/content/common/result.jsp");
            return;
        }
        if (!empty(uploadFile))
        {
            String[] suffixarr = uploadFile.getFileName().split("\\.");
            String suffix = suffixarr[suffixarr.length - 1];
            String fileNmae = UUID() + "." + suffix;
            File des = new File(
                    PathKit.getWebRootPath() + "/attached/video/" + fileNmae);
            uploadFile.getFile().renameTo(des);
            ClearTemp.clear();
            String path = PathKit.getWebRootPath() + "/attached/video/";
            String saveFilename = path + fileNmae;
            old.set("image", fileNmae);
            try
            {
                ImageUtil.resize(200, 112, saveFilename,
                        path + "s_" + fileNmae);
            }
            catch (Exception e)
            {
                message = "图片裁剪异常";
                setAttr("message", message);
                renderJsp("/WEB-INF/content/common/result.jsp");
                return;
            }
        }

        old.set("title", video.getStr("title"));
        old.set("keyword", video.getStr("keyword"));
        old.set("pre", video.getStr("pre"));
        old.set("content", video.getStr("content"));
        old.update();
        message = "更新成功";
        setAttr("message", message);
        redirectionUrl = getSession().getServletContext().getContextPath()
                + "/video/myVideo/";
        setAttr("redirectionUrl", redirectionUrl);
        renderJsp("/WEB-INF/content/common/result.jsp");
    }
}
