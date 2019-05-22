::Codigo de caracteres para el idioma español
chcp 65001
@ECHO off

::Itera entre todos los archivos del directorio donde está o se ubica el .bat
FOR %%f IN (*) DO (
    ::Ejecuta la función renombrar para cada archivo del directorio
    set archivo=%%f&call :renombrar
)
GOTO :EOF
::Función renombrar
:renombrar
::Reemplaza en el texto(nombre del archivo) el caracter acentuado por el mismo pero no acentuado
set str1=%archivo:á=a%
::Renombra el archivo
rename "%archivo%" "%str1%"
::Cada que renombra, la variable archivo cambia y se debe usar la variable 
::de texto del bloque anterior y asi sucesivamente para cada tipo de caracter a cambiar
set str2=%str1:é=e%
rename "%str1%" "%str2%"

set str3=%str2:í=i%
rename "%str2%" "%str3%"

set str4=%str3:ó=o%
rename "%str3%" "%str4%"

set str5=%str4:ú=u%
rename "%str4%" "%str5%"

set str6=%str5:ñ=n%
rename "%str5%" "%str6%"

set str7=%str6:Á=A%
rename "%str6%" "%str7%"

set str8=%str7:É=E%
rename "%str7%" "%str8%"

set str9=%str8:Í=I%
rename "%str8%" "%str9%"

set str10=%str9:Ó=O%
rename "%str9%" "%str10%"

set str11=%str10:Ú=U%
rename "%str10%" "%str11%"

set str12=%str11:Ñ=N%
rename "%str11%" "%str12%"

GOTO :EOF