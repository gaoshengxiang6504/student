package com.controller;

import java.lang.ProcessBuilder.Redirect;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.StudentDao;
import com.po.Student;
import com.service.StudentService;


@Controller
public class StudentController {
   @Autowired
   private StudentService studentService;
    @RequestMapping("/controller")
    public String findStudentByName(Student student,Model model){
    	List<Student> student2=studentService.findStudentByName(student);
    	model.addAttribute("student", student2);
    	return "student";	
    }
    @RequestMapping("/add")
    public String addStudent(){
    	return "add";
    }
    @RequestMapping("/addStudent")
    public String addStudent(Student student,Model model){
    	studentService.addStudent(student);
    	return "redirect:/controller";
    }
    @Autowired
    private StudentDao dao;
    @RequestMapping("/update")
    public String update(Student student,Model model){
    	Student student2=dao.findStudentById(student.getId());
    	model.addAttribute("student", student2);
		return "update";
    }
    @RequestMapping("/updateStudent")
    public String updateStudent(Student student){
    	studentService.updateStudent(student);
    	return "redirect:/controller";
    	
    }
    
    @RequestMapping("/delete")
    public String deleteStudent(Student student,Model model){
    	Student student2=dao.findStudentById(student.getId());
    	studentService.deleteStudent(student2);
		return "redirect:/controller";
    }
    
}
