
package com.fly.interceptor;

import javax.servlet.http.HttpSession;

import com.fly.common.Constants;
import com.fly.entity.Role;
import com.fly.entity.Users;
import com.fly.entity.Userrole;
import com.fly.util.Utility;
import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;
import com.jfinal.core.Controller;

public class AdminInterceptor implements Interceptor
{

    @Override
    public void intercept(Invocation inv)
    {
        HttpSession session = inv.getController().getSession();
        Users u = Constants.getLoginUser(session);
        //改造成为oracle识别的类型
        Userrole ur = Userrole.me.findByUserId(Integer.parseInt((u.getNumber("id")+"")));
        Controller controller = inv.getController();
        if (Utility.empty(ur))
        {
            String message = "您没有该项的访问权限！";
            controller.setAttr("message", message);
            controller.renderJsp("/WEB-INF/content/common/result.jsp");
        }
        else
        {
            Role r = Role.me.findById(Integer.parseInt(ur.getNumber("role_id")+""));
            if (Utility.empty(r)
                    || (!"administrator".equals(r.getStr("role_name"))))
            {
                String message = "您没有该项的访问权限！";
                controller.setAttr("message", message);
                controller.renderJsp("/WEB-INF/content/common/result.jsp");
            }
            else
            {
                inv.invoke();
            }
        }
    }
}
