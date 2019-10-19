package com.ruixun.dao;

import com.ruixun.entity.Role;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface RoleDao {

    @Select("select * from role where id in(select roleid from users_role where userid=#{userId})")
    public List<Role> findRoleByUserId(String userId) throws Exception;
}
