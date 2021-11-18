create table if not exists user
(
    uid          int         not null auto_increment,
    username     varchar(10) not null,
    password     varchar(20) not null,
    address      varchar(30) not null,
    phone_number varchar(13) not null,
    gender       set ('M','F'),
    mileage      int default 0,
    primary key (uid)
) default charset = utf8;

create table if not exists product
(
    pid   int         not null auto_increment,
    name  varchar(50) not null,
    price int         not null,
    stock int         not null,
    sales int         not null,
    primary key (pid)
) default charset = utf8;

create table if not exists article
(
    aid    int         not null auto_increment,
    writer int         not null,
    title  varchar(20) not null,
    text   text        not null,
    primary key (aid),
    foreign key (writer) references user (uid)
) default charset = utf8;

create table if not exists review
(
    rid     int         not null auto_increment,
    writer  int         not null,
    product int         not null,
    title   varchar(20) not null,
    text    varchar(50) not null,
    primary key (rid),
    foreign key (writer) references user (uid),
    foreign key (product) references product (pid)
) default charset = utf8;