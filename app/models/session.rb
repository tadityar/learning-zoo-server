class Session < ActiveRecord::Base
  has_many :topics, inverse_of: :sessions
  belongs_to :subject, inverse_of: :sessions

  validates :name, :lecturer_name, :current_slide, presence: true
end
