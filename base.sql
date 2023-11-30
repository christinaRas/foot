CREATE DATABASE Apk_mobile_foot;
use Apk_mobile_foot;

CREATE TABLE Source(
    idSource int AUTO_INCREMENT Primary key,
    nom_source varchar(50)
);

insert into Source values (null, "Equipes");
insert into Source values (null, "Joueurs");

CREATE TABLE Onglet(
    idOnglet int AUTO_INCREMENT Primary key,
    idSource int,
    nom_onglet varchar(50),
    foreign key (idSource) references Source(idSource)
);

insert into Onglet values (null, 1, "general");
insert into Onglet values (null, 1, "defense");
insert into Onglet values (null, 1, "attaque");

insert into Onglet values (null, 2, "general");
insert into Onglet values (null, 2, "defense");
insert into Onglet values (null, 2, "attaque");

CREATE TABLE Sous_onglet(
    idSous_onglet int AUTO_INCREMENT Primary key,
    idOnglet int,
    nom_sous_onglet varchar(50),
    foreign key (idOnglet) references Onglet(idOnglet)
);

insert into Sous_onglet values (null, 1, "general");
insert into Sous_onglet values (null, 1, "domicile");
insert into Sous_onglet values (null, 1, "exterieur");

insert into Sous_onglet values (null, 2, "general");
insert into Sous_onglet values (null, 2, "domicile");
insert into Sous_onglet values (null, 2, "exterieur");

insert into Sous_onglet values (null, 3, "general");
insert into Sous_onglet values (null, 3, "domicile");
insert into Sous_onglet values (null, 3, "exterieur");

CREATE TABLE Detail_Equipes(
    id_detail_equipe int AUTO_INCREMENT Primary key,
    idSous_onglet int,
    equipe varchar(100),
    competition varchar(100),
    buts int,
    tirs_pm float,
    jaune int,
    rouge int,
    possession float,
    passe_reussies float,
    aeriens_gagnes float,
    note float,
    foreign key (idSous_onglet) references Sous_onglet(idSous_Onglet)
);

insert into Detail_Equipes values (null, 1, "Bayern Munich", "Bundesliga", 43, 19.9, 17, 1, 62.9, 88.8, 12.8, 7.16);
insert into Detail_Equipes values (null, 1, "Paris Saint-Germain", "Ligue 1", 34, 16.6, 17, 0, 68.0, 90.6, 7, 7.04);
insert into Detail_Equipes values (null, 1, "Manchester City", "Premier League", 33, 16.5, 23, 2, 62.3, 90.2, 7.9, 6.96);
insert into Detail_Equipes values (null, 1, "Real Madrid", "LaLiga", 31, 17.5, 26, 1, 57.3, 89.7, 8.4, 6.93);

insert into Detail_Equipes values (null, 2, "Bayern Munich", "Bundesliga", 27, 21.7, 4, 1, 61.9, 88.8, 13, 7.21);
insert into Detail_Equipes values (null, 2, "Paris Saint-Germain", "Ligue 1", 20, 15.6, 5, 0, 70.8, 91.0, 6.4, 7.01);
insert into Detail_Equipes values (null, 2, "Manchester City", "Premier League", 17, 12.5, 9, 2, 60.6, 90.4, 7.5, 7.03);
insert into Detail_Equipes values (null, 2, "Real Madrid", "LaLiga", 15, 20.2, 11, 0, 59.6, 88.9, 8.8, 7.00);

insert into Detail_Equipes values (null, 3, "Bayern Munich", "Bundesliga", 16, 18.2, 13, 0, 63.9, 88.8, 12.5, 7.12);
insert into Detail_Equipes values (null, 3, "Paris Saint-Germain", "Ligue 1", 14, 17.8, 12, 0, 64.9, 89.9, 7.7, 7.07);
insert into Detail_Equipes values (null, 3, "Manchester City", "Premier League", 16, 19.9, 14, 0, 63.8, 90.1, 8.3, 6.89);
insert into Detail_Equipes values (null, 3, "Real Madrid", "LaLiga", 16, 15.5, 15, 1, 55.6, 90.3, 8, 6.88);

CREATE TABLE Detail_Joueurs(
    id_detail_joueurs int AUTO_INCREMENT Primary key,
    idSous_onglet int,
    joueurs varchar(100),
    apps int,
    mins int,
    buts int,
    p_decisives int,
    tpM float,
    PCle float,
    Drb float,
    FautesSub float,
    H_J int,
    Depo float,
    CtrlRat float,
    note float,
    foreign key (idSous_onglet) references Sous_onglet(idSous_Onglet)
);

insert into Detail_Joueurs values (null, 1, "Leroy Sane", 12, 1046, 8, 6, 3.1, 3.5, 4.1, 0.8, 0.4, 1.6, 2.3, 8.46);
insert into Detail_Joueurs values (null, 1, "Harry Kane", 12, 1052, 18, 5, 4.3, 1.3, 0.7, 1.5, 0.5, 1.7, 1.4, 8.29);
insert into Detail_Joueurs values (null, 1, "Jude Bellingham", 12, 1025, 11, 2, 2.5, 1.6, 2, 3.1, 0.2, 1.4, 1.8, 8.07);
insert into Detail_Joueurs values (null, 1, "Victor Boniface", 12, 1028, 7, 5, 5.1, 1.2, 3, 1.2, 0.8, 1.5, 3.7, 7.87);

insert into Detail_Joueurs values (null, 2, "Leroy Sane", 6, 520, 4, 3, 3.3, 4.7, 4, 1.2, 0.5, 2, 2.3, 8.70);
insert into Detail_Joueurs values (null, 2, "Harry Kane", 6, 518, 11, 4, 5.3, 1.5, 1, 1.2, 0.3, 1.7, 2, 8.65);
insert into Detail_Joueurs values (null, 2, "Kingsley Coman", 4,  310, 2, 2, 2.8, 3.3, 2.8, 1.3, 0, 0.8, 1.8, 8.40);
insert into Detail_Joueurs values (null, 2, "Victor Boniface", 6, 522, 5, 2, 5.5, 1.7, 3.8, 0.8, 0.7, 1.8, 3, 8.38);

insert into Detail_Joueurs values (null, 3, "Rodri", 5, 450, 3, 1, 3.4, 1.8, 1.2, 1, 0.4, 0.8, 0.6, 8.26);
insert into Detail_Joueurs values (null, 3, "Jude Bellingham", 8, 683, 8, 2, 2.6, 1.4, 2.3, 3.5, 0.1, 1.4, 1.8, 8.25);
insert into Detail_Joueurs values (null, 3, "Leroy Sane", 6, 526, 4, 3, 2.8, 2.3, 4.2, 0.5, 0.3, 1.2, 2.2, 8.22);
insert into Detail_Joueurs values (null, 3, "Harry Kane", 6, 534, 7, 1, 3.2, 1.2, 0.3, 1.8, 0.7, 1.7, 0.8, 7.94);