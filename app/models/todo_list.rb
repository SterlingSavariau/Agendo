class TodoList < ActiveRecord::Base
	has_many :todo_items

	validates :title, presence: true
	validates :title, length: { minimum: 1 }
	validates :description, presence: true
	validates :title, length: { minimum: 1 }

	  def has_completed_items?
	  todo_items.complete.size > 0
  end

  	  def has_incomplete_items?
  	  	todo_items.incomplete.size > 0
  end
end
