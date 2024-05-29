create table `appoin tments`
(
    id           bigint not null auto_increment,
    date_created datetime(6),
    description  varchar(255),
    name         varchar(255),
    patient_id   bigint,
    primary key (id)
) engine=InnoDB;
create table diagnosis
(
    id          bigint not null auto_increment,
    description varchar(255),
    name        varchar(255),
    primary key (id)
) engine=InnoDB;
create table diagnosis_has_appointment
(
    id              bigint not null auto_increment,
    appointments_id bigint,
    diagnos_id      bigint,
    doctor_id       bigint,
    patient_id      bigint,
    primary key (id)
) engine=InnoDB;
create table doctor
(
    users_id   bigint not null,
    first_name varchar(255),
    last_name  varchar(255),
    password   varchar(255),
    phone      varchar(255),
    primary key (users_id)
) engine=InnoDB;
create table medicine
(
    id         bigint not null auto_increment,
    name       varchar(255),
    diagnos_id bigint,
    primary key (id)
) engine=InnoDB;
create table operations
(
    id           bigint not null auto_increment,
    date_created datetime(6),
    name         varchar(255),
    diagnos_id   bigint,
    primary key (id)
) engine=InnoDB;
create table patient
(
    id             bigint not null auto_increment,
    age            bigint,
    first_name     varchar(255),
    last_name      varchar(255),
    appointment_id bigint,
    doctor_id      bigint,
    primary key (id)
) engine=InnoDB;
create table procedures
(
    id         bigint not null auto_increment,
    name       varchar(255),
    diagnos_id bigint,
    primary key (id)
) engine=InnoDB;
create table roles
(
    id   bigint not null auto_increment,
    name varchar(255),
    primary key (id)
) engine=InnoDB;
create table users
(
    id   bigint not null auto_increment,
    code varchar(255),
    name varchar(255),
    primary key (id)
) engine=InnoDB;
alter table `appoin tments`
    add constraint FK70h4ausukv8r6ihn96blrl48x foreign key (patient_id) references patient (id);
alter table diagnosis_has_appointment
    add constraint FKi3in1syhfua7v94ivqoqte978 foreign key (appointments_id) references `appoin tments` (id);
alter table diagnosis_has_appointment
    add constraint FK98ggejjmcbcvp3wfwftmyq2c1 foreign key (diagnos_id) references diagnosis (id);
alter table diagnosis_has_appointment
    add constraint FKje0xykebxykyfmoolrpuv0yj3 foreign key (doctor_id) references doctor (users_id);
alter table diagnosis_has_appointment
    add constraint FKehorotbac6r5ik6yar534ol50 foreign key (patient_id) references patient (id);
alter table doctor
    add constraint FK8eym14s8chwj8fo9tsrhbjwb7 foreign key (users_id) references users (id);
alter table medicine
    add constraint FK5yphckxnd9fm1o1h0sgwmtwmx foreign key (diagnos_id) references diagnosis (id);
alter table operations
    add constraint FKq8ji832uwgyb3fbttlvpnfa9q foreign key (diagnos_id) references diagnosis (id);
alter table patient
    add constraint FKpkf33olvvmnhshaykhca3g2g foreign key (appointment_id) references `appoin tments` (id);
alter table patient
    add constraint FKmer5utvy1hiff7ovs6f4bjtnw foreign key (doctor_id) references doctor (users_id);
alter table procedures
    add constraint FK9pjb5ty8p2v8u3fdxmoiihd6q foreign key (diagnos_id) references diagnosis (id);