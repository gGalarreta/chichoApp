class Activity < ApplicationRecord
	has_many :user_activities
  has_many :users, through: :user_activities

  def add_member user
  	self.users << user
  end

  def has_already_added? user
  	self.user_activities.where(user_id: user.id).present?
  end
end
