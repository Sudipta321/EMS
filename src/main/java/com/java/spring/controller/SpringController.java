package com.java.spring.controller;

import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.java.spring.enm.EmployeeEnum;
import com.java.spring.model.Employee;
import com.java.spring.service.DataService;
import com.java.spring.service.EmployeeService;


@Controller
public class SpringController {
    @Autowired
	private EmployeeService employeeService;



     //adding common attribute
  		@ModelAttribute
  		public void addCommonObjects( Model model){
  			model.addAttribute("headerMessagesg","EMPLOYEE MANAGEMENT SYSTEM");

  		}

  		@ModelAttribute("employee")
  		public Employee construct(){
  			return new Employee();
  		}

  		/*@Value("${documents.root.path}")
        private String documentRootPath;*/

    /*@RequestMapping(value= "/", method = RequestMethod.GET)
	public String setupForm(Map<String, Object> map){
		Employee employee = new Employee();
		map.put("employee", employee);
		map.put("employeeList", employeeService.getAllEmployee());
		return "employee";
	}

	@RequestMapping(value="/employee.do", method=RequestMethod.POST)
	public String doActions(@ModelAttribute Employee employee, BindingResult result, @RequestParam String action, Map<String, Object> map){
		Employee employeeResult = new Employee();

		switch(EmployeeEnum.valueOf(action.toLowerCase())){
		case add:
			employeeService.add(employee);
			employeeResult = employee;
			break;
		case edit:
			employeeService.edit(employee);
			employeeResult = employee;
			break;
		case delete:
			employeeService.delete(employee.getEmpId());
			employeeResult = new Employee();
			break;
		case search:
			Employee searchedEmployee = employeeService.getEmployee(employee.getEmpId());
			employeeResult = searchedEmployee!=null ? searchedEmployee : new Employee();
			break;
		}

		map.put("employee", employeeResult);
		map.put("employeeList", employeeService.getAllEmployee());
		return "employee";
	}*/

  /*  @RequestMapping(value= "/", method = RequestMethod.GET)
	public String setupForm(Map<String, Object> map){
		Employee employee = new Employee();
		map.put("employee", employee);
		map.put("employeeList", employeeService.getAllEmployee());
		return "register";
	}
*/
        //Register Home page for Employee registration
  		@RequestMapping("/")
  		public String showRegister(){
  			//Properties prop = new Properties();
  			//model.addAttribute("options", dataService.getMyList());
  			return "register";
  		}

  	   //Register Details page for Employee Details
  		@RequestMapping(value="/register.do", method=RequestMethod.POST)
  		public String doRegister(@ModelAttribute("employee") Employee employee ,Model model){
  			employeeService.add(employee);
  			model.addAttribute("employeeList", employeeService.getAllEmployee());
  			return "register-details";
  		}


  		@RequestMapping(value="/edit_employee/{empId}" ,method = RequestMethod.GET)
  		public String getEdit(Model model ,@PathVariable("empId") int id,HttpServletRequest req){
  			Employee empEdit =employeeService.getEmployee(id);
  			String projectpath = "http://" + req.getServerName() + ":" + req.getServerPort() + req.getContextPath();
  			model.addAttribute("projectpath", projectpath);
  			model.addAttribute("employee", empEdit);
  			return "edit-details";
  		}
  		@RequestMapping(value="/edit_employee/register.do", method=RequestMethod.POST)
  		public String doEdit(@ModelAttribute("employee") Employee employee ,Model model){
  			employeeService.edit(employee);
  			model.addAttribute("employeeList", employeeService.getAllEmployee());
  			return "register-details";
  		}

  		@RequestMapping(value = "/delete_employee/{empId}", method = RequestMethod.GET)
  		public String getDelete(@PathVariable("empId") int id,Model model ,HttpServletRequest req){
            employeeService.delete(id);

  			model.addAttribute("employeeList", employeeService.getAllEmployee());
  			return "register-details";
  		}
}
