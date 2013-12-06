class Status < ActiveRecord::Base
  attr_accessible :content, :user_id, :business_name
  belongs_to :user
  acts_as_voteable

  has_reputation :votes, source: :user, aggregated_by: :sum

  validates :user_id, presence: true

end
