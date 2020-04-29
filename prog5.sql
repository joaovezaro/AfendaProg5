create database agenda;
use agenda;
create table contato(
	id_contato int primary key auto_increment,
    fone int not null,
    email varchar(45) not null,
    nome varchar(45) not null
);
create table compromisso(
	id_compromisso int primary key auto_increment,
    olocal varchar(45) not null,
    descricao varchar(45) not null,
    Adata varchar(10) not null,
    hora varchar(10) not null,
    contato_id int,
    foreign key (contato_id) references contato(id),
	usuario_id int,
	foreign key (usuario_id) references usuario(id)
);
create table usuario(
id_user int primary key auto_increment,
login varchar(45) not null,
senha varchar(45) not null
);
    
      