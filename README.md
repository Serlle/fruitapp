# CRUD de Frutas
Este repositorio contiene un CRUD (Create, Read, Update, Delete) básico para administrar frutas. El proyecto fue creado como parte de un desafío por el equipo de Manuable.com.

## Características
Permite realizar operaciones CRUD en una lista de frutas.
Incluye pruebas unitarias y funcionales para garantizar la integridad del sistema.
Se aplican validaciones para asegurar la integridad de los datos.
Los datos se almacenan en una base de datos PostgreSQL.
Utiliza Ruby 3.1.3 y Rails 7.0.8 para el backend.
La interfaz de usuario fue diseñada utilizando Tailwind CSS.

## Instrucciones
1. Asegúrate de tener Ruby y Ruby on Rails 7.0.8 y instalados en tu sistema al igual que Ruby 3.1.3. Puedes descargar e instalar Ruby desde https://www.ruby-lang.org/es/downloads/ y Ruby on Rails desde https://rubyonrails.org/ y utilizar un manejador de versiones como Rbenv para Ruby.
2. Asegúrate de tener instalado PostgreSQL en tu sistema.
3. Clona este repositorio en tu máquina local con el comando: 
```sh
git clone git@github.com:Serlle/fruitapp.git
```
4. Navega al directorio del proyecto.
5. Ejecuta las gemas necesarias
```sh
bundle install
```
6. Ejecuta la base de datos y las migraciones:
```sh
bin/rails db:create db:migrate
```
7. Inicia el servidor de Rails con:
```sh
bin/dev
```
8. Accede a la ruta principal del CRUD de frutas en tu navegador: http://localhost:3000/fruits
9. Para ver la lista de frutas en formato JSON, añade la extensión .json a la ruta: http://localhost:3000/fruits.json

### Nota de Uso
Si vas a crear una nueva fruta y quieres agregar una imagen de ella, debes de agregar el archivo en formato jpg, o gif, o png en el directorio de assets (app/assets/images) con el mismo nombre que especifiques en el campo image_url al crear una nueva fruta. Por ejemplo, si en el campo image_url pones "melon.jpg", asegúrate de tener un archivo de imagen llamado "melon.jpg" en el directorio app/assets/images.