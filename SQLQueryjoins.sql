Select *from Employee;

Select *from Project;

Select Employee.EmpID, Employee.EmpFname, Employee.EmpLname, Project.ProjectID, Project.ProjectName
From Employee
Inner Join Project ON Employee.EmpID=Project.EmpID;


Select Employee.EmpFname, Employee.EmpLname, Project.ProjectID, Project.ProjectName
From Employee
Left Join Project ON Employee.EmpID=Project.EmpID;

Select Employee.EmpFname, Employee.EmpLname, Project.ProjectID, Project.ProjectName
From Employee
Right Join Project ON Employee.EmpID=Project.EmpID;

Create proc fulljoinsp
as
begin
   with CTE as (
		Select Employee.EmpFname, Employee.EmpLname, Project.ProjectID, Project.ProjectName
		From Employee
		Full Join Project ON Employee.EmpID=Project.EmpID
	)
	select * from CTE;
end;
exec fulljoinsp;


Select *from Employee CROSS JOIN Project;