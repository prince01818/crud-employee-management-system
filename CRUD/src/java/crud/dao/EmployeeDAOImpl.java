/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package crud.dao;

import crud.entity.Employees;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;


@Repository("employeeDAO")
public class EmployeeDAOImpl implements EmployeeDAO {
    
    @Override
    public void save(Employees employee) {
        
        Session session=HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.save(employee);
        session.getTransaction().commit();
    } 

    @Override
    public List<Employees> displayAll() {
      
        Session session=HibernateUtil.getSessionFactory().openSession();
        List<Employees> list=null;
        String hql="from Employees";   //pojo class use hoase not database ar table karon database ar table 
        //ar name coto hater employees
        
        Query query=session.createQuery(hql);
        
        list=query.list();
            
        session.close();
        
        return list;
    }

    @Override
    public Employees getAllEmployee(int id) {
        
        Session session=HibernateUtil.getSessionFactory().openSession();
        Employees employee=new Employees();
        
        session.beginTransaction();
        employee=(Employees)session.get(Employees.class, id);
        session.getTransaction().commit();
        
        return employee;
    }

    @Override
    public void edit(Employees employee) {
        
        Session session=HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.update(employee);
        session.getTransaction().commit();
       
    }

    @Override
    public void remove(Employees employee) {
        
        Session session=HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.delete(employee);
        session.getTransaction().commit();
       
    }

    @Override
    public boolean checkAdmin(String fname, String lname) {
        Session session=HibernateUtil.getSessionFactory().openSession();
         session.beginTransaction();
        boolean userFound=false;
        String hql="FROM Employees  WHERE firstName=? and lastName  =?";
        Query query=session.createQuery(hql); 
       
        query.setParameter(0,fname);
        query.setParameter(1,lname);
        
        List list=query.list();
        if((list !=null)&&(list.size()>0)){
            userFound=true;
        }
        session.close();
        return userFound;
        
    }

    @Override
    public List<Employees> displayIndividual(String fname,String lname) {
       
        
        Session session=HibernateUtil.getSessionFactory().openSession();
        List<Employees> list=null;
        String hql="FROM Employees  WHERE firstName=? and lastName =?";
        Query query=session.createQuery(hql); 
        query.setParameter(0,fname);
        query.setParameter(1,lname);
       // String sql=Select * from Employees  WHERE firstName=fname and lastName=lname;
       
            
        list=query.list();
            
        session.close();
        
        return list;
        
      
    }
}
