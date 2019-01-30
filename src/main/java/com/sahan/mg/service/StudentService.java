package com.sahan.mg.service;

import com.sahan.mg.model.Student;

import java.util.List;

/**
 * Created by sahan on 2019-01-29.
 */
public interface StudentService {

    List<Student> getAllStudents();

    Student getStudentById(Integer id);

    void saveOrUpdate(Student student);

    void deleteStudent(Integer id);
}
