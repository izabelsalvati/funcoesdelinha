CREATE TRIGGER 
ON

	 create database Recursos_Humanos;
	 go

	 create table funcionario
	 (codigofunc	int primary key not null,
	 nomefunc		varchar (30)	not null,
	 emailfunc		varchar (40)	not null,
	 telefonefunc	numeric (9)		not null);
	 
	 create table funcionariobackupinsert
	 (codigofunc	int primary key not null,
	 nomefunc		varchar (30)	not null,
	 emailfunc		varchar (40)	not null,
	 telefonefunc	numeric (9)		not null);

	 create table funcionariobackupdelete
	 (codigofunc	int primary key not null,
	 nomefunc		varchar (30)	not null,
	 emailfunc		varchar (40)	not null,
	 telefonefunc	numeric (9)		not null);

	 select * from funcionario
	 select * from funcionariobackupinsert
	 select * from funcionariobackupdelete



	 create trigger trg_insertfuncionario on funcionario
		after insert
		as begin
		insert into funcionariobackupinsert
		select * from inserted
		end
	 go

	 create trigger trg_deletefuncionario on funcionario
		after insert
		as begin
		insert into funcionariobackupinsert
		select * from inserted
		end
	 go

insert into funcionario (codigofunc, nomefunc, emailfunc, telefonefunc)
values	(5, 'Edson Dionisio', 'edson.dionisio@gmail.com', 997402801),
		(8, 'Maitê Silva', 'maitesilva@gmail.com', 997402801),
		(12,'Marilia Késsia', 'testekessia@gmail.com', 997402801);
	go

	select*from funcionario
	select*from funcionariobackupinsert
	select*from funcionariobackupdelete
	go

	delete from funcionario
	where codigofunc = 8;
	go


	


FOR
AFTER
INSTEAD OF
INSERT
UPDATE
DELETE
AS
