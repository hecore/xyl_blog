package com.fly.controller.friends;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.fly.common.Constants;
import com.fly.controller.BaseController;
import com.fly.entity.Blog;
import com.fly.entity.Users;
import com.fly.entity.Video;
import com.fly.util.Utility;
import com.jfinal.core.Controller;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.Record;

public class FriendsController extends BaseController{
    public void index()
    {
     Page<Users> friendsList = null;
     String tsql="";
   	 friendsList=Users.me.friendsPaginatListFirends(getParaToInt("page", 1), 10, tsql);

     List<Users> friends =friendsList.getList();
     List<Map> results = new ArrayList<Map>();
     for (Users f : friends)
     {
         Map every = new HashMap();
         every.put("id", f.getNumber("id"));
         every.put("username", f.getStr("username"));
         every.put("realname", f.getStr("realname"));
         every.put("type",f.getNumber("type"));
         every.put("sex",f.getNumber("sex"));
         results.add(every);
     }
        setAttr("friendsPage",
                new Page(results, friendsList.getPageNumber(),
               		 friendsList.getPageSize(), friendsList.getTotalPage(),
               		 friendsList.getTotalRow()));
    	//分页逻辑
    	render("friends.jsp");
    }
    public void add(){
        Page<Users> friendsList = null;
        String tsql="";
        if (null==(getPara("friends_search"))||"".equals((getPara("friends_search")))){
        	tsql="";
        	setAttr("result",false);
        }else{
            Matcher matcher = Pattern.compile("^[0-9]{3,15}$")
                    .matcher(getPara("friends_search"));
            if (matcher.find())
            {
           // 	sql="select * from users where qq="+getPara("friends_serach");
            	tsql="and qq="+getPara("friends_search")+"";
            }else if(getPara("friends_search").equals("男")){
            	tsql="and sex=0";
            }else if(getPara("friends_search").equals("女")){
            	tsql="and sex=1";
            }     
            else{
           // 	sql="select * from users where username='"+getPara("friends_serach")+"'or realname='"+getPara("friends_serach")+"'";
                tsql="and username='"+getPara("friends_search")+"'or realname='"+getPara("friends_search")+"' or address='"+getPara("friends_search")+"'";
            }
            Matcher matchermail = Pattern.compile("^[\\w-]+(\\.[\\w-]+)*@[\\w-]+(\\.[\\w-]+)+$")
                    .matcher(getPara("friends_search"));
            if (matchermail.find())
            {
            	//	sql="select * from users where mail="+getPara("friends_serach");
            	tsql=" and mail='"+getPara("friends_search")+"'";
            }      
            Matcher mobilematcher = Pattern.compile("^[1][358][0-9]{9}$")
                    .matcher(getPara("friends_search"));
            if (mobilematcher.find())
            {
            	//	sql="select * from users where mobile="+getPara("friends_serach");
            	tsql="and mobile="+getPara("friends_search")+"";
            }   	
        	//List friendsList=Db.find(sql);     
 
        	System.out.println("--------------------------"+tsql);
        //	tsql="";       	
            friendsList=Users.me.friendsPaginatListFirends(getParaToInt("page", 1), 10, tsql);
            List<Users> friends =friendsList.getList();
            List<Map> results = new ArrayList<Map>();
            for (Users f : friends)
            {
                Map every = new HashMap();
                every.put("id", f.getNumber("id"));
                every.put("username", f.getStr("username"));
                every.put("realname", f.getStr("realname"));
                every.put("type",f.getNumber("type"));
                results.add(every);
            }
            System.out.println("答复===="+friends.size());
            if(friends.size()>=1){
                setAttr("result",true);
                setAttr("friendsPage",
                        new Page(results, friendsList.getPageNumber(),
                       		 friendsList.getPageSize(), friendsList.getTotalPage(),
                       		 friendsList.getTotalRow()));
            }
        }
    	render("add.jsp");
    }
    public void manager(){
     	Users u = Constants.getLoginUser(getSession());//从session中拿到用户
     	String uid=u.get("id")+"";
     	List<Record> ul=Db.find("select fsid from friends where usid="+uid);
     	System.out.println(ul.size());
     	String str="";
     	//ul.get(1).get("fsid");
     	StringBuffer sb=new StringBuffer();
     	for(int i = 0 ; i < ul.size() ; i++) {
     		  sb.append(ul.get(i).get("fsid")+",");
     	}
     	str=sb.toString();
     	if (str.length()>1) {
			str=str.substring(0, str.length()-1);
		}
     	System.out.println(str);
        Page<Users> friendsList = null;
        String tsql="";
        tsql="and id in ("+str+ ")";
      	 friendsList=Users.me.friendsPaginatListFirends(getParaToInt("page", 1), 10, tsql);

        List<Users> friends =friendsList.getList();
        List<Map> results = new ArrayList<Map>();
        for (Users f : friends)
        {
            Map every = new HashMap();
            every.put("id", f.getNumber("id"));
            every.put("username", f.getStr("username"));
            every.put("realname", f.getStr("realname"));
            every.put("type",f.getNumber("type"));
            results.add(every);
        }
           setAttr("friendsPage",
                   new Page(results, friendsList.getPageNumber(),
                  		 friendsList.getPageSize(), friendsList.getTotalPage(),
                  		 friendsList.getTotalRow()));
       	//分页逻辑
    	render("manager.jsp");
    }
    public void detail(){
       	//分页逻辑
        setAttr("friendsPage",getPara("data"));
    	render("detail.jsp");
    }
    public void confirmadd(){
    	 String fid=getPara("fid")+"";//拿到好友id
    	 try {
        	 Users u = Constants.getLoginUser(getSession());//从session中拿到用户
        	 String uid=u.get("id")+"";
        	 Record r=new Record();
        	 r.set("usid", uid);
        	 r.set("fsid", fid);
        	 List lcon=Db.find("select * from friends where usid= "+uid+" and fsid="+fid );
        	 if (lcon.size()==0) {
        		 Db.save("friends", r);
        		 setAttr("addresult",true);
			 }else{
				 setAttr("addresult",false);
			 }    	 
		} catch (Exception e) {
			 setAttr("addresult",false);
		}
    	 renderJson();
    }
    public void deletefriends(){
    	 String fid=getPara("fid")+"";//拿到好友id
    	 Users u = Constants.getLoginUser(getSession());//从session中拿到用户
    	 try {
        	 String uid=u.get("id")+"";
        	 System.out.println(uid);
    	 	 Record r=new Record();
        	 r.set("usid", uid);
        	 r.set("fsid", fid);
        	 List<Record> l=Db.find("select id from friends where usid="+uid +" and fsid ="+fid);
        	 String id=l.get(0).get("id")+"";
        	 System.out.println(".......删除 "+id);
        	 r.set("id", id);
        	 Db.delete("friends",r);
        	 setAttr("delresult",true);
		} catch (Exception e) {
			setAttr("delresult",false);
		}
    	 renderJson();   	 
    }
    public void search(){
    	//将查询数据展示到页面上
    	//String sql="";
    	String tsql="";
    	//Users searchBlog = getModel(Users.class, "users");
    	System.out.println(getPara("friends_search"));
    	Page<Users> friendsList = null;
        Matcher matcher = Pattern.compile("^[0-9]{3,15}$")
                .matcher(getPara("friends_search"));
        if (matcher.find())
        {
       // 	sql="select * from users where qq="+getPara("friends_serach");
        	tsql="and qq="+getPara("friends_search")+"";
        }else {
       // 	sql="select * from users where username='"+getPara("friends_serach")+"'or realname='"+getPara("friends_serach")+"'";
            tsql="and username='"+getPara("friends_serach")+"'or realname='"+getPara("friends_search")+"'";
        }
        Matcher matchermail = Pattern.compile("^[\\w-]+(\\.[\\w-]+)*@[\\w-]+(\\.[\\w-]+)+$")
                .matcher(getPara("friends_search"));
        if (matchermail.find())
        {
        	//	sql="select * from users where mail="+getPara("friends_serach");
        	tsql=" and mail="+getPara("friends_search")+"";
        }      
        Matcher mobilematcher = Pattern.compile("^[1][358][0-9]{9}$")
                .matcher(getPara("friends_search"));
        if (mobilematcher.find())
        {
        	//	sql="select * from users where mobile="+getPara("friends_serach");
        	tsql="and mobile="+getPara("friends_search")+"";
        }   	
    	//List friendsList=Db.find(sql);

   
    	System.out.println(tsql);
    //	tsql="";
    	 friendsList=Users.me.friendsPaginatListFirends(getParaToInt("page", 1), 10, tsql);

         List<Users> friends =friendsList.getList();
         List<Map> results = new ArrayList<Map>();
         for (Users f : friends)
         {
             Map every = new HashMap();
             every.put("id", f.getNumber("id"));
             every.put("username", f.getStr("username"));
             every.put("realname", f.getStr("realname"));
             every.put("type",f.getNumber("type"));
             results.add(every);
         }
    //     setAttr("friendsList", friendsList);
         setAttr("friendsPage",
                 new Page(results, friendsList.getPageNumber(),
                		 friendsList.getPageSize(), friendsList.getTotalPage(),
                		 friendsList.getTotalRow()));
         renderJson();
    }

}