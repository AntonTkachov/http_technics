class Message < ActiveRecord::Base
  belongs_to :author, class_name: 'User'

  validates :author, presence: true
  validates :text, presence: true
end
