class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable

  has_many :messages, foreign_key: :author_id

  validates :login, length: { minimum: 6 }
  validates :password, length: { minimum: 8 }, confirmation: true, if: ->(user) { user.password.present? || user.new_record? }
end
