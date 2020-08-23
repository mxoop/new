package com.liaokuo.springmvc.controller;

import com.liaokuo.springmvc.pojo.Dept;
import com.liaokuo.springmvc.service.DeptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Created by Rain on 2020/8/23.
 */
@Controller
public class DeptController {
    @Autowired
    private DeptService deptService;
    @RequestMapping("/dept")
    public String Dept(){
        return "test";
    }
    @RequestMapping("/dept/list")
    @ResponseBody
    public List<Dept> query(){
        List<Dept> depts = deptService.getAll();
        return depts;
    }

    @RequestMapping("/dept/get/{deptno}")
    @ResponseBody
    public Dept queryByDeptno(@PathVariable("deptno") Integer deptno){
        return deptService.selectByDeptno(deptno);
    }

    @PostMapping("/dept/delete")
    public String delete(@RequestBody Integer deptno){
        deptService.delete(deptno);
        return "test";
    }

    @PostMapping("/dept/update")
    public String update (@RequestBody Dept dept){
        deptService.update(dept);
        return "test";
    }

    @PostMapping("/dept/add")
    public String add (@RequestBody Dept dept){
        deptService.add(dept);
        return "test";
    }
}
