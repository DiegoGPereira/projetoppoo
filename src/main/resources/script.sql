create table produtos (
     id serial primary key,
     descricao varchar(50),
     preco numeric(5,2)
);

create table usuarios (
id serial primary key,
email varchar(80),
senha varchar(50),
id_role integer
);

create table roles (
     id serial primary key,
     role varchar(8),
     descricao varchar(50)
);

insert into usuarios values (1, 'admin@admin.com', 'admin', 1);
insert into usuarios values (2, 'func@func.com', 'func', 2);

insert into roles (id,role,descricao)  values (1, 'admin', 'Admin');
insert into roles (id,role,descricao)  values (2, 'func', 'Funcionario');