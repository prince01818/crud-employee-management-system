/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package crud.controller;

import crud.entity.Employees;
import crud.service.EmployeeService;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class EmployeeController {

    @Autowired
    private EmployeeService employeeService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String ViewALl() {
        return "ViewALl";

    }

    @RequestMapping(value = "/adminlogin.htm", method = RequestMethod.GET)
    public String showlogin() {
        return "login";

    }

    @RequestMapping(value = "/userLogin.htm", method = RequestMethod.GET)
    public String userLogin() {
        return "userLogin";

    }

    @RequestMapping(value = "/registration.htm", method = RequestMethod.GET)
    public String loadRegistryForm() {

        return "registration";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String saveEmployee(@Valid @ModelAttribute(value = "employeeList") Employees employee, BindingResult result) {
        if (result.hasErrors()) {
            return "registration";
        }
        employeeService.saveEmployeeService(employee);
        return "userLogin";
    }

    @RequestMapping(value = "/list.htm", method = RequestMethod.GET)
    public String displayEmployee(Model m) {
        m.addAttribute("list", employeeService.displayEmployeeService());
        return "index";
    }

    @RequestMapping(value = "/update", method = RequestMethod.GET)
    public String editEmployee(@RequestParam(value = "id") int id, Model m) {
        Employees employee = employeeService.getAllEmployeeService(id);
        m.addAttribute("list", employee);
        m.addAttribute("id", id);
        return "update";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String updateEmployee(@ModelAttribute(value = "employeeList") Employees employee, BindingResult result) {
        if (result.hasErrors()) {
            return "update";
        }
        employeeService.updateEmployeeService(employee);
        return "redirect:list.htm";
    }

    @RequestMapping(value = "/remove", method = RequestMethod.GET)
    public String removeEmployee(@RequestParam(value = "id") int id) {
        Employees employee = employeeService.getAllEmployeeService(id);
        employeeService.deleteEmployeeService(employee);
        return "redirect:list.htm";
    }

    @RequestMapping(value = "/check", method = RequestMethod.POST)
    public String AdminCheck(Model map, @RequestParam("firstName") String firstName, @RequestParam("lastName") String lastName, Employees employee) {

        boolean userExist = employeeService.checkAdmin(firstName, lastName);
        if (userExist) {

            return "redirect:list.htm";
        }

        return "registration";
    }

    @RequestMapping(value = "/checkUser", method = RequestMethod.POST)
    public String UserCheck(Model map, @RequestParam("firstName") String firstName, @RequestParam("lastName") String lastName, Employees employee) {

        boolean userExist = employeeService.checkAdmin(firstName, lastName);
        if (userExist) {

          //employeeService.displayIndividual(firstName, lastName);
          map.addAttribute("list", employeeService.displayIndividual(firstName, lastName) );
            
          return "individualinfo";
          
        }

        return "registration";
    }

}
