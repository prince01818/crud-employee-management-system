/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package crud.dao;

import crud.entity.Employees;
import java.util.List;

/**
 *
 * @author HP
 */
public interface EmployeeDAO {
    public void save(Employees employee);
    public List<Employees> displayAll();
    public Employees getAllEmployee(int id);
    public void edit(Employees employee);
    public void remove(Employees employee);
    public boolean checkAdmin(String fname,String lname);
    
  public List<Employees> displayIndividual(String fname,String lname);
}
