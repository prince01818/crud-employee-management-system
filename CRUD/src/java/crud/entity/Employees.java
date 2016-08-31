package crud.entity;
// Generated Feb 17, 2016 1:26:07 PM by Hibernate Tools 4.3.1


public class Employees  implements java.io.Serializable {


     private Integer id;
     private String firstName;
     private String lastName;
     private String fatherName;
     private String motherName;
     private String gender;
     private String qualification;
     private String institute;
     private String address;
     private String email;
     private String contact;

    public Employees() {
    }

    public Employees(String firstName, String lastName, String fatherName, String motherName, String gender, String qualification, String institute, String address, String email, String contact) {
       this.firstName = firstName;
       this.lastName = lastName;
       this.fatherName = fatherName;
       this.motherName = motherName;
       this.gender = gender;
       this.qualification = qualification;
       this.institute = institute;
       this.address = address;
       this.email = email;
       this.contact = contact;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    
    
    public String getFirstName() {
        return this.firstName;
    }
    
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }
    public String getLastName() {
        return this.lastName;
    }
    
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
    public String getFatherName() {
        return this.fatherName;
    }
    
    public void setFatherName(String fatherName) {
        this.fatherName = fatherName;
    }
    public String getMotherName() {
        return this.motherName;
    }
    
    public void setMotherName(String motherName) {
        this.motherName = motherName;
    }
    public String getGender() {
        return this.gender;
    }
    
    public void setGender(String gender) {
        this.gender = gender;
    }
    public String getQualification() {
        return this.qualification;
    }
    
    public void setQualification(String qualification) {
        this.qualification = qualification;
    }
    public String getInstitute() {
        return this.institute;
    }
    
    public void setInstitute(String institute) {
        this.institute = institute;
    }
    public String getAddress() {
        return this.address;
    }
    
    public void setAddress(String address) {
        this.address = address;
    }
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    public String getContact() {
        return this.contact;
    }
    
    public void setContact(String contact) {
        this.contact = contact;
    }




}


