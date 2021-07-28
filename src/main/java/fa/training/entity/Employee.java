package fa.training.entity;

import fa.training.utils.DateUtils;

import java.sql.Date;

public class Employee {
    private int id;
    private String name;
    private String phone;
    private Date dob;
    private String address;
    private boolean sex;
    private int departmentId;
    private String email;
    private String account;

    public Employee(int id, String name, String phone, Date dob, String address, boolean sex, int departmentId, String email, String account) {
        this.id = id;
        this.name = name;
        this.phone = phone;
        this.dob = dob;
        this.address = address;
        this.sex = sex;
        this.departmentId = departmentId;
        this.email = email;
        this.account = account;
    }

    public Employee(String name, String phone, Date dob, String address, boolean sex, int departmentId, String email, String account) {
        this.name = name;
        this.phone = phone;
        this.dob = dob;
        this.address = address;
        this.sex = sex;
        this.departmentId = departmentId;
        this.email = email;
        this.account = account;
    }

    public Employee(int id, String name, String phone, Date dob, String address, int departmentId) {
        this.id = id;
        this.name = name;
        this.phone = phone;
        this.dob = dob;
        this.address = address;
        this.departmentId = departmentId;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getPhone() {
        return phone;
    }

    public Date getDob() {
        return dob;
    }

    public String getDobF() {
        return DateUtils.formatDate(dob);
    }

    public String getAddress() {
        return address;
    }

    public boolean getSex() {
        return sex;
    }

    public int getDepartmentId() {
        return departmentId;
    }

    public String getEmail() {
        return email;
    }

    public String getAccount() {
        return account;
    }
}
