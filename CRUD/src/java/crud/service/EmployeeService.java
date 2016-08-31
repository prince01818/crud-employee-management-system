/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package crud.service;

import crud.entity.Employees;
import java.util.List;

/**
 *
 * @author HP
 */
public interface EmployeeService {
    
    public void saveEmployeeService(Employees employee);
    
    public List<Employees> displayEmployeeService();
   
    public Employees getAllEmployeeService(int id);
    
    public void updateEmployeeService(Employees employee);
   
    public void deleteEmployeeService(Employees employee);
    
    public boolean checkAdmin(String fname,String lname);
    
    
    public List<Employees> displayIndividual(String fname,String lname);
    
}
