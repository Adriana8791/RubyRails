class Mensaje < ApplicationRecord
  belongs_to :usuario
  belongs_to :comentario
end
