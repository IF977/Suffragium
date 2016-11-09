class User < ActiveRecord::Base
  authenticates_with_sorcery!
  has_many :candidato
  validates :password, length: { minimum: 6 }, if: -> { new_record? || changes[:password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:password] }

  validates :login, uniqueness: true
end
