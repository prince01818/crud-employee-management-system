/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package crud.service;


import crud.dao.EmployeeDAO;
import crud.entity.Employees;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("employeeService") 
public class EmployeeServiceImpl implements EmployeeService {

    @Autowired
    private EmployeeDAO employeeDao;
            
    
    @Override
    public void saveEmployeeService(Employees employee) {
        employeeDao.save(employee);
    }

    @Override
    public List<Employees> displayEmployeeService() {
       return employeeDao.displayAll();
    }

    @Override
    public Employees getAllEmployeeService(int id) {
       return employeeDao.getAllEmployee(id);
    }

    @Override
    public void updateEmployeeService(Employees employee) {
       employeeDao.edit(employee);
    }

    @Override
    public void deleteEmployeeService(Employees employee) {
       employeeDao.remove(employee);
    }

    @Override
    public boolean checkAdmin(String fname, String lname) {
       
        return employeeDao.checkAdmin(fname, lname);
    }

    @Override
    public List<Employees> displayIndividual(String fname,String lname) {
       
        return employeeDao.displayIndividual(fname,lname);
    }
    
}
