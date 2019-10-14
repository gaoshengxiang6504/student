package com.service;

import java.util.List;

import com.po.Student;

public interface StudentService {
   public List<Student> findStudentByName(Student student);
   public int addStudent(Student student);
   public int updateStudent(Student student);
   public int deleteStudent(Student student);
}
