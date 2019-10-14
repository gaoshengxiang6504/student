package com.dao;

import java.util.List;

import com.po.Student;

public interface StudentDao {
      //通过id或name查询学生信息
	public List<Student> findStudentByName(Student student);
	public int addStudent(Student student);
	public int updateStudent(Student student);
	public Student findStudentById(Integer id);
	public int deleteStudent(Student student);
}
