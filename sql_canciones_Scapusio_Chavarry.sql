select edad, count(*), nombre from cantante group by edad, nombre;
select provinciaDeNacimiento, count(*) from cantante group by provinciaDeNacimiento;
select provinciaDeNacimiento, avg(edad) from cantante group by provinciaDeNacimiento;
select provinciaDeNacimiento, min(edad) from cantante group by provinciaDeNacimiento;
select provinciaDeNacimiento, max(ingresosMensuales) from cantante group by provinciaDeNacimiento;
select generoMusical, min(ingresosMensuales) from cantante group by generoMusical; 
select generoMusical from( select generoMusical, count(*) as cuenta from cantante group by generoMusical order by cuenta desc  limit 1) as tabla; 
select edad from cantante where ingresosMensuales = (select max(ingresosMensuales) from cantante);
select cantante.nombre from cantante join cancion on cantante.id_cantante = cancion.id_cantante where duracionEnSegundos >= 180;
select nombre_artistico from cantante join cancion on cantante.id_cantante = cancion.id_cantante where duracionEnSegundos = (select max(duracionEnSegundos) from cancion); 
select nombre from cancion where duracionEnSegundos = (select max(duracionEnSegundos) from cancion);
select count(*) from cancion join cantante on cantante.id_cantante = cancion.id_cantante where cantante.nombre = "abc";
select nombre, apellido from cantante join cancion on cantante.id_cantante = cancion.id_cantante where cancion.nombre = "efg";
select count(*) from cancion join album on cancion.id_album = album.id_album where album.nombre = "hij";

select count(*) as counti, album.id_album from cancion join album on album.id_album = cancion.id_album group by id_album order by counti desc limit 1;

select count(*) as counti, album.nombre from cancion join album on album.id_album = cancion.id_album group by album.nombre order by counti asc limit 1;





insert into cantante values (152, "a", "b", "h", 12, "awd", 134.4, "foa");
insert into cantante values (20, "a", "b", "h", 1223, "awd", 12.4, "f4");
insert into cantante values (3235, "a", "b", "h", 1242, "awd", 12.4, "foa");
insert into cantante values (423, "a", "b", "h", 12, "awd", 12.4, "foa");
insert into cantante values (52, "a", "b", "h", 19, "awd", 12.4, "foa");
insert into cantante values (6, "a", "b", "h", 16, "awd", 1234, "foa");
insert into cantante values (7324, "a", "b", "h", 18, "awd", 5235, "foa");
insert into cantante values (802, "a", "b", "h", 11, "awdp", 13.4, "foa");
insert into cantante values (923, "a", "b", "h", 15, "awd", 1344, "foa");
insert into cantante values (225, "a", "b", "h", 15, "aw3d", 1222.4, "foa");
insert into cantante values (225, "a", "b", "h", 19, "aw3d", 112312312312324, "foa");
insert into cancion values (12, 342, "alejo", 112, 1234);
insert into album values(21, "hij", null);