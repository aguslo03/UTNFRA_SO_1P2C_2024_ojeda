#!/bin/bash

echo "creo los grupos"
sudo groupadd -f p1c2_2024_gAlumno
sudo groupadd -f p1c2_2024_gProfesores

echo "genero el hash segun la consigna 'misma clave que tu usuario' "
HASH=$(sudo grep agus /etc/shadow | awk -F ':' '{print $2}')

echo "creo los usuarios"
sudo useradd -m -s /bin/bash -p "$HASH" -G p1c2_2024_gAlumno p1c2_2024_A1
sudo useradd -m -s /bin/bash -p "$HASH" -G p1c2_2024_gAlumno p1c2_2024_A2
sudo useradd -m -s /bin/bash -p "$HASH" -G p1c2_2024_gAlumno p1c2_2024_A3
sudo useradd -m -s /bin/bash -p "$HASH" -G p1c2_2024_gProfesores p1c2_2024_P1

echo "permisos para carpetas y su contenido"
sudo chown p1c2_2024_A1:p1c2_2024_gAlumno /Examenes-UTN/alumno_1
sudo chmod 750 /Examenes-UTN/alumno_1
sudo chown p1c2_2024_A2:p1c2_2024_gAlumno /Examenes-UTN/alumno_2
sudo chmod 760 /Examenes-UTN/alumno_2
sudo chown p1c2_2024_A3:p1c2_2024_gAlumno /Examenes-UTN/alumno_3
sudo chmod 700 /Examenes-UTN/alumno_3
sudo chown p1c2_2024_P1:p1c2_2024_gAlumno /Examenes-UTN/profesores
sudo chmod 775 /Examenes-UTN/profesores

echo "validar.txt"

sudo -u p1c2_2024_A1 bash -c "whoami > /Examenes-UTN/alumno_1/validar.txt"
sudo -u p1c2_2024_A2 bash -c "whoami > /Examenes-UTN/alumno_2/validar.txt"
sudo -u p1c2_2024_A3 bash -c "whoami > /Examenes-UTN/alumno_3/validar.txt"
sudo -u p1c2_2024_P1 bash -c "whoami > /Examenes-UTN/profesores/validar.txt"
