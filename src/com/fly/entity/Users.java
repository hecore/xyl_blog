
package com.fly.entity;

import java.util.List;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.Page;

@SuppressWarnings("serial")
public class Users extends Model<Users>
{
    public static final Users me = new Users();
    /**
     * 所有 sql 与业务逻辑写在 Model 或 Service 中，不要写在 Controller 中，养成好习惯，有利于大型项目的开发与维护
     */
    //分页
    public Page<Users> paginate(int pageNumber, int pageSize)
    {
        return paginate(pageNumber, pageSize, "select *",
                "from users order by id asc");
    }
    
    public List<Users> findByUsername(String username)
    {
        return Users.me.find("select * from users where username = ?", username);
    }

    // admin包下的
    public Page<Users> adminPaginatListUsers(int pageNumber, int pageSize,
            String sql)
    {
        return paginate(pageNumber, pageSize, "select * ",
                "from users  where deleted=0 " + sql + " order by create_time");
    }

    public Page<Users> adminListDeletedUses(int pageNumber, int pageSize,
            String sql)
    {
        return paginate(pageNumber, pageSize, "select *",
                "from users where deleted=1 " + sql + " order by create_time");
    }

	public List<Users> indexCache() {
		// TODO Auto-generated method stub
		return find("select address,count(address) as vulcount from users where address is not null group by address");
	}
	//

	public Page<Users> friendsPaginatListFirends(int pageNumber, int pageSize,
            String sql) {
		System.out.println("开始了");
		// TODO Auto-generated method stub
		String str= "select * from users where " + sql + " order by create_time";
		System.out.println( str);
		
		   return paginate(pageNumber, pageSize, "select *",
	                "from users where deleted=0 " + sql + " order by id asc");
	    }
}
