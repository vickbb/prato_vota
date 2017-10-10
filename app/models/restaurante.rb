class Restaurante < ActiveRecord::Base

  validates_presence_of :nome, message: "Deve ser preenchido!"
  validates_presence_of :endereco, message: "Deve ser preenchido!"
  validates_presence_of :especialidade, message: "Deve ser preenchido!"

  validates_uniqueness_of :nome, message: "Nome ja existe!"

  has_many :qualificacoes
  has_and_belongs_to_many :pratos

  private
  def primeira_letra_maiuscula
    errors.add(:nome, "primeira letra deve ser maiuscula!") unless nome =~ /[A-Z].*/
  end
end


