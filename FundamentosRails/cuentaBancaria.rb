
#CuentaBancaria debe tener un método que devuelva el saldo de la cuenta corriente del usuario. 
#CuentaBancaria debe tener un método que devuelva el saldo de la cuenta de ahorro del usuario. 
#CuentaBancaria debe permitir que un usuario deposite dinero en su cuenta de ahorro o corriente.
#CuentaBancaria debe permitir a un usuario retirar dinero de una de sus cuentas, devolver un error si no hay fondos suficientes. 
#CuentaBancaria debe permitir al usuario ver la cantidad total de dinero que tiene en el banco.
#CuentaBancaria debe rastrear cuántas cuentas tiene actualmente el banco. 
#Agregue un atributo tasa_interes al que el usuario no pueda acceder.
#Ajústelo a 0.01.  
#CuentaBancaria debe tener un método llamado informacion_cuenta que muestre el número de cuenta del usuario,
#el dinero total, el saldo de la cuenta corriente, el saldo de la cuenta de ahorros y la tasa de interés. 
#Un usuario no puede establecer ningún atributo de la clase CuentaBancaria.
require_relative 'cuentabancaria'
RSpec.describe CuentaBancaria do
end
require_relative 'proyecto'
RSpec.describe Proyecto do
  it "tiene un getter y un setter para el atributo nombre" do
    proyecto = Proyecto.new
    proyecto.nombre = "Nombre"
    expect(proyecto.nombre).to eq("Nombre")
  end
  it "tiene un getter y un setter para el atributo descripcion" do
    proyecto = Proyecto.new
    proyecto.descripcion = "Descripcion"
    expect(proyecto.descripcion).to eq("Descripcion")
  end
  it 'tienen un metodo presentacion que muestre el nombre y la descripcion' do
    proyecto = Proyecto.new
    proyecto.nombre = "Nombre"
    proyecto.descripcion = "Descripcion"
    expect(proyecto.presentacion).to eq("Nombre, Descripcion")
  end
end