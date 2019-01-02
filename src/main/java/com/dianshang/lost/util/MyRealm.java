package com.dianshang.lost.util;

import com.dianshang.lost.model.Member;
import com.dianshang.lost.service.MemberService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationException;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.session.InvalidSessionException;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by xiuFeng on 2017/2/2.
 */

public class MyRealm extends AuthorizingRealm {
    // 设置realm的名称
    @Override
    public void setName(String name) {
        super.setName("myRealm");
    }

    @Autowired
    MemberService memberService;

    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        return null;
    }

    // 用于认证
    //realm的认证方法，从数据库查询用户信息
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        if (token == null) {
            throw new AuthorizationException("Principal 对象不能为空");
        }
        System.out.println("进入认证");
        UsernamePasswordToken usernamePasswordToken = (UsernamePasswordToken) token;
        Member member = memberService.doLogin(usernamePasswordToken.getUsername());
        if (member != null) {
            System.out.println("进入认证通过");
            Session session = getSession();
            session.setAttribute("userid", member.getId());
            session.setAttribute("username", member.getName());
            return new SimpleAuthenticationInfo(usernamePasswordToken.getUsername(), member.getPassword(), getName());
        }
        return null;
    }

    //清除缓存
    public void clearCached() {
        PrincipalCollection principals = SecurityUtils.getSubject().getPrincipals();
        super.clearCache(principals);
    }

    private Session getSession() {
        try {

            Subject subject = SecurityUtils.getSubject();
            Session session = subject.getSession(false);
            if (session == null) {
                session = subject.getSession();
            }
            if (session != null) {
                return session;
            }
        } catch (InvalidSessionException e) {

        }
        return null;
    }
}