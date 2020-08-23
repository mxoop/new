package com.liaokuo.springmvc.service;

import com.liaokuo.springmvc.pojo.Dept;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

/**
 * Created by Rain on 2020/8/23.
 */
public class DeptServiceTest {
    @Autowired
    private DeptService deptService;
    @Test
    public void getAll() {
        ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
        DeptService abc = (DeptService) ac.getBean("deptService");
        List<Dept> depts = deptService.getAll();
        System.out.println(depts);
    }
}