class Recomendacion < ApplicationRecord
  belongs_to :user

  self.per_page = 3

  def es_mi_autor? autor
    if autor.nil?
      return false
    else
      return user.id == autor.id
    end
  end
end
