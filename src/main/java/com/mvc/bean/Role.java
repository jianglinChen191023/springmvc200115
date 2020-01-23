package com.mvc.bean;

import com.sun.xml.internal.ws.spi.db.DatabindingException;

import java.util.Date;

/**
 * @author jianglinchen
 * @description 描述
 * @date 2020/1/15 / 14:32
 */
public class Role {

    private String name;
    private Integer age;
    private Date date;

    public Role() {
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Role(String name, Integer age, Date date) {
        this.name = name;
        this.age = age;
        this.date = date;
    }

    public String getName() {
        return name;
    }

    @Override
    public String toString() {
        return "Role{" +
                "name='" + name + '\'' +
                ", age=" + age +
                ", date=" + date +
                '}';
    }
}
