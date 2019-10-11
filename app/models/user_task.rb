class UserTask < ApplicationRecord
  belongs_to :user
  has_many :user_tasks, dependent: :destroy
  has_many :tasks, through: :user_tasks
end
