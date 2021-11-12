class Recomendacion < ApplicationRecord
  belongs_to :user

  def es_mi_autor? autor
    if autor.nil?
      return false
    else
      return user.id == autor.id
    end
  end
end
