package com.mvc.bean;

import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * @author jianglinchen
 * @description 描述
 * @date 2020/1/15 / 14:30
 */
public class User {
    private String name;
    private Integer age;
    private Map<String, User> map;
    private List<User> list;
    private Role role;
    private Date date;

    public User() {
    }

    public User(String name, Integer age, Map<String, User> map, List<User> list, Role role, Date date) {
        this.name = name;
        this.age = age;
        this.map = map;
        this.list = list;
        this.role = role;
        this.date = date;
    }

    public String getName() {
        return name;
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

    public Map<String, User> getMap() {
        return map;
    }

    public void setMap(Map<String, User> map) {
        this.map = map;
    }

    public List<User> getList() {
        return list;
    }

    public void setList(List<User> list) {
        this.list = list;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "User{" +
                "name='" + name + '\'' +
                ", age=" + age +
                ", map=" + map +
                ", list=" + list +
                ", role=" + role +
                ", date=" + date +
                '}';
    }
}

