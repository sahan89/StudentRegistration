package com.sahan.mg.controller;

import com.sahan.mg.model.Student;
import com.sahan.mg.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by sahan on 2019-01-29.
 */
@Controller
@RequestMapping(value = "/student")
public class StudentController {

    private final StudentService studentService;

    @Autowired
    public StudentController(StudentService studentService) {
        this.studentService = studentService;
    }

    @RequestMapping(value = "/loadStudent", method = RequestMethod.GET)
    public ModelAndView loadStudentCreatePage() {
        ModelAndView modelAndView = new ModelAndView();
        Student student = new Student();
        modelAndView.addObject("studentForm", student);
        modelAndView.setViewName("createStudent");
        return modelAndView;
    }

    @RequestMapping(value = "/createStudent", method = RequestMethod.POST)
    public ModelAndView createStudent(@ModelAttribute("studentForm") Student student) {
        this.studentService.saveOrUpdate(student);
        return new ModelAndView("redirect:/student/getAllStudents");
    }


    @RequestMapping(value = "/getAllStudents", method = RequestMethod.GET)
    public ModelAndView getAllStudents() {
        ModelAndView model = new ModelAndView("viewStudent");
        List<Student> studentList = this.studentService.getAllStudents();
        model.addObject("studentList", studentList);
        return model;
    }

    @RequestMapping(value = "/updateStudent/{id}", method = RequestMethod.GET)
    public ModelAndView updateStudent(@PathVariable Integer id) {
        ModelAndView modelAndView = new ModelAndView();
        Student student = this.studentService.getStudentById(id);
        modelAndView.addObject("studentForm", student);
        modelAndView.setViewName("createStudent");
        return modelAndView;
    }

    @RequestMapping(value = "/deleteStudent/{id}", method = RequestMethod.GET)
    public ModelAndView deleteStudent(@PathVariable("id") Integer id) {
        this.studentService.deleteStudent(id);
        return new ModelAndView("redirect:/student/getAllStudents");
    }
}
