package com.liaokuo.springmvc.service.impl;

import com.liaokuo.springmvc.dao.DeptMapper;
import com.liaokuo.springmvc.pojo.Dept;
import com.liaokuo.springmvc.service.DeptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Rain on 2020/8/23.
 */
@Service
public class DeptServiceImpl implements DeptService {
    @Autowired
    private DeptMapper deptMapper;

    @Override
    public List<Dept> getAll() {
        return deptMapper.getAll();
    }

    @Override
    public Dept selectByDeptno(int deptno) {
        return deptMapper.selectByDeptno(deptno);
    }

    @Override
    public int delete(int deptno) {
        return deptMapper.delete(deptno);
    }

    @Override
    public int update(Dept dept) {
        return deptMapper.update(dept);
    }

    @Override
    public int add(Dept dept) {
        return deptMapper.add(dept);
    }
}
