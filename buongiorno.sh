#!/bin/bash
#Author: María Celeste Colautti
#Este script me salva de tener que abrir todos los días los mismos archivos, apps, webs y directorios que abro siempre, me pone el stage mientras me hago el cafe jo jo jo jo!!!!


ongoing(){
    # Cambia el directorio actual al directorio que contiene los archivos
    cd ~/Documentos/ongoing
    # Abre todos los archivos en el directorio con el comando xdg-open
    for archivo in *
    do
      xdg-open "$archivo"
    done
}

websOn(){
    xdg-open 'https://accounts.google.com/InteractiveLogin/signinchooser?elo=1&ifkv=AWnogHfu1D4gsgkuknRiADfxUxqaDdixB5mZ13oWUDImTYoqI6JNfyOXsVyYQlvE9pgmbXVFyDgi&flowName=GlifWebSignIn&flowEntry=ServiceLogin'
    xdg-open 'https://www.youtube.com/'    
}

appsOn(){
    code
}
echo "*****Abriendo archivos del directorio ongoing******"
ongoing
echo "*****Abriendo las webs de siempre******************"
websOn
echo "*****Iniciando aplicaciones de uso diario**********"
appsOn
cd

echo "Hola $usuario"
echo " estas en: "
pwd

