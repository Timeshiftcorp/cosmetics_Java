
-- Производитель
create table if not EXISTS manufacturer (
id_man int not null auto_increment primary key,
name_man varchar(25) not null,
city_man varchar (30),
addr_man varchar (100),
phone_man int(11)
);
-- Номенклатура
create table if not EXISTS nomenclature(
id_nom int not null auto_increment primary key,
name_nom varchar(70),
id_country int not null ,
id_man int not null,
unit char(4),
image blob,
weigth double,
FOREIGN KEY (id_country)
        REFERENCES country(id_country)
        ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (id_man)
        REFERENCES manufacturer(id_man)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- валюта
create table currency(
id_curr int not null auto_increment primary key,
name_curr varchar(30) not null,
cource double not null
);

-- тип цены
create table type_price(
id_tp int not null auto_increment primary key,
name_tp varchar(30),
id_curr int not null,
FOREIGN KEY (id_curr)
        REFERENCES currency(id_curr)
        ON DELETE CASCADE ON UPDATE CASCADE
);
-- цена
create table price(
id_pr int not null auto_increment primary key,
id_tp int not null,
id_nom int not null,
price decimal,
FOREIGN KEY (id_nom)
        REFERENCES nomenclature(id_nom)
        ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (id_tp)
        REFERENCES type_price(id_tp)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- представитель
create table agent (
id_agent int not null auto_increment primary key,
name_agent varchar(30) not null,
id_man int not null,
city_agent varchar (30),
addr_agent varchar(100),
phone_agent  int(11),
FOREIGN KEY (id_man)
        REFERENCES manufacturer(id_man)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- страна
create table country (
id_country int not null auto_increment primary key,
name_country varchar(30) not null
);

-- вариант
create table variant(
id_var int not null auto_increment primary key,
recom varchar (150)
);

-- рекомендация
create table
recommendation (
id_rec int not null auto_increment primary key,
id_nom int not null,
id_var int not null,
FOREIGN KEY (id_nom)
        REFERENCES nomenclature(id_nom)
        ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (id_var)
        REFERENCES variant(id_var)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- вещество
create table matter (
id_matter int not null auto_increment primary key,
name_matter varchar(40) not null
);

-- состав
create table Composition(
id_com int not null auto_increment primary key,
id_nom int not null,
id_matter int not null,
FOREIGN KEY (id_nom)
        REFERENCES nomenclature(id_nom)
        ON DELETE CASCADE ON UPDATE CASCADE,
        FOREIGN KEY (id_matter)
        REFERENCES matter(id_matter)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- партнер
create table partner (
id_partner int not null auto_increment primary key,
name_partner varchar(30) not null,
city_partner varchar(30),
addr_partner varchar(100),
phone int(11),
inn int(12),
kpp int (9));

-- продажа
create table sale (
id_sale int not null auto_increment primary key,
date_sale date,
id_partner int not null,
id_tp int not null,
FOREIGN KEY (id_partner)
        REFERENCES partner(id_partner)
        ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (id_tp)
        REFERENCES type_price(id_tp)
        ON DELETE CASCADE ON UPDATE CASCADE

);

-- строка продажа
create table string_sale(
id_ss int not null auto_increment primary key,
id_sale int not null,
id_nom int not null,
price_r decimal,
quantity int default 0,
FOREIGN KEY (id_sale)
        REFERENCES sale(id_sale)
        ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (id_nom)
        REFERENCES nomenclature(id_nom)
        ON DELETE CASCADE ON UPDATE CASCADE

);

-- поставка
create table supply (
id_supply int not null auto_increment primary key,
date_supply date,
id_partner int not null,
id_tp int not null,
FOREIGN KEY (id_partner)
        REFERENCES partner(id_partner)
        ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (id_tp)
        REFERENCES type_price(id_tp)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- строка поставки
create table string_supply(
id_ssp int not null auto_increment primary key,
id_supply int not null,
id_nom int not null,
price_rr decimal,
quantity int default 0,
FOREIGN KEY (id_supply)
        REFERENCES supply(id_supply)
        ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (id_nom)
        REFERENCES nomenclature(id_nom)
        ON DELETE CASCADE ON UPDATE CASCADE

);

-- банк
create table bank (
id_bank int(8) not null primary key primary key,
ks int(20) not null,
name_bank varchar(30),
city_bank varchar(30)
);

-- банковский счет
create table bank_account(
id_acc int(20) not null primary key primary key,
id_bank int(8) not null,
id_partner int not null,
FOREIGN KEY (id_bank)
        REFERENCES bank(id_bank)
        ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (id_partner)
        REFERENCES partner(id_partner)
        ON DELETE CASCADE ON UPDATE CASCADE
);


-- магазин
create table store (
id_store int not null auto_increment primary key,
name_store varchar(30),
city_store varchar(30),
addr_store varchar(100),
phone int(11),
inn int(12),
kpp int(9),
rs int(20),
bik int (8)
);


-- статус оплаты
create table payment_status(
id_ps int not null auto_increment primary key,
name_ps varchar (30)
);

-- оплата
create table payment(
id_payment int not null auto_increment primary key,
id_sale int not null,
id_ps int not null,
FOREIGN KEY (id_sale)
        REFERENCES sale(id_bank)
        ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (id_ps)
        REFERENCES payment_status(id_ps)
        ON DELETE CASCADE ON UPDATE CASCADE

);