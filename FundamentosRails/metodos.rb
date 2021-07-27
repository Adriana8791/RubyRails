require_relative 'proyecto'
RSpec.describe Proyecto do
  before(:each) do
    # actualice este bloque para crear dos proyectos
    @proyecto1 = Proyect1.new('Proyecto 1', 'descripción 1')
    @proyecto2 = Proyect2.new('Proyecto 2', 'descripción 2')
  end
  ... 
    # Codigo anterior removido para resumir. Déjelo como está.
  ...
  it 'tiene un metodo presentacion que muestre el nombre y la descripcion' do
    expect(@proyecto1.presentacion).to eq("Proyecto 1, descripcion 1")
    expect(@proyecto2.presentacion).to eq("Proyecto 2, descripcion 2")
  end
end