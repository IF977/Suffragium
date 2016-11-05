class Comentario < ActiveRecord::Base
  belongs_to : // eleitor ou no caso se foor usuario único definir paramentro de validação.
  has_many : // puxar de onde a gente vai avaliar no caso propostas.
  validates :usuario, presence: true, length: {maximum: 399} //validação
end