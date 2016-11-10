class Session < ActiveRecord::Base
  has_many :topics, inverse_of: :sessions
  belongs_to :subject, inverse_of: :sessions

  validates :name, presence: true
end
