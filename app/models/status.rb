class Status < ActiveRecord::Base
  attr_accessible :content, :user_id
  belongs_to :user
  acts_as_voteable

  has_reputation :votes, source: :user, aggregated_by: :sum

end
