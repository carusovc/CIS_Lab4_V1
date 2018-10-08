//Created by: Megan Hovis and Christian Caruso
//Date: 10-16-18
//Assignment: Lab 4 CIS 484
//We pledge to the JMU honor code that all work is our own.

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Department
{
    private int departmentID;
    private String name;
    private String groupName;
    private DateTime modifiedDate;

    public Department()
    {

    }

    public Department(int departmentID, String name, String groupName, DateTime modifiedDate)
    {
        SetDepartmentID(departmentID);
        SetName(name);
        SetGroupName(groupName);
        SetModifiedDate(modifiedDate);
    }

    //Setters
    public void SetDepartmentID(int departmentID)
    {
        this.departmentID = departmentID;
    }

    public void SetName(String name)
    {
        this.name = name;
    }

    public void SetGroupName(String groupName)
    {
        this.groupName = groupName;
    }

    public void SetModifiedDate (DateTime modifiedDate)
    {
        this.modifiedDate = modifiedDate;
    }

}