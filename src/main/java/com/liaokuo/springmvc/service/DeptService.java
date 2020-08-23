package com.liaokuo.springmvc.service;

import com.liaokuo.springmvc.pojo.Dept;

import java.util.List;

/**
 * Created by Rain on 2020/8/23.
 */

public interface DeptService {
    public List<Dept> getAll();
    public Dept selectByDeptno(int deptno);
    public int delete(int deptno);
    public int update(Dept dept);
    public int add(Dept dept);
}
