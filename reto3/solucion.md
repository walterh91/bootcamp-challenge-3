### Paso 1: Crear el fichero Dockerfile. Las instrucciones que se han utilizado para el fichero son:
```
	- Utilizar la imagen de nginx con la version requerida
	FROM nginx:alpine
	
	- Copiar el archivo index.htm de la carpeta src desde el host a la carpeta del contenedor
	COPY /src/index.html /usr/share/nginx/html
```	
### Paso 2: Crear un volumen 'static_content' en el CLI de Docker mediante la siguiente instruccion
	docker volume create static_content 
	
### Paso 3: Construir la imagen del contenedor. El nombre de la imagen es 'bootcamp_nginx'
	docker build -t bootcamp_nginx .
	
### Paso 4: Crear el contenedor	con nombre 'bootcamp_container' utilizando la imagen construida en el paso 3
	docker run -d --name bootcamp_container -v static_content:/usr/share/nginx/html -p 8080:80 bootcamp_nginx
	
### Paso 5: Acceder a la URL http://localhost:8080/index.html y comprobar que aparece la pagina deseada

### Paso 6: Deploy to Registry DockerHub

- Recuerda que debes contar con una cuenta en https://hub.docker.com
- Logeate en docker-hub desde la terminal
- Ubicar el usuario de dockerhub, que con ese vas autheticarte
- Documentacion [Docker](https://docs.docker.com/engine/reference/commandline/login/)

```
docker login -u "myusername" -p "mypassword" docker.io
```

- tagear la imagen
```
docker tag bootcamp_nginx myusername/bootcamp_nginx:v1.0.0 
```
- Push en el registry
```
docker push myusername/bootcamp_nginx:v1.0.0
```
- Listo verificamos en nuestro dockerhub
```
https://hub.docker.com/repository/docker/walterh91/bootcamp_nginx
```

