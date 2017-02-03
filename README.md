# DockerDevImages
Imagenes base para desarrollo bajo diferentes lenguajes. Estan desarrollada para ser usadas como imagen base en la construcción de microservicios, incialmente en Java y Python.

Todas las imagenes parten del imagen reducida basada en Debian Jessie ofrecida por [Bitnami](https://github.com/bitnami/minideb)

## Imagenes
Cada imagen contiene el Dockerfile que genera la pertinente imagen

| Carpeta      | Imagen       | Contenido     | Comando | Versión |
| :---         | :---:        | :---          | :---    | :---:   |
| [openjdk8](./openjdk8)   | ipman1971/openjdk8 | Open JDK 8 | ***docker run --rm -it ipman1971/openjdk8*** | latest |
| [oracle-jdk8](./oracle-jdk8)   | ipman1971/oracle-jdk8 | Oracle JDK 8 | ***docker run --rm -it ipman1971/oracle-jdk8*** | latest |
| [python3](./python3)   | ipman1971/python3 | Python 3.6 | ***docker run --rm -it ipman1971/python3*** | latest |
