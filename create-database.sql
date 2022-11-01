
create table mains (
    id serial primary key,
    name varchar(250) not null,
    path varchar(250) not null,
    title varchar(250) not null,
    icon varchar(250) not null
);

create table roles (
    id serial primary key,
    name varchar(50) not null
);

create table permissions (
    id serial primary key,
    rol_id bigint unsigned not null,
    main_id bigint unsigned not null,
    foreign key (rol_id) references roles(id),
    foreign key (main_id) references mains(id)
);

create table users (
    id serial primary key,
    username varchar(250) not null,
    password varchar(250) not null,
    name varchar(250) not null,
    rol_id bigint unsigned not null,
    foreign key (rol_id) references roles(id)
);

insert into mains (name, path, title, icon) values 
    ( "dashboard", "/full/home", "dashboard", "bi bi-grid"),
    ( "servicios", "/full/services", "servicios", "bi bi-layout-text-window-reverse"),
    ( "productos", "/full/product", "productos", "ri-list-settings-line"),
    ( "tecnicos", "/full/technicians", "tecnicos", "ri-user-follow-line"),
    ( "consolidados", "/full/consolidated", "consolidados", "bi bi-bar-chart"),
    ( "ordenes-trabajo", "/full/work-orders", "ordenes de trabajo", "bi bi-file-earmark-text"),
    ( "hoja-vida", "/full/cv", "hoja de vida", "bi bi-file-earmark-medical"),
    ( "users", "/full/users", "users", "bx bxs-user-detail"),
    ( "profile", "/full/profile", "Profile", "bx bxs-user"),
    ( "contact", "/full/contact", "Contact", "bx bx-help-circle");

insert into roles (name) values ("ADMIN"),("CLIENTE"),("TECNICO");

insert into permissions (rol_id,main_id) values
    (1,1),
    (1,2),
    (1,3),
    (1,4),
    (1,5),
    (1,6),
    (1,7),
    (1,8),
    (1,9),
    (1,10),
    (2,1),
    (2,2),
    (2,7),
    (2,9),
    (2,10),
    (3,1),
    (3,2),
    (3,3),
    (3,4),
    (3,6),
    (3,7),
    (3,9),
    (3,10);

insert into users (name,username, password, rol_id) values 
    ("Edwar Erazo", "edwarerazo", "sa..", 1),
    ("Carlos Torres", "carlostorres", "sa..", 3),
    ("Sara Erazo", "saraerazo", "sa..", 2);
