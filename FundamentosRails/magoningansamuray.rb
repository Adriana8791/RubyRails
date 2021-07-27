class Humano
    attr_accessor :fuerza, :inteligencia, :salud, :sigilo
    def initialize
      @fuerza = 3
      @inteligencia = 3
      @sigilo = 3
      @salud = 100
    end
    def ataque(obj)
      # verificar si la clase del objeto atacado es Humano o hereda de la clase Humano
      if obj.class.ancestors.include?(Humano)
        obj.salud -= 10
        # recuerde que en Ruby no tenemos que escribir la palabra "return"
        # indicando true abajo devolverá automáticamente el valor true
        true
      else
        false
      end
    end
  end
  class Mago
    # tu codigo aqui
  end
  class Ninja
    # tu codigo aqui
  end
  class Samurai 
    # tu codigo aqui
  end