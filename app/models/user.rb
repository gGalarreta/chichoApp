class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :section, optional: true    
  has_many :user_activities
  has_many :activities, through: :user_activities

  def full_name
    begin
      first_name + " " + last_name
    rescue
      ""
    end
  end

  def own_grade
    begin
      self.section.own_grade
    rescue
      ""
    end
  end
end
