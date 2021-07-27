rails new orm_practica
cd orm_practica
rails g model
rails g model Usuario nombre:string apellido:string edad:integer email:string contrasena:string
invoke  active_record
create    db/migrate/20170201002746_create_usuario.rb
create    app/models/usuario.rb
invoke    test_unit
create      test/models/usuario_test.rb
create      test/fixtures/usuario.yml
cd orm_practica
rails console
usuario1 = Usuario.new
usuario1.nombre = "John"
usuario1.apellido = "Doe"
usuario1.contrasena = "secret"
usuario1.save
usuario2 = Usuario.new(nombre: "Jane", apellido:"Doe", email:"janedoe@email.com", edad:35)
# recuperando todos los registro de la tabla usuarios
usuarios = Usuario.all
# recuperando el primer registro de la tabla usuarios
usuario1 = Usuario.first
# recuperando el segundo registro de la tabla usuarios
usuario2 = Usuario.second
# recuperando el último registro de la tabla usuarios
ultimo_usuario = Usuario.last
# recuperando el usuario con id = 2
usuarios = Usuario.find(2)
# recuperando el primer usuario con el nombre John
john = Usuario.find_by(nombre: "John")
# recuperando todos los usuarios con el nombre John
johns = Usuario.where(nombre: "John")
# recuperando toddos los usuarios con el apellido Doe, pero solo seleccionamos el nombre y el apellido
does = Usuario.where(apellido: "Doe").select(:nombre, :apellido)
# recuperando el usuario, cambiando el valor de los atributos nombre y apellido, y guardando el registro
usuario = Usuario.find(1)
usuario.nombre = "Some Other Name"
usuario.apellido = "Some Other Last Name"
usuario.save
# recuperando el usuario, actualizando y guardando la información de múltiples atributos.
usuario = Usuario.last
usuario.update(nombre: "James", apellido: "Doe", edad: 40) 
usuario = Usuario.first.destroy
usuario2 = Usuario.last.delete
