#!/bin/bash

sudo mkdir -p Estructura_Asimetrica/{{correo,cliente}/cartas_{1..100},correo/carteros_{1..10}}

tree Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 100 --column 4
