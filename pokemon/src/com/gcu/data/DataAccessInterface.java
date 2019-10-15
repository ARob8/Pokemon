package com.gcu.data;

import java.sql.SQLException;

import java.util.List;

public interface DataAccessInterface <T>
{
    public List<T> findAll() throws SQLException;
    public T findById(int id) throws SQLException;
    public T findByProperties(String s1, String s2) throws SQLException;
    public boolean findByName(String name) throws SQLException;
    public boolean create(T t) throws SQLException;
    public boolean update(T t) throws SQLException;
    public boolean delete(int id) throws SQLException;
}
