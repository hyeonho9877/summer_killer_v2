create table if not exists user
(
    username     varchar(10) not null,
    password     varchar(20) not null,
    address      varchar(50) not null,
    phone_number varchar(13) not null,
    gender       set ('M','F'),
    mileage      int default 0,
    name         varchar(30),
    primary key (username)
) default charset = utf8;

create table if not exists product
(
    pid         int          not null auto_increment,
    name        varchar(50)  not null,
    price       int          not null,
    stock       int          not null,
    sales       int          not null,
    filepath    varchar(20)  not null,
    description varchar(100) not null,
    detailImage int          not null,
    primary key (pid)
) default charset = utf8;

create table if not exists review
(
    rid     int         not null auto_increment,
    writer  varchar(30) not null,
    product int         not null,
    title   varchar(20) not null,
    text    varchar(100) not null,
    primary key (rid),
    foreign key (writer) references user (username),
    foreign key (product) references product (pid)
) default charset = utf8;

create table if not exists purchase(
    pid int not null auto_increment,
    username varchar(30) not null,
    product_id int not null,
    qnt int not null,
    price int not null,

    primary key (pid),
    foreign key (username) references user(username),
    foreign key (product_id) references product(pid)
) default charset = utf8;