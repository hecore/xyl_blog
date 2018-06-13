
package com.fly.entity;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.Page;

public class Userrole extends Model<Userrole>
{
    /**
     * 
     */
    private static final long serialVersionUID = -3724933206673873541L;

    public static final Userrole me = new Userrole();

    public Users getUser()
    {
        return Users.me.findById(Integer.parseInt(getNumber("user_id")+""));
    }

    public Role getRole()
    {
        return Role.me.findById(Integer.parseInt(getNumber("role_id")+""));
    }

    public Userrole findByUserId(int number)
    {
        return me.findFirst("select * from userrole  where user_id=?", number);
    }

    public Page<Userrole> findByRoleId(int pageNumber, int pageSize,
            int role_id)
    {
        return paginate(pageNumber, pageSize, "select *",
                "from userrole where role_id=?", role_id);
    }

}
