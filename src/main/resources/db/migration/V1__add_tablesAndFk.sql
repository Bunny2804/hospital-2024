create table appointments
(
    id           bigint not null,
    date_created datetime(6),
    description  varchar(255),
    name         varchar(255),
    primary key (id)
) engine=InnoDB;
create table diagnosis
(
    id          bigint not null auto_increment,
    description varchar(255),
    name        varchar(255),
    patient_id  bigint,
    primary key (id)
) engine=InnoDB;
create table diagnosis_madicines
(
    diagnosis_set_id bigint not null,
    madicines_id     bigint not null,
    primary key (diagnosis_set_id, madicines_id)
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
    id   bigint not null auto_increment,
    name varchar(255),
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
    id         bigint not null auto_increment,
    age        bigint,
    first_name varchar(255),
    last_name  varchar(255),
    doctor_id  bigint,
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
create table roles_rolesset
(
    roles_id    bigint not null,
    rolesset_id bigint not null,
    primary key (roles_id, rolesset_id)
) engine=InnoDB;
create table users
(
    id   bigint not null auto_increment,
    code varchar(255),
    name varchar(255),
    primary key (id)
) engine=InnoDB;
create table users_rolesset
(
    users_id    bigint not null,
    rolesset_id bigint not null,
    primary key (users_id, rolesset_id)
) engine=InnoDB;
alter table appointments
    add constraint FKd5icc9npth36r4g3ip9jdav1k foreign key (id) references diagnosis (id);
alter table diagnosis
    add constraint FKp8tgyroh9ehqikufxe905q0xs foreign key (patient_id) references patient (id);
alter table diagnosis_madicines
    add constraint FKlnbuqup31l4u120086piw33ug foreign key (madicines_id) references medicine (id);
alter table diagnosis_madicines
    add constraint FKih6rrbf94mdiemlv7t9mjr4jq foreign key (diagnosis_set_id) references diagnosis (id);
alter table diagnosis_has_appointment
    add constraint FK2qynke7ni7jktex5amsbxrsnv foreign key (appointments_id) references appointments (id);
alter table diagnosis_has_appointment
    add constraint FK98ggejjmcbcvp3wfwftmyq2c1 foreign key (diagnos_id) references diagnosis (id);
alter table diagnosis_has_appointment
    add constraint FKje0xykebxykyfmoolrpuv0yj3 foreign key (doctor_id) references doctor (users_id);
alter table diagnosis_has_appointment
    add constraint FKehorotbac6r5ik6yar534ol50 foreign key (patient_id) references patient (id);
alter table doctor
    add constraint FK8eym14s8chwj8fo9tsrhbjwb7 foreign key (users_id) references users (id);
alter table operations
    add constraint FKq8ji832uwgyb3fbttlvpnfa9q foreign key (diagnos_id) references diagnosis (id);
alter table patient
    add constraint FKmer5utvy1hiff7ovs6f4bjtnw foreign key (doctor_id) references doctor (users_id);
alter table procedures
    add constraint FK9pjb5ty8p2v8u3fdxmoiihd6q foreign key (diagnos_id) references diagnosis (id);
alter table roles_rolesset
    add constraint FKn107xwwyagbt2ngutxpmxdvgo foreign key (rolesset_id) references roles (id);
alter table roles_rolesset
    add constraint FKg8p0uqxw4qrcnwb32ynflgfy foreign key (roles_id) references roles (id);
alter table users_rolesset
    add constraint FKbae8tw2kg6p1ja9cges83x7ha foreign key (rolesset_id) references roles (id);
alter table users_rolesset
    add constraint FKt7213is417582bjg6e95g5w53 foreign key (users_id) references users (id);