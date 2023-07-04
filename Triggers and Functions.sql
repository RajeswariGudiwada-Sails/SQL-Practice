 Triggers:
	create trigger trigger_insert on Indexes
    after insert
    as
    begin
    PRINT 'YOU HAVE INSERTED A ROW'
    end

	insert into Indexes Values(7, 'Ram',7500,'male', 'Delhi')
	Select*from Indexes






	Functions:

	select sum(Salary) from Indexes;
	Select count(*) from Indexes where Gender ='Female';
	select min(Salary) from Indexes;
	select max(Salary) from Indexes;
	select avg(Salary) from Indexes;
	select * from Indexes order by Gender;
	select avg(salary),Gender from Indexes GROUP BY Gender;