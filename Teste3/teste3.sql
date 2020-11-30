
create table if not exists tb_curso (
  cd_curso int(20) not null auto_increment,
  nm_curso varchar(100) not null,
  
  primary key (cd_curso)
);

create table if not exists tb_aluno(
    cd_aluno int(20) not null auto_increment,
    nm_aluno varchar(100) not null, 
    cd_cpf varchar(100) not null,
    cd_curso int (20) not null,
    cd_turma int(20) not null,
     
    primary key (cd_aluno)
);

create table if not exists tb_turma(
    cd_turma int(20) not null auto_increment,
    nm_turma varchar(100) not null,
    cd_curso int(20) not null, 
  
    primary key (cd_turma)
);

alter table tb_aluno
add foreign key (cd_curso) references tb_curso(cd_curso),
add foreign key (cd_turma) references tb_turma(cd_turma);




insert into tb_turma(nm_turma, cd_curso) values('105F1', 1);
insert into tb_turma(nm_turma, cd_curso) values('105F2', 2);
insert into tb_turma(nm_turma, cd_curso) values('105F3', 3);
insert into tb_turma(nm_turma, cd_curso) values('105F4', 4);

insert into tb_curso (nm_curso) values('hardware');
insert into tb_curso (nm_curso) values('redes');
insert into tb_curso (nm_curso) values('algoritmo');
insert into tb_curso (nm_curso) values('fundamentos básico da linguagem R');

insert into tb_aluno (nm_aluno, cd_cpf, cd_curso, cd_turma) values('Gabriel Santos', 70599487089, 1, 1);
insert into tb_aluno (nm_aluno, cd_cpf, cd_curso, cd_turma) values('Vitor Machado', 30756121035, 2, 2);
insert into tb_aluno (nm_aluno, cd_cpf, cd_curso, cd_turma) values('Vinicius Oliveira', 13120316032, 3, 3);
insert into tb_aluno (nm_aluno, cd_cpf, cd_curso, cd_turma) values('Andrei Silva', 37896952033, 4, 4);
insert into tb_aluno (nm_aluno, cd_cpf, cd_curso, cd_turma) values('Carla Andrade', 95974501004, 4, 4);



#A)
select nm_curso from tb_curso;

#B)
select nm_curso from tb_curso where nm_curso like 'a%';

#C)
select nm_curso from tb_curso where nm_curso like '%r';

#D)
select a.nm_aluno, c.nm_curso from tb_aluno as a 
inner join tb_curso as c on c.cd_curso = a.cd_curso
where c.nm_curso like 'a%';

#E)
select t.cd_turma, count(*)'quantidade'
from tb_turma as t, tb_aluno as a
where t.cd_turma = a.cd_turma
group by t.nm_turma;
 
 