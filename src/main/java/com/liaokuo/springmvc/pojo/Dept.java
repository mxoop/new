package com.liaokuo.springmvc.pojo;

import lombok.Data;

import java.io.Serializable;

/**
 * Created by Rain on 2020/8/23.
 */
@Data
public class Dept implements Serializable {
    private Integer deptno;

    private String dname;

    private String loc;
}
