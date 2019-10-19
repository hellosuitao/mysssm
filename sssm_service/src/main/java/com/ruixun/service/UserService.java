package com.ruixun.service;

import com.ruixun.entity.UserInfo;
import org.springframework.security.core.userdetails.UserDetailsService;

import java.util.List;

public interface UserService extends UserDetailsService {

    public List<UserInfo> findAll() throws Exception;
}
