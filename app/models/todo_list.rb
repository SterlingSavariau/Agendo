class TodoList < ActiveRecord::Base
	validates :title, presence: true
	validates :title, length: { minimum: 1 }
	validates :description, presence: true
	validates :title, length: { minimum: 1 }
end
