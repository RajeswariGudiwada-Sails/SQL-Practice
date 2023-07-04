SELECT TOP (1000) [Id]
      ,[Name]
      ,[Salary]
      ,[Gender]
      ,[City]
  FROM [joins].[dbo].[Indexes]


  insert into Indexes Values(1, 'Sam',2500,'Male', 'London')
   insert into Indexes Values(4, 'Sara',5500,'Female', 'Tokyo')
    insert into Indexes Values(5, 'Todd',3100,'Male', 'Toranto')
	 insert into Indexes Values(2, 'Pam',6500,'Female', 'Sydney')

	 Create Clustered Index Employee_Gender_Salary
	 ON Indexes (Gender Desc, Salary Asc)
	 
	 Create NONClustered Index Employee_Name
	 ON Indexes (Name Asc)

	 select * from [dbo].[Indexes] where  Indexes.Name='