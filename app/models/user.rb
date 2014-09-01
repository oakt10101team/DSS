class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :rememberable, :trackable, :validatable

  letsrate_rater
  
  def full_name
  	"#{self.first_name} #{self.last_name}"
  end
end
