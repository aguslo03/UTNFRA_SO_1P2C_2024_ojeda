#!/bin/bash
echo "creo estructura Punto A"

sudo mkdir -p /Examenes-UTN/{alumno_{1..3}/parcial_{1..3},profesores}

echo
echo "muestro estructura Punto A"
sudo tree /Examenes-UTN
